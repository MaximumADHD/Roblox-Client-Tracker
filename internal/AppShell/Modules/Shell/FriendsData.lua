--[[
			// FriendsData.lua

			// Caches the current friends pagination to used by anyone in the app

			// TODO:
				Need polling to update friends. How are we going to handle all the cases
					like the person you're selecting going offline, etc..
]]
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local Players = game:GetService('Players')
local HttpService = game:GetService('HttpService')
local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)
local UserInputService = game:GetService('UserInputService')

local Http = require(ShellModules:FindFirstChild('Http'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local UserData = require(ShellModules:FindFirstChild('UserData'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))

local FriendService = nil
pcall(function() FriendService = game:GetService('FriendService') end)
local ThirdPartyUserService = nil
pcall(function() ThirdPartyUserService = game:GetService('ThirdPartyUserService') end)

-- NOTE: This is just required for fixing Usernames in auto-generatd games
local GameData = require(ShellModules:FindFirstChild('GameData'))
local ConvertMyPlaceNameInXboxAppFlag = Utility.IsFastFlagEnabled("ConvertMyPlaceNameInXboxApp")
local FriendsData = {}

local UserChangedCount = 0

local function OnUserAccountChanged()
	FriendsData.Setup()
end
EventHub:addEventListener(EventHub.Notifications["AuthenticationSuccess"], "FriendsData", OnUserAccountChanged)
if ThirdPartyUserService then
	ThirdPartyUserService.ActiveUserSignedOut:connect(function()
		UserChangedCount = UserChangedCount + 1
		FriendsData.Reset()
	end)
end

local isOnlineFriendsPolling = false
local isFriendEventsConnected = false
local cachedFriendsData = nil
local friendsDataConns = {}

local function filterFriends(friendsData)
	for i = 1, #friendsData do
		local data = friendsData[i]

		if data["PlaceId"] == 0 then
			data["PlaceId"] = nil
		end

		if data["LastLocation"] == "" then
			data["LastLocation"] = nil
		end

		if data["RobloxName"] == "" then
			data["RobloxName"] = nil
		end

		local placeId = data["PlaceId"]
		local lastLocation = data["LastLocation"]

		-- If the lastLocation for a user is some user place with a GeneratedUsername in it
		-- then replace it with the actual creator name!
		if ConvertMyPlaceNameInXboxAppFlag and placeId and lastLocation and GameData:ExtractGeneratedUsername(lastLocation) then
			local gameCreator = GameData:GetGameCreatorAsync(placeId)
			if gameCreator then
				lastLocation = GameData:GetFilteredGameName(lastLocation, gameCreator)
			end
		end

		data["PlaceId"] = placeId
		data["LastLocation"] = lastLocation
	end

	return friendsData
end

local function sortFriendsData(tempFriendsData)
	table.sort(tempFriendsData, function(a, b)
		if a["PlaceId"] and b["PlaceId"] then
			return a["display"] < b["display"]
		end
		if a["PlaceId"] then
			return true
		end
		if b["PlaceId"] then
			return false
		end

		return a["display"] < b["display"]
	end)
end

local function uploadFriendsAnalytics(friendsData)
	local numPlaying = 0
	for xuid, data in pairs(friendsData) do
		if data["PlaceId"] then
			numPlaying = numPlaying + 1
		end
	end

	Analytics.UpdateHeartbeatObject({
		FriendsPlaying = numPlaying;
		FriendsOnline = #friendsData;
	});
end

--[[ Public API ]]--
FriendsData.OnFriendsDataUpdated = Utility.Signal()
local isFetchingFriends = false

local function processNewFriendsData(newFriendsData)
	local myOnlineFriends = {}
	if newFriendsData then
		myOnlineFriends = filterFriends(newFriendsData)
		sortFriendsData(myOnlineFriends)
	end
	return myOnlineFriends
end

function FriendsData.GetOnlineFriendsAsync()
	if not cachedFriendsData then
		--Wait until we get cachedFriendsData from FriendService/FriendEvents disconnect(user sign out)
		while isFriendEventsConnected and not cachedFriendsData do
			wait()
		end
	end

	return cachedFriendsData or {}
end

-- we make connections through this function so we can clean them all up upon
-- clearing the friends data
function FriendsData.ConnectUpdateEvent(cbFunc)
	local cn = FriendsData.OnFriendsDataUpdated:connect(cbFunc)
	table.insert(friendsDataConns, cn)
end

function FriendsData.Reset()
	isOnlineFriendsPolling = false

	for index,cn in pairs(friendsDataConns) do
		cn = Utility.DisconnectEvent(cn)
		friendsDataConns[index] = nil
	end
	isFriendEventsConnected = false

	cachedFriendsData = nil
end

function FriendsData.Setup()
	FriendsData.Reset()
	--We make the conns once user logged in, and once we get the cachedFriendsData from FriendService
	--this func becomes sync call
	if PlatformService and FriendService then
		--Connect FriendsUpdated event to get newFriendsData at intervals
		table.insert(friendsDataConns, FriendService.FriendsUpdated:connect(function(newFriendsData)
			cachedFriendsData = processNewFriendsData(newFriendsData)
			uploadFriendsAnalytics(cachedFriendsData)
			FriendsData.OnFriendsDataUpdated:fire(cachedFriendsData)
		end))

		isFriendEventsConnected = true

		--Try to get the cachedFriendsData, check if the friends data has been fetched on Friend Service
		local success, result = pcall(function()
			return FriendService:GetPlatformFriends()
		end)
		if success then
			cachedFriendsData = result
		end
	else
		-- Roblox Friends - leaving this in for testing purposes in studio
		if UserSettings().GameSettings:InStudioMode() or game:GetService('UserInputService'):GetPlatform() == Enum.Platform.Windows then
			local POLL_DELAY = 30
			if not isOnlineFriendsPolling then
				local startCount = UserChangedCount
				isOnlineFriendsPolling = true
				spawn(function()
					local requesterId = UserData:GetRbxUserId()
					while startCount == UserChangedCount and requesterId == UserData:GetRbxUserId() do
						local myOnlineFriends = {}
						local result = Http.GetOnlineFriendsAsync()
						if result then
							for i = 1, #result do
								local data = result[i]
								local friend = {
									RobloxName = Players:GetNameFromUserIdAsync(data["VisitorId"]);
									robloxuid = data["VisitorId"];  --Make the key name same as console
									LastLocation = data["LastLocation"];
									PlaceId = data["PlaceId"];
									LocationType = data["LocationType"];
									GameId = data["GameId"];
								}
								table.insert(myOnlineFriends, friend)
							end

							local function sortFunc(a, b)
								if a.LocationType == b.LocationType then
									return a.RobloxName:lower() < b.RobloxName:lower()
								end
								return a.LocationType > b.LocationType
							end

							table.sort(myOnlineFriends, sortFunc)
						end

						if startCount == UserChangedCount then
							cachedFriendsData = myOnlineFriends
							FriendsData.OnFriendsDataUpdated:fire(cachedFriendsData)
							wait(POLL_DELAY)
						end
					end
				end)
			end
		end
	end
end

return FriendsData
