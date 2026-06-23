--!nonstrict
-- Data/control layer for the reskinned leaderboard context menu.
--
-- The reskin context-menu UI (modules/core-scripts/player-list PlayerContextMenu) is
-- purely presentational and owns the MenuData type contract (PlayerContextualMenuStore).
-- This CoreScript controller builds a conforming menu data table for a player by REUSING
-- the legacy PlayerDropDown control logic and the same monolith/engine entry points
-- (RequestFriendship thunk, onBlockButtonActivated, BlockingUtility, InGameMenu/
-- ReportAbuseMenu, GuiService inspect). It lives in CoreScripts -- not the package --
-- because those entry points are monolith-only; the package must not depend on RobloxGui.
--
-- `assembleMenuItems` and `getFriendLabelAndIcon` are the pure decision logic (item set,
-- order, labels, icons) and are unit-tested in ContextMenuController.spec; `buildMenuData`
-- is the thin engine-resolution layer that yields and is therefore covered manually.

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local BlockingUtility = require(CorePackages.Workspace.Packages.BlockingUtility)
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local PlayerList = script.Parent
local RequestFriendship = require(PlayerList.Thunks.RequestFriendship)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local PlayerListVisibilityStore = PlayerListPackage.PlayerListVisibilityStore
local builderIcon = PlayerListPackage.builderIcon
local buildMenuHeader = PlayerListPackage.PlayerContextualMenuStore.buildMenuHeader

local LocalPlayer = Players.LocalPlayer

local ICON_FRIEND_ADD = builderIcon("person-plus")
local ICON_FRIEND_REMOVE = builderIcon("person-trash-can")
local ICON_BLOCK = builderIcon("circle-slash")
local ICON_REPORT = builderIcon("speech-bubble-exclamation")
local ICON_INSPECT = builderIcon("magnifying-glass-plus")

local function translate(key: string, fallback: string): string
	local ok, result = pcall(function()
		return RobloxTranslator:FormatByKey(key)
	end)
	if ok and result and result ~= "" then
		return result
	end
	return fallback
end

-- Mirrors legacy FriendDropDownButton.getFriendTextAndIcon (label + icon per status).
local function getFriendLabelAndIcon(friendStatus: Enum.FriendStatus): (string, any)
	if friendStatus == Enum.FriendStatus.Friend then
		return translate("InGame.PlayerDropDown.UnFriend", "Unfriend"), ICON_FRIEND_REMOVE
	elseif friendStatus == Enum.FriendStatus.FriendRequestSent then
		return translate("InGame.PlayerDropDown.CancelRequest", "Cancel request"), ICON_FRIEND_ADD
	elseif friendStatus == Enum.FriendStatus.FriendRequestReceived then
		return translate("InGame.PlayerDropDown.Accept", "Accept request"), ICON_FRIEND_ADD
	end
	return translate("InGame.PlayerDropDown.Action.ConnectionRequest", "Friend request"), ICON_FRIEND_ADD
end

local function openReportDialog(player: Player)
	local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)
	if isNewInGameMenuEnabled() then
		local InGameMenu = require(RobloxGui.Modules.InGameMenuInit)
		InGameMenu.openReportDialog(player, "PlayerListReskin")
	else
		local ReportAbuseMenu = require(RobloxGui.Modules.Settings.Pages.ReportAbuseMenuNewContainerPage)
		ReportAbuseMenu:ReportPlayer(player, "PlayerListReskin")
	end
end

type MenuActions = {
	onFriend: (() -> ())?,
	onExamine: (() -> ())?,
	onBlock: (() -> ())?,
	onReport: (() -> ())?,
}

