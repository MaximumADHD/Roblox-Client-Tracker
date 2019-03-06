-- This thunk is used to make requests for player info when the player gets added to the store.

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local PlayerPermissionsModule = require(RobloxGui.Modules.PlayerPermissionsModule)
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)

local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)

local PlayerList = script.Parent.Parent

local SPECIAL_PLAYER_ICONS = {
	Admin = "rbxasset://textures/ui/icon_admin-16.png",
	Intern = "rbxasset://textures/ui/icon_intern-16.png",
	Star = "rbxasset://textures/ui/icon_star-16.png",
	LocalizationExpert = "rbxasset://textures/ui/icon_localization-16.png",
}

-- Actions
local SetPlayerSpecialGroupIcon = require(PlayerList.Actions.SetPlayerSpecialGroupIcon)
local SetPlayerIsCreator = require(PlayerList.Actions.SetPlayerIsCreator)
local SetPlayerAvatarIcon = require(PlayerList.Actions.SetPlayerAvatarIcon)
local SetPlayerIsBlocked = require(PlayerList.Actions.SetPlayerIsBlocked)
local SetPlayerFriendStatus = require(PlayerList.Actions.SetPlayerFriendStatus)

local function getGroupsPermissionsInfo(store, player)
	if PlayerPermissionsModule.IsPlayerAdminAsync(player) then
		store:dispatch(SetPlayerSpecialGroupIcon(player, SPECIAL_PLAYER_ICONS.Admin))
	elseif PlayerPermissionsModule.IsPlayerInternAsync(player) then
		store:dispatch(SetPlayerSpecialGroupIcon(player, SPECIAL_PLAYER_ICONS.Intern))
	elseif PlayerPermissionsModule.IsPlayerStarAsync(player) then
		store:dispatch(SetPlayerSpecialGroupIcon(player, SPECIAL_PLAYER_ICONS.Star))
	elseif PlayerPermissionsModule.IsPlayerLocalizationExpertAsync(player) then
		store:dispatch(SetPlayerSpecialGroupIcon(player, SPECIAL_PLAYER_ICONS.LocalizationExpert))
	end
end

local function getGameCreator(store, player)
	if game.CreatorType ~= Enum.CreatorType.Group then
		return
	end

	local success, result = pcall(function()
		return player:GetRankInGroup(game.CreatorId) == 255
	end)
	if success and result then
		store:dispatch(SetPlayerIsCreator(player, true))
	end
end

local function getPlayerAvatarIcon(store, player)
	if not TenFootInterface:IsEnabled() then
		return
	end

	local thumbnail, isFinal = Players:GetUserThumbnailAsync(
		player.UserId,
		Enum.ThumbnailType.AvatarThumbnail,
		Enum.ThumbnailSize.Size100x100
	)
	if isFinal then
		store:dispatch(SetPlayerAvatarIcon(player, thumbnail))
	end
end

local function getPlayerIsBlocked(store, player)
	if BlockingUtility:IsPlayerBlockedByUserId(player.UserId) then
		store:dispatch(SetPlayerIsBlocked(player, true))
	end
end

local function getPlayerFriendStatus(store, player)
	if player ~= Players.LocalPlayer then
		store:dispatch(SetPlayerFriendStatus(player, Players.LocalPlayer:GetFriendStatus(player)))
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