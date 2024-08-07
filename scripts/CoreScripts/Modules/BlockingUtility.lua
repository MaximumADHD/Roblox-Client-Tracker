--!nonstrict
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local PlayersService = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local Url = require(RobloxGui.Modules.Common.Url)
local rolloutByApplicationId = require(CorePackages.Workspace.Packages.AppCommonLib).rolloutByApplicationId

local FIntBlockUtilityBlockedUsersRequestMaxSize = game:DefineFastInt("BlockUtilityBlockedUsersRequestMaxSize", 50)
local FFlagUseGetBlockedUsersBlockingUtility = game:DefineFastFlag("UseGetBlockedUsersBlockingUtility", false)
local FFlagFetchBlockListFromServer = require(RobloxGui.Modules.Common.Flags.FFlagFetchBlockListFromServer)

local newBlockingUtilityRollout = function()
	return game:DefineFastInt("NewBlockingUtilityRollout_v3", 0)
end
local shouldUseNewBlockingUtility = rolloutByApplicationId(newBlockingUtilityRollout)

local BlockingUtility = {}
BlockingUtility.__index = BlockingUtility

local LocalPlayer = PlayersService.LocalPlayer
-- This seems to endlessly loop on studio.
while not LocalPlayer do
	PlayersService.PlayerAdded:wait()
	LocalPlayer = PlayersService.LocalPlayer
end

local GET_BLOCKED_USERIDS_TIMEOUT = 5

local RemoteEvent_UpdatePlayerBlockList = nil
spawn(function()
	RemoteEvent_UpdatePlayerBlockList = RobloxReplicatedStorage:WaitForChild("UpdatePlayerBlockList", math.huge)
end)

local BlockStatusChanged = Instance.new("BindableEvent")
local AfterBlockStatusChanged = Instance.new("BindableEvent")
local MuteStatusChanged = Instance.new("BindableEvent")

local GetBlockedPlayersCompleted = false
local GetBlockedPlayersStarted = false
local GetBlockedPlayersFinished = Instance.new("BindableEvent")
local BlockedList = {}
local MutedList = {}

local batchIsBlockedApi = Url.APIS_URL.."user-blocking-api/v1/users/batch-is-blocked"

local function getBlockedUsersApi(cursor, count)
	return Url.APIS_URL.."user-blocking-api/v1/users/get-blocked-users?cursor="..cursor.."&count="..count
end

local function GetBlockedPlayersAsync(): { [string]: boolean }
	if shouldUseNewBlockingUtility() then
		if FFlagUseGetBlockedUsersBlockingUtility then
			local blockList = {}
			local cursor = ""
			while cursor do
				local result
				local success = pcall(function()
					local request = HttpRbxApiService:GetAsyncFullUrl(getBlockedUsersApi(cursor, FIntBlockUtilityBlockedUsersRequestMaxSize),
					Enum.ThrottlingPriority.Default, Enum.HttpRequestType.Players)
					result = request and HttpService:JSONDecode(request)
				end)

				if success and result.data and result.data["blockedUserIds"] then
					for _, v in result.data.blockedUserIds do
						blockList[v] = true
					end
					cursor = result.data.cursor
				else
					cursor = nil
				end
			end

			return blockList
		else
			repeat task.wait() until #PlayersService:GetPlayers() > 1 or game:IsLoaded()
			local players = PlayersService:GetPlayers()
		
			local playerIds = {}
			for _, player in players do
				table.insert(playerIds, player.UserId)
			end
		
			local success, blockList
			success, blockList  = pcall(function()
				local request = HttpService:JSONEncode(
					{
						userIds = playerIds
					}
				)
				local result = HttpRbxApiService:PostAsyncFullUrl(batchIsBlockedApi, request, Enum.ThrottlingPriority.Default, Enum.HttpContentType.ApplicationJson, Enum.HttpRequestType.Players)
		
				if result then
					result = HttpService:JSONDecode(result)
					return result
				end
			end)
			local blockedUserSet = {}
			if success and blockList then
				for _, user in blockList.users do
					if user.isBlocked then
						blockedUserSet[user.userId] = true
					end
				end
			end
			return blockedUserSet
		end
	else
		local apiPath = Url.ACCOUNT_SETTINGS_URL.."v1/users/get-blocked-users"

		local blockList = nil
		local success = pcall(function()
			local request = HttpRbxApiService:GetAsyncFullUrl(apiPath,
				Enum.ThrottlingPriority.Default, Enum.HttpRequestType.Players)
			blockList = request and HttpService:JSONDecode(request)
		end)

		if success and blockList and blockList["blockedUserIds"] then
			local returnList = {}
			for _, v in blockList["blockedUserIds"] do
				returnList[v] = true
			end
			return returnList
		end

		return {}
	end
end

local function getBlockedUserIdsFromBlockedList(): { number }
	local userIdList = {}
	for userId, _ in BlockedList do
		table.insert(userIdList, userId)
	end
	return userIdList
end

local function getBlockedUserIds(): { number }
	if LocalPlayer.UserId > 0 then
		local timeWaited = 0
		while true do
			if GetBlockedPlayersCompleted then
				return getBlockedUserIdsFromBlockedList()
			end
			timeWaited = timeWaited + wait()
			if timeWaited > GET_BLOCKED_USERIDS_TIMEOUT then
				return {}
			end
		end
	end
	return {}
end

local function initializeBlockList()
	if not FFlagFetchBlockListFromServer then
		if GetBlockedPlayersCompleted then
			return
		end
	
		if GetBlockedPlayersStarted then
			GetBlockedPlayersFinished.Event:Wait()
			return
		end
		GetBlockedPlayersStarted = true
	
		BlockedList = GetBlockedPlayersAsync()
		GetBlockedPlayersCompleted = true
	
		GetBlockedPlayersFinished:Fire()
	
		local RemoteEvent_SetPlayerBlockList = RobloxReplicatedStorage:WaitForChild("SetPlayerBlockList", math.huge)
		local blockedUserIds = getBlockedUserIds()
		RemoteEvent_SetPlayerBlockList:FireServer(blockedUserIds)
	end
end

local function isBlocked(userId): boolean
	if (BlockedList[userId]) then
		return true
	end
	return false
end

local function isMuted(userId): boolean
	if (MutedList[userId] ~= nil and MutedList[userId] == true) then
		return true
	end
	return false
end

local function BlockPlayerAsync(playerToBlock): boolean
	if playerToBlock and LocalPlayer ~= playerToBlock then
		local blockUserId = playerToBlock.UserId
		if blockUserId > 0 then
			if not isBlocked(blockUserId) then
				BlockedList[blockUserId] = true
				BlockStatusChanged:Fire(blockUserId, true)

				if RemoteEvent_UpdatePlayerBlockList then
					RemoteEvent_UpdatePlayerBlockList:FireServer(blockUserId, true)
				end

				local success, wasBlocked
				success, wasBlocked = pcall(function()
					local fullUrl = if shouldUseNewBlockingUtility() or FFlagFetchBlockListFromServer then Url.APIS_URL .. "user-blocking-api/v1/users/" .. tostring(playerToBlock.UserId) .. "/block-user" else Url.ACCOUNT_SETTINGS_URL.."v1/users/"..tostring(playerToBlock.UserId).."/block"
					local result = HttpRbxApiService:PostAsyncFullUrl(fullUrl, "")

					if result then
						result = HttpService:JSONDecode(result)
						if shouldUseNewBlockingUtility() or FFlagFetchBlockListFromServer then
							return result
						end
						return result and not result.errors
					end
				end)

				if success and wasBlocked then
					AfterBlockStatusChanged:Fire(blockUserId, true)
				end

				return success and wasBlocked
			else
				return true
			end
		end
	end
	return false
end

local function UnblockPlayerAsync(playerToUnblock): boolean
	if playerToUnblock then
		local unblockUserId = playerToUnblock.UserId

		if isBlocked(unblockUserId) then
			BlockedList[unblockUserId] = nil
			BlockStatusChanged:Fire(unblockUserId, false)

			if RemoteEvent_UpdatePlayerBlockList then
				RemoteEvent_UpdatePlayerBlockList:FireServer(unblockUserId, false)
			end

			local success, wasUnBlocked
			success, wasUnBlocked = pcall(function()
				local fullUrl = if shouldUseNewBlockingUtility() or FFlagFetchBlockListFromServer then Url.APIS_URL .. "user-blocking-api/v1/users/" .. tostring(playerToUnblock.UserId) .. "/unblock-user" else Url.ACCOUNT_SETTINGS_URL.."v1/users/"..tostring(playerToUnblock.UserId).."/unblock"
				local result = HttpRbxApiService:PostAsyncFullUrl(fullUrl, "")

				if result then
					result = HttpService:JSONDecode(result)
					return result and not result.errors
				end
			end)

			if success and wasUnBlocked then
				AfterBlockStatusChanged:Fire(unblockUserId, false)
			end

			return success and wasUnBlocked
		else
			return true
		end
	end
	return false
end

