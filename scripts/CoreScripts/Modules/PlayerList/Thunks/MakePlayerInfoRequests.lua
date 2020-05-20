-- This thunk is used to make requests for player info when the player gets added to the store.

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local PlayerPermissionsModule = require(RobloxGui.Modules.PlayerPermissionsModule)
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)

local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)

local UIBlox = require(CorePackages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local PlayerList = script.Parent.Parent

local FFlagPlayerListFixLeaderboardDisabledError = game:DefineFastFlag("PlayerListFixLeaderboardDisabledError", false)
local FFlagUseCanManageForDeveloperIconClient2 = game:GetFastFlag("UseCanManageForDeveloperIconClient2")

local SPECIAL_PLAYER_ICONS = {
	Admin = Images["icons/status/player/admin"],
	Intern = "rbxasset://textures/ui/icon_intern-16.png", --TODO: Update this
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
	if FFlagPlayerListFixLeaderboardDisabledError then
		if PlayerPermissionsModule.IsPlayerAdminAsync(player) then
			dispatchIfPlayerExists(store, player, SetPlayerSpecialGroupIcon(player, SPECIAL_PLAYER_ICONS.Admin))
		elseif PlayerPermissionsModule.IsPlayerStarAsync(player) then
			dispatchIfPlayerExists(store, player, SetPlayerSpecialGroupIcon(player, SPECIAL_PLAYER_ICONS.Star))
		elseif PlayerPermissionsModule.IsPlayerInternAsync(player) then
			dispatchIfPlayerExists(store, player, SetPlayerSpecialGroupIcon(player, SPECIAL_PLAYER_ICONS.Intern))
		end
	else
		if PlayerPermissionsModule.IsPlayerAdminAsync(player) then
			store:dispatch(SetPlayerSpecialGroupIcon(player, SPECIAL_PLAYER_ICONS.Admin))
		elseif PlayerPermissionsModule.IsPlayerStarAsync(player) then
			store:dispatch(SetPlayerSpecialGroupIcon(player, SPECIAL_PLAYER_ICONS.Star))
		elseif PlayerPermissionsModule.IsPlayerInternAsync(player) then
			store:dispatch(SetPlayerSpecialGroupIcon(player, SPECIAL_PLAYER_ICONS.Intern))
		end
	end
end

local function getGameCreator(store, player)
	if game.CreatorType ~= Enum.CreatorType.Group then
		return
	end

	if FFlagPlayerListFixLeaderboardDisabledError then
		if FFlagUseCanManageForDeveloperIconClient2 then
			if PlayerPermissionsModule.CanPlayerManagePlaceAsync(player) then
				dispatchIfPlayerExists(store, player, SetPlayerIsCreator(player, true))
			end
		else
			if PlayerPermissionsModule.IsPlayerPlaceOwnerAsync(player) then
				dispatchIfPlayerExists(store, player, SetPlayerIsCreator(player, true))
			end
		end
	else
		if PlayerPermissionsModule.IsPlayerPlaceOwnerAsync(player) then
			store:dispatch(SetPlayerIsCreator(player, true))
		end
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
		if FFlagPlayerListFixLeaderboardDisabledError then
			dispatchIfPlayerExists(store, player, SetPlayerAvatarIcon(player, thumbnail))
		else
			store:dispatch(SetPlayerAvatarIcon(player, thumbnail))
		end
	end
end

local function getPlayerIsBlocked(store, player)
	if BlockingUtility:IsPlayerBlockedByUserId(player.UserId) then
		if FFlagPlayerListFixLeaderboardDisabledError then
			dispatchIfPlayerExists(store, player, SetPlayerIsBlocked(player, true))
		else
			store:dispatch(SetPlayerIsBlocked(player, true))
		end
	end
end

local function getPlayerFriendStatus(store, player)
	if player ~= Players.LocalPlayer then
		if FFlagPlayerListFixLeaderboardDisabledError then
			dispatchIfPlayerExists(store, player, SetPlayerFriendStatus(player, Players.LocalPlayer:GetFriendStatus(player)))
		else
			store:dispatch(SetPlayerFriendStatus(player, Players.LocalPlayer:GetFriendStatus(player)))
		end
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