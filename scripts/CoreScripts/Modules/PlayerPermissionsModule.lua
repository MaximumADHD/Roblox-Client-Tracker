--!nonstrict
local PlayerPermissionsModule = {}

local PlayersService = game:GetService("Players")
local CoreGuiService = game:GetService("CoreGui")
local RobloxGui = CoreGuiService:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService('HttpRbxApiService')
local HttpService = game:GetService('HttpService')
local Settings = UserSettings()
local GameSettings = Settings.GameSettings

local Url = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Url
local FFlagInExperienceUserProfileSettingsEnabled = require(RobloxGui.Modules.Common.Flags.FFlagInExperienceUserProfileSettingsEnabled)
local FFlagBadgeVisibilitySettingEnabled = require(CorePackages.Workspace.Packages.SharedFlags).FFlagBadgeVisibilitySettingEnabled

local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)
local VerifiedBadgeDisplayStore = UserProfiles.Stores.VerifiedBadgeDisplayStore
local FFlagEnableVerifiedBadgeStore = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableVerifiedBadgeStore

local PlayerInfo = {}
PlayerInfo.__index = PlayerInfo

function PlayerInfo.new(player: Player)
	local self = setmetatable({}, PlayerInfo)
	self.player = player
	self.pendingGroupData = {}
	self.pendingCanManage = {}
	self.pendingProfileSettings = {}
	self.groupData = nil
	self.canManage = nil
	self.profileSettings = nil
	return self
end

function PlayerInfo:getGroupDataAsync()
	if self.groupData then
		return self.groupData
	end

	local thread = coroutine.running()
	table.insert(self.pendingGroupData, thread)
	coroutine.yield()
	return self.groupData
end

function PlayerInfo:getCanManageAsync()
	if self.canManage ~= nil then
		return self.canManage
	end

	local thread = coroutine.running()
	table.insert(self.pendingCanManage, thread)
	coroutine.yield()
	return self.canManage
end

function PlayerInfo:getProfileSettingsAsync()
	if self.profileSettings ~= nil then
		return self.profileSettings
	end

	local thread = coroutine.running()
	table.insert(self.pendingProfileSettings, thread)
	coroutine.yield()
	return self.profileSettings
end

function PlayerInfo:setGroupData(data)
	self.groupData = data
	local pending = self.pendingGroupData
	self.pendingGroupData = {}
	for _, thread in pairs(pending) do
		coroutine.resume(thread)
	end
end

function PlayerInfo:setCanManage(value)
	-- Make sure the value is not nil.
	self.canManage = value and true or false
	local pending = self.pendingCanManage
	self.pendingCanManage = {}
	for _, thread in pairs(pending) do
		coroutine.resume(thread)
	end
end

function PlayerInfo:setProfileSettings(data)
	self.profileSettings = data
	local pending = self.pendingProfileSettings
	self.pendingProfileSettings = {}
	for _, thread in pairs(pending) do
		coroutine.resume(thread)
	end
end

function PlayerInfo:destroy()
	-- Resume waiting threads so that they don't get stuck hanging. Async getters
	-- will return nil.
	for _, thread in pairs(self.pendingGroupData) do
		coroutine.resume(thread)
	end
	for _, thread in pairs(self.pendingCanManage) do
		coroutine.resume(thread)
	end
	if FFlagInExperienceUserProfileSettingsEnabled then
		for _, thread in pairs(self.pendingProfileSettings) do
			coroutine.resume(thread)
		end
	end
end

local playerInfoMap = {}

local function getPlayerInfo(player: Player)
	local entry = playerInfoMap[player]
	if not entry and player.Parent ~= nil then
		entry = PlayerInfo.new(player)
		playerInfoMap[player] = entry
	end
	return entry
end

spawn(function()
	local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
	local RemoveEvent_NewPlayerGroupDetails = RobloxReplicatedStorage:WaitForChild("NewPlayerGroupDetails", math.huge)

	RemoveEvent_NewPlayerGroupDetails.OnClientEvent:Connect(function(...)
		local remoteArguments = { ... }

		if #remoteArguments == 1 then --Only one parameter, so it should be the data dictionary
			local groupDetailsPacket = remoteArguments[1]
			local infoMapWasChanged = false

			for userIdStr, groupDetails in pairs(groupDetailsPacket) do
				local player = PlayersService:GetPlayerByUserId(tonumber(userIdStr))
				if player then
					local info = getPlayerInfo(player)
					if info then
						info:setGroupData(groupDetails)
					end
				end
			end
		else --More arguments, server flag isn't enabled yet
			local userIdStr = remoteArguments[1]
			local groupDetails = remoteArguments[2]

			local player = PlayersService:GetPlayerByUserId(tonumber(userIdStr))
			if player then
				local info = getPlayerInfo(player)
				if info then
					info:setGroupData(groupDetails)
				end
			end
		end
	end)
end)