-- Pure: assembles the menu items (key / label / icon / order) from already-resolved
-- relationship state. Engine resolution (the yielding friend/block lookups) lives in
-- buildMenuData; this is the deterministic decision logic, unit-tested in the spec.
-- Order matches legacy layoutOrder + Figma 577:157975: friend -> examine -> block -> report.
-- Examine is the only item for self; friend is hidden when blocked.
local function assembleMenuItems(params: {
	isSelf: boolean,
	isBlocked: boolean,
	friendStatus: Enum.FriendStatus,
	inspectMenuEnabled: boolean,
	actions: MenuActions,
})
	local items = {}

	if not params.isSelf and not params.isBlocked then
		local label, icon = getFriendLabelAndIcon(params.friendStatus)
		table.insert(items, {
			key = "friend",
			label = label,
			icon = icon,
			onActivated = params.actions.onFriend,
		})
	end

	if params.inspectMenuEnabled then
		table.insert(items, {
			key = "examine",
			label = translate("InGame.PlayerDropDown.Examine", "Examine avatar"),
			icon = ICON_INSPECT,
			onActivated = params.actions.onExamine,
		})
	end

	if not params.isSelf then
		table.insert(items, {
			key = "block",
			label = if params.isBlocked
				then translate("InGame.PlayerDropDown.UnBlock", "Unblock")
				else translate("InGame.PlayerDropDown.Block", "Block"),
			icon = ICON_BLOCK,
			onActivated = params.actions.onBlock,
		})

		table.insert(items, {
			key = "report",
			label = translate("InGame.PlayerDropDown.Report", "Report abuse"),
			icon = ICON_REPORT,
			onActivated = params.actions.onReport,
		})
	end

	return items
end

-- Builds the menu data (conforming to PlayerContextualMenuStore.MenuData) for the
-- presentational menu. May yield (GetFriendStatus / IsPlayerBlockedByUserId), so callers
-- run it in a coroutine/task.spawn. `onClose` is invoked by each action after it fires.
local function buildMenuData(player: Player, onClose: () -> (), isSmallTouchDevice: boolean?)
	local userId = player.UserId
	local isSelf = LocalPlayer ~= nil and player == LocalPlayer

	-- Mirrors legacy: the friend button is hidden when blocked, so only resolve friend
	-- status when not blocked.
	local isBlocked = false
	local friendStatus = Enum.FriendStatus.Unknown
	if not isSelf then
		pcall(function()
			isBlocked = BlockingUtility:IsPlayerBlockedByUserId(userId)
		end)
		if not isBlocked then
			pcall(function()
				friendStatus = LocalPlayer:GetFriendStatus(player)
			end)
		end
	end

	local items = assembleMenuItems({
		isSelf = isSelf,
		isBlocked = isBlocked,
		friendStatus = friendStatus,
		inspectMenuEnabled = GuiService:GetInspectMenuEnabled(),
		actions = {
			onFriend = function()
				if friendStatus == Enum.FriendStatus.Friend or friendStatus == Enum.FriendStatus.FriendRequestSent then
					LocalPlayer:RevokeFriendship(player)
				elseif friendStatus == Enum.FriendStatus.FriendRequestReceived then
					RequestFriendship(player, true)()
				else
					RequestFriendship(player)()
				end
				onClose()
			end,
			onExamine = function()
				GuiService:InspectPlayerFromUserIdWithCtx(userId, "leaderBoard")
				onClose()
				if isSmallTouchDevice then
					PlayerListVisibilityStore.setVisible(false)
				end
			end,
			onBlock = function()
				if isBlocked then
					coroutine.wrap(function()
						BlockingUtility:UnblockPlayerAsync(player)
					end)()
				else
					local onBlockButtonActivated = require(RobloxGui.Modules.Settings.onBlockButtonActivated)
					onBlockButtonActivated(player, nil, "PlayerListReskin", {})
				end
				onClose()
			end,
			onReport = function()
				openReportDialog(player)
				onClose()
			end,
		},
	})

	return {
		player = player,
		header = buildMenuHeader(player),
		items = items,
	}
end

return {
	buildMenuData = buildMenuData,
	assembleMenuItems = assembleMenuItems,
	getFriendLabelAndIcon = getFriendLabelAndIcon,
}