local function MutePlayer(playerToMute)
	if playerToMute and LocalPlayer ~= playerToMute then
		local muteUserId = playerToMute.UserId
		if muteUserId > 0 then
			if not isMuted(muteUserId) then
				MutedList[muteUserId] = true
				MuteStatusChanged:Fire(muteUserId, true)
			end
		end
	end
end

local function UnmutePlayer(playerToUnmute)
	if playerToUnmute then
		local unmuteUserId = playerToUnmute.UserId
		MutedList[unmuteUserId] = nil
		MuteStatusChanged:Fire(unmuteUserId, false)
	end
end

--- GetCore Blocked/Muted/Friended events.

local PlayerBlockedEvent = Instance.new("BindableEvent")
local PlayerUnblockedEvent = Instance.new("BindableEvent")
local PlayerMutedEvent = Instance.new("BindableEvent")
local PlayerUnMutedEvent = Instance.new("BindableEvent")

local function blockedStatusChanged(userId, newBlocked)
	local player = PlayersService:GetPlayerByUserId(userId)
	if player then
		if newBlocked then
			PlayerBlockedEvent:Fire(player)
		else
			PlayerUnblockedEvent:Fire(player)
		end
	end
end

BlockStatusChanged.Event:Connect(blockedStatusChanged)

local function muteStatusChanged(userId, newMuted)
	local player = PlayersService:GetPlayerByUserId(userId)
	if player then
		if newMuted then
			PlayerMutedEvent:Fire(player)
		else
			PlayerUnMutedEvent:Fire(player)
		end
	end
end

MuteStatusChanged.Event:Connect(muteStatusChanged)

StarterGui:RegisterGetCore("PlayerBlockedEvent", function() return PlayerBlockedEvent end)
StarterGui:RegisterGetCore("PlayerUnblockedEvent", function() return PlayerUnblockedEvent end)
StarterGui:RegisterGetCore("PlayerMutedEvent", function() return PlayerMutedEvent end)
StarterGui:RegisterGetCore("PlayerUnmutedEvent", function() return PlayerUnMutedEvent end)

if FFlagFetchBlockListFromServer then
	task.spawn(function()
		local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
		local RemoveEvent_SendPlayerBlockList = RobloxReplicatedStorage:WaitForChild(
			"SendPlayerBlockList",
			math.huge
		)
		RemoveEvent_SendPlayerBlockList.OnClientEvent:Connect(function(blockList)
			-- Need to convert table indices back to numbers
			local newBlockList = {}
			for id, _ in blockList do
				newBlockList[tonumber(id)] = true
			end
			BlockedList = newBlockList

			GetBlockedPlayersCompleted = true

			GetBlockedPlayersFinished:Fire()
		end)
	end)

	task.spawn(function()
		local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
		local RemoveEvent_UpdateLocalPlayerBlockList = RobloxReplicatedStorage:WaitForChild(
			"UpdateLocalPlayerBlockList",
			math.huge
		)
		RemoveEvent_UpdateLocalPlayerBlockList.OnClientEvent:Connect(function(blockUserId, blockValue)
			BlockedList[blockUserId] = blockValue
			BlockStatusChanged:Fire(blockUserId, blockValue)
		end)
	end)
end

function BlockingUtility:InitBlockListAsync()
	initializeBlockList()
end

function BlockingUtility:BlockPlayerAsync(player): boolean
	return BlockPlayerAsync(player)
end

function BlockingUtility:UnblockPlayerAsync(player): boolean
	return UnblockPlayerAsync(player)
end

function BlockingUtility:MutePlayer(player)
	return MutePlayer(player)
end

function BlockingUtility:UnmutePlayer(player)
	return UnmutePlayer(player)
end

function BlockingUtility:IsPlayerBlockedByUserId(userId): boolean
	initializeBlockList()
	return isBlocked(userId)
end

function BlockingUtility:GetBlockedStatusChangedEvent()
	return BlockStatusChanged.Event
end

-- This event is similar to GetBlockedStatusChangedEvent, but it fires AFTER the request finishes.
-- This is needed for some voice-chat functionality
function BlockingUtility:GetAfterBlockedStatusChangedEvent()
	return AfterBlockStatusChanged.Event
end

function BlockingUtility:GetMutedStatusChangedEvent()
	return MuteStatusChanged.Event
end

function BlockingUtility:IsPlayerMutedByUserId(userId): boolean
	return isMuted(userId)
end

function BlockingUtility:GetBlockedUserIdsAsync(): { number }
	return getBlockedUserIds()
end

return BlockingUtility