coroutine.wrap(function()
	local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
	local RemoveEvent_NewPlayerCanManageDetails = RobloxReplicatedStorage:WaitForChild(
		"NewPlayerCanManageDetails",
		math.huge
	)
	RemoveEvent_NewPlayerCanManageDetails.OnClientEvent:Connect(function(userIdStr, canManage)
		local player = PlayersService:GetPlayerByUserId(tonumber(userIdStr))
		if player then
			local info = getPlayerInfo(player)
			if info then
				info:setCanManage(canManage)
			end
		end
	end)
end)()

if FFlagInExperienceUserProfileSettingsEnabled then
	coroutine.wrap(function()
		local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
		local RemoteEvent_SendPlayerProfileSettings = RobloxReplicatedStorage:WaitForChild(
			"SendPlayerProfileSettings",
			math.huge
		)
		RemoteEvent_SendPlayerProfileSettings.OnClientEvent:Connect(function(userIdStr, profileSettings)
			local player = PlayersService:GetPlayerByUserId(tonumber(userIdStr))
			if player then
				local info = getPlayerInfo(player)
				if info then
					info:setProfileSettings(profileSettings)
				end
										
				if FFlagEnableVerifiedBadgeStore and profileSettings.isInExperienceNameEnabled ~= nil then
					local verifiedBadgeDisplayStore = VerifiedBadgeDisplayStore.get()
					verifiedBadgeDisplayStore.setBadgeVisibility(player.UserId, not profileSettings.isInExperienceNameEnabled)
				end
			end
		end)
	end)()
end

PlayersService.PlayerRemoving:Connect(function(player)
	if playerInfoMap[player] then
		local info = playerInfoMap[player]
		playerInfoMap[player] = nil
		info:destroy()
	end
end)

local function NewInGroupFunctionFactory(groupKey)
	return function(player)
		local info = getPlayerInfo(player)
		if info then
			local data = info:getGroupDataAsync()
			if data and data[groupKey] then
				return true
			end
		end
		return false
	end
end

local localizationCheckFunctions = {
	NewInGroupFunctionFactory("SpanishLocalizationExpert"),
	NewInGroupFunctionFactory("BrazilianLocalizationExpert"),
	NewInGroupFunctionFactory("FrenchLocalizationExpert"),
	NewInGroupFunctionFactory("GermanLocalizationExpert"),
}

local function NewIsLocalizationExpertFunctionFactory()
	return function(player)
		for i = 1, #localizationCheckFunctions do
			if localizationCheckFunctions[i](player) then
				return true
			end
		end
		return false
	end
end

local function IsPlaceOwnerFunctionFactory()
	if game.CreatorType == Enum.CreatorType.Group then
		return NewInGroupFunctionFactory("PlaceCreator")
	end
	return function(player)
		return player.UserId == game.CreatorId
	end
end

local function CanPlayerManagePlace(player)
	local info = getPlayerInfo(player)
	if info then
		local canManage = info:getCanManageAsync()
		return canManage or false
	end
	return false
end

local function IsPlayerInExperienceNameEnabled(player)
	local info = getPlayerInfo(player)
	if info then
		local profileSettings = info:getProfileSettingsAsync()
		if profileSettings then
			return profileSettings.isInExperienceNameEnabled
		end
	end
	return false
end

local function SetPlayerInExperienceNameEnabled(player, value)
	pcall(function()
		local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
		local RemoteEvent_UpdatePlayerProfileSettings = RobloxReplicatedStorage:WaitForChild("UpdatePlayerProfileSettings", math.huge)
		local apiPath = `user-profile-api/v1/user/profiles/settings`
		local url = Url.APIS_URL .. apiPath
		local body = HttpService:JSONEncode({
			userProfileSettings = {
				isInExperienceNameEnabled = value,
			},
		})

		HttpRbxApiService:PostAsyncFullUrl(url, body, Enum.ThrottlingPriority.Default, Enum.HttpContentType.ApplicationJson, Enum.HttpRequestType.Players)
		RemoteEvent_UpdatePlayerProfileSettings:FireServer({ isInExperienceNameEnabled = value })
	end)
end

PlayerPermissionsModule.IsPlayerAdminAsync = NewInGroupFunctionFactory("Admin")
PlayerPermissionsModule.IsPlayerInternAsync = NewInGroupFunctionFactory("Intern")
PlayerPermissionsModule.IsPlayerStarAsync = NewInGroupFunctionFactory("Star")
PlayerPermissionsModule.IsPlayerLocalizationExpertAsync = NewIsLocalizationExpertFunctionFactory()
PlayerPermissionsModule.IsPlayerPlaceOwnerAsync = IsPlaceOwnerFunctionFactory()
PlayerPermissionsModule.CanPlayerManagePlaceAsync = CanPlayerManagePlace
if FFlagInExperienceUserProfileSettingsEnabled then
	PlayerPermissionsModule.IsPlayerInExperienceNameEnabledAsync = IsPlayerInExperienceNameEnabled
end
if FFlagBadgeVisibilitySettingEnabled then
	PlayerPermissionsModule.SetPlayerInExperienceNameEnabled = SetPlayerInExperienceNameEnabled
end

return PlayerPermissionsModule
