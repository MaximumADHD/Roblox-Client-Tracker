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
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local BlockingUtility = require(CorePackages.Workspace.Packages.BlockingUtility)
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local PlayerList = script.Parent
local RequestFriendship = require(PlayerList.Thunks.RequestFriendship)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local PlayerListVisibilityStore = PlayerListPackage.PlayerListVisibilityStore
local PlayerContextualMenuStore = PlayerListPackage.PlayerContextualMenuStore
local builderIcon = PlayerListPackage.builderIcon
local buildMenuHeader = PlayerContextualMenuStore.buildMenuHeader

type ContextMenuTelemetryAction = PlayerListPackage.ContextMenuTelemetryAction

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

local function getFriendLabelAndIcon(friendStatus: Enum.FriendStatus): (string, any)
	if friendStatus == Enum.FriendStatus.Friend then
		return translate("InGame.PlayerDropDown.Unfriend", "Unfriend"), ICON_FRIEND_REMOVE
	elseif friendStatus == Enum.FriendStatus.FriendRequestSent then
		return translate("InGame.PlayerDropDown.CancelRequest", "Cancel request"), ICON_FRIEND_ADD
	elseif friendStatus == Enum.FriendStatus.FriendRequestReceived then
		return translate("InGame.PlayerDropDown.Accept", "Accept request"), ICON_FRIEND_ADD
	end
	return translate("InGame.PlayerDropDown.Action.ConnectionRequest", "Friend request"), ICON_FRIEND_ADD
end

-- Telemetry `action` value for the friend item, mirroring the branches in buildFriendAction so the
-- new TelemetryV2 events (emitted from the store) distinguish
-- sending / accepting / cancelling / unfriending.
local function getFriendTelemetryAction(friendStatus: Enum.FriendStatus): ContextMenuTelemetryAction
	if friendStatus == Enum.FriendStatus.Friend then
		return "friend_remove"
	elseif friendStatus == Enum.FriendStatus.FriendRequestSent then
		return "friend_cancel"
	elseif friendStatus == Enum.FriendStatus.FriendRequestReceived then
		return "friend_accept"
	end
	return "friend_send"
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
	onDecline: (() -> ())?,
	onExamine: (() -> ())?,
	onBlock: (() -> ())?,
	onReport: (() -> ())?,
}

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
		local isUnfriend = params.friendStatus == Enum.FriendStatus.Friend
		table.insert(items, {
			key = "friend",
			label = label,
			icon = icon,
			onActivated = params.actions.onFriend,
			telemetryAction = getFriendTelemetryAction(params.friendStatus),
			onceGroup = "friending",
			requiresConfirm = if isUnfriend then true else nil,
			confirmLabel = if isUnfriend
				then translate("InGame.PlayerDropDown.ConfirmUnfriend", "Tap to confirm unfriend")
				else nil,
		})

		if params.friendStatus == Enum.FriendStatus.FriendRequestReceived then
			table.insert(items, {
				key = "decline",
				label = translate("InGame.PlayerDropDown.Decline", "Decline"),
				icon = ICON_FRIEND_REMOVE,
				onActivated = params.actions.onDecline,
				telemetryAction = "friend_decline",
				onceGroup = "friending",
			})
		end
	end

	if params.inspectMenuEnabled then
		table.insert(items, {
			key = "examine",
			label = translate("InGame.PlayerDropDown.Examine", "Examine avatar"),
			icon = ICON_INSPECT,
			onActivated = params.actions.onExamine,
			telemetryAction = "avatar_examine",
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
			telemetryAction = if params.isBlocked then "user_unblock" else "user_block",
		})

		table.insert(items, {
			key = "report",
			label = translate("InGame.PlayerDropDown.Report", "Report abuse"),
			icon = ICON_REPORT,
			onActivated = params.actions.onReport,
			telemetryAction = "user_report",
		})
	end

	return items
end

local function buildMenuData(
	player: Player,
	onClose: () -> (),
	isSmallTouchDevice: boolean?,
	friendStatusOverride: Enum.FriendStatus?
)
	local userId = player.UserId
	local isSelf = LocalPlayer ~= nil and player == LocalPlayer

	local isBlocked = false
	local friendStatus = Enum.FriendStatus.Unknown
	if not isSelf then
		pcall(function()
			isBlocked = BlockingUtility:IsPlayerBlockedByUserId(userId)
		end)
		if not isBlocked then
			if friendStatusOverride ~= nil then
				-- FriendStatusChanged already delivered the status; skip the yielding lookup.
				friendStatus = friendStatusOverride
			else
				pcall(function()
					friendStatus = LocalPlayer:GetFriendStatus(player)
				end)
			end
		end
	end

	local items = assembleMenuItems({
		isSelf = isSelf,
		isBlocked = isBlocked,
		friendStatus = friendStatus,
		inspectMenuEnabled = GuiService:GetInspectMenuEnabled(),
		actions = {
			-- Friending keeps the menu open; FriendStatusChanged rebuilds it so the row flips.
			onFriend = function()
				if friendStatus == Enum.FriendStatus.Friend or friendStatus == Enum.FriendStatus.FriendRequestSent then
					RbxAnalyticsService:TrackEvent("Game", "RevokeFriendship", "PlayerDropDown")
					LocalPlayer:RevokeFriendship(player)
				elseif friendStatus == Enum.FriendStatus.FriendRequestReceived then
					RequestFriendship(player, true)()
				else
					RequestFriendship(player)()
				end
			end,
			onDecline = function()
				RbxAnalyticsService:TrackEvent("Game", "DeclineFriendship", "PlayerDropDown")
				LocalPlayer:RevokeFriendship(player)
			end,
			onExamine = function()
				if isSmallTouchDevice then
					PlayerContextualMenuStore.setSuppressNextDismissRestore(true)
					PlayerListVisibilityStore.setVisible(false)
				end
				GuiService:InspectPlayerFromUserIdWithCtx(userId, "leaderBoard")
				onClose()
			end,
			onBlock = function()
				if isSmallTouchDevice and not isBlocked then
					PlayerContextualMenuStore.setSuppressNextDismissRestore(true)
					PlayerListVisibilityStore.setVisible(false)
				end
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
				if isSmallTouchDevice then
					PlayerContextualMenuStore.setSuppressNextDismissRestore(true)
					PlayerListVisibilityStore.setVisible(false)
				end
				openReportDialog(player)
				onClose()
			end,
		},
	})

	return {
		player = player,
		header = buildMenuHeader(player),
		items = items,
		telemetry = {
			isSelf = isSelf,
			friendStatus = if isSelf then nil else friendStatus.Name,
		},
	}
end

return {
	buildMenuData = buildMenuData,
	assembleMenuItems = assembleMenuItems,
	getFriendLabelAndIcon = getFriendLabelAndIcon,
}
