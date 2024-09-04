--!nonstrict
-- This thunk is used to make requests for player info when the player gets added to the store.

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local PlayerPermissionsModule = require(RobloxGui.Modules.PlayerPermissionsModule)
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)

local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)

local FFlagInExperienceUserProfileSettingsEnabled = require(RobloxGui.Modules.Common.Flags.FFlagInExperienceUserProfileSettingsEnabled)

local UIBlox = require(CorePackages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local PlayerList = script.Parent.Parent

local SPECIAL_PLAYER_ICONS = {
	Admin = Images["icons/status/player/admin"],
	Intern = Images["icons/status/player/intern"],
	Star = Images["icons/status/player/videostar"],
}

-- Actions
local SetPlayerSpecialGroupIcon = require(PlayerList.Actions.SetPlayerSpecialGroupIcon)
local SetPlayerIsCreator = require(PlayerList.Actions.SetPlayerIsCreator)
local SetPlayerAvatarIcon = require(PlayerList.Actions.SetPlayerAvatarIcon)
local SetPlayerIsBlocked = require(PlayerList.Actions.SetPlayerIsBlocked)
local SetPlayerFriendStatus = require(PlayerList.Actions.SetPlayerFriendStatus)

local function dispatchIfPlayerExists(store, player, action)
	local players = store:getState().players
	local hasPlayer = false
	for _, checkPlayer in ipairs(players) do
		if player == checkPlayer then
			hasPlayer = true
			break
		end
	end
	if hasPlayer then
		store:dispatch(action)
	end
end

local function getGroupsPermissionsInfo(store, player)
	if PlayerPermissionsModule.IsPlayerAdminAsync(player) then
		dispatchIfPlayerExists(store, player, SetPlayerSpecialGroupIcon(player, SPECIAL_PLAYER_ICONS.Admin))
	elseif PlayerPermissionsModule.IsPlayerStarAsync(player) then
		if FFlagInExperienceUserProfileSettingsEnabled then
			if not PlayerPermissionsModule.IsPlayerInExperienceNameEnabledAsync(player) then
				dispatchIfPlayerExists(store, player, SetPlayerSpecialGroupIcon(player, SPECIAL_PLAYER_ICONS.Star))
			end
		else
			dispatchIfPlayerExists(store, player, SetPlayerSpecialGroupIcon(player, SPECIAL_PLAYER_ICONS.Star))
		end
	elseif PlayerPermissionsModule.IsPlayerInternAsync(player) then
		dispatchIfPlayerExists(store, player, SetPlayerSpecialGroupIcon(player, SPECIAL_PLAYER_ICONS.Intern))
	end
end

local function getGameCreator(store, player)
	if game.CreatorType ~= Enum.CreatorType.Group then
		return
	end

	if PlayerPermissionsModule.CanPlayerManagePlaceAsync(player) then
		dispatchIfPlayerExists(store, player, SetPlayerIsCreator(player, true))
	end
end

local function getPlayerAvatarIcon(store, player)
	if not TenFootInterface:IsEnabled() then
		return
	end

	local thumbnail = "rbxthumb://type=Avatar&id=" .. player.UserId .. "&w=100&h=100"
	dispatchIfPlayerExists(store, player, SetPlayerAvatarIcon(player, thumbnail))
end

local function getPlayerIsBlocked(store, player)
	if BlockingUtility:IsPlayerBlockedByUserId(player.UserId) then
		dispatchIfPlayerExists(store, player, SetPlayerIsBlocked(player, true))
	end
end

local function getPlayerFriendStatus(store, player)
	if player ~= Players.LocalPlayer and player.Parent == Players and Players.LocalPlayer.Parent == Players then
		dispatchIfPlayerExists(store, player, SetPlayerFriendStatus(player, Players.LocalPlayer:GetFriendStatus(player)))
	end
end

local function MakePlayerInfoRequests(player)
	return function(store)
		coroutine.wrap(getGroupsPermissionsInfo)(store, player)
		coroutine.wrap(getGameCreator)(store, player)
		coroutine.wrap(getPlayerAvatarIcon)(store, player)
		coroutine.wrap(getPlayerIsBlocked)(store, player)
		coroutine.wrap(getPlayerFriendStatus)(store, player)
	end
end

return MakePlayerInfoRequests