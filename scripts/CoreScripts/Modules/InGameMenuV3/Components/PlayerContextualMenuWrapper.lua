local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local UIBlox = InGameMenuDependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images

local InGameMenu = script.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)
local Assets = require(InGameMenu.Resources.Assets)
local Constants = require(InGameMenu.Resources.Constants)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local PlayerContextualMenu = require(InGameMenu.Components.PlayerContextualMenu)
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local InviteUserToPlaceId = require(InGameMenu.Thunks.InviteUserToPlaceId)
local OpenReportDialog = require(InGameMenu.Actions.OpenReportDialog)

local InviteStatus = Constants.InviteStatus

local PlayerContextualMenuWrapper = Roact.PureComponent:extend("PlayerContextualMenuWrapper")

PlayerContextualMenuWrapper.validateProps = t.strictInterface({
	xOffset = t.optional(t.number),
	selectedPlayer = t.optional(t.strictInterface({
		IsOnline = t.boolean,
		Id = t.integer,
		Username = t.string,
		DisplayName = t.string,
	})),
	selectedPlayerPosition = t.optional(t.Vector2),
	blockingUtility = t.union(t.Instance, t.table),
	playersService = t.union(t.Instance, t.table),
	onActionComplete = t.optional(t.callback),
	invitesState = t.table,
	voiceEnabled = t.optional(t.boolean),
	screenSize = t.Vector2,
	isRespawnDialogOpen = t.optional(t.boolean),
	isGamepadLastInput = t.optional(t.boolean),
	isCurrentZoneActive = t.optional(t.boolean),
	closeMenu = t.callback,
	dispatchInviteUserToPlaceId = t.callback,
	dispatchOpenReportDialog = t.callback,
})

PlayerContextualMenuWrapper.defaultProps = {
	blockingUtility = BlockingUtility,
	playersService = Players,
	screenSize = Vector2.new(0, 0),
	selectedPlayer = nil,
	selectedPlayerPosition = Vector2.new(0, 0),
	onActionComplete = function() end,
}

local ACTION_WIDTH = 300
local ACTION_HEIGHT = 56

local CONTEXT_MENU_HEADER_HEIGHT = 92
local CONTEXT_SIDE_PADDING = 24 -- context menu should keep 24 px away from bottom/right side of screen
local CONTEXT_PADDING_TOP = 24 -- context side padding
local CONTEXT_LEFT_PADDING = 20

function PlayerContextualMenuWrapper:render()
	return withLocalization({
		viewAvatar = "CoreScripts.InGameMenu.Actions.ViewAvatar",
		reportAbuse = "CoreScripts.InGameMenu.Actions.ReportAbuse",
		inviteFriend = "CoreScripts.InGameMenu.Action.InviteFriend",
		inviteSent = "CoreScripts.InGameMenu.Action.InviteSent",
		blockPlayer = "CoreScripts.InGameMenu.Actions.BlockPlayer",
		unblockPlayer = "CoreScripts.InGameMenu.Actions.UnblockPlayer",
		unfriend = "CoreScripts.InGameMenu.Actions.Unfriend",
		unmutePlayer = "CoreScripts.InGameMenu.Action.UnmutePlayer",
		mutePlayer = "CoreScripts.InGameMenu.Action.MutePlayer",
	})(function(localized)
		return self:renderWithLocalized(localized)
	end)
end

function PlayerContextualMenuWrapper:renderWithLocalized(localized)
	local moreMenuPositionYOffset = 0
	local moreMenuPositionXOffset = 0
	local maxMenuHeight = 0
	local anchorFromBottom = false
	local moreActions = {}
	if self.props.selectedPlayer ~= nil then
		moreActions = self:getMoreActions(localized)
		local actionMenuHeight = (math.min(7.5, #moreActions) * ACTION_HEIGHT) + CONTEXT_MENU_HEADER_HEIGHT
		local screenWidth = self.props.screenSize.X
		local screenHeight = self.props.screenSize.Y

		-- always keep 24 px distance from side of screen if viewport is too limited
		-- otherwise just postion to the right of all menu content with padding 20
		if
			self.props.selectedPlayerPosition.Y - ACTION_HEIGHT + actionMenuHeight + CONTEXT_PADDING_TOP < screenHeight
		then
			moreMenuPositionYOffset = math.max(0, self.props.selectedPlayerPosition.Y - ACTION_HEIGHT)
		else
			moreMenuPositionYOffset = 0
			maxMenuHeight = screenHeight - CONTEXT_MENU_HEADER_HEIGHT
			-- If menu doesn't fill the screen, anchor the menu from the bottom of the screen
			anchorFromBottom = actionMenuHeight + CONTEXT_PADDING_TOP < screenHeight
		end

		if
			screenWidth
			>= self.props.selectedPlayerPosition.X
				+ self.props.xOffset
				+ CONTEXT_LEFT_PADDING
				+ ACTION_WIDTH
				+ CONTEXT_SIDE_PADDING
		then
			moreMenuPositionXOffset = self.props.selectedPlayerPosition.X + self.props.xOffset + CONTEXT_LEFT_PADDING
		else
			moreMenuPositionXOffset = screenWidth - ACTION_WIDTH - CONTEXT_SIDE_PADDING
		end
	end

	local canCaptureFocus = self.props.isGamepadLastInput
		and not self.props.isRespawnDialogOpen
		and self.props.isCurrentZoneActive

	local moreActionsMenuPanel = self.props.selectedPlayer
			and Roact.createElement(PlayerContextualMenu, {
				moreActions = moreActions,
				actionWidth = ACTION_WIDTH,
				maxHeight = maxMenuHeight,
				anchorFromBottom = anchorFromBottom,
				xOffset = moreMenuPositionXOffset,
				yOffset = moreMenuPositionYOffset,
				canCaptureFocus = canCaptureFocus,
				player = self.props.selectedPlayer,
				onClose = function()
					self.props.onActionComplete()
				end,
			})
		or nil

	return moreActionsMenuPanel
end

function PlayerContextualMenuWrapper:getMoreActions(localized)
	local player = self.props.selectedPlayer
	local isFriendsWithPlayer = self.props.playersService.LocalPlayer:IsFriendsWith(player.Id)

	local moreActions = {}
	if self.props.selectedPlayer ~= nil then
		local inviteAction = self:getInviteAction(localized, player, isFriendsWithPlayer)
		if inviteAction then
			table.insert(moreActions, inviteAction)
		end

		local viewAvatarAction = self:getViewAvatarAction(localized, player)
		if viewAvatarAction then
			table.insert(moreActions, viewAvatarAction)
		end

		local reportAction = self:getReportAction(localized, player)
		if reportAction then
			table.insert(moreActions, reportAction)
		end

		local mutePlayerAction = self:getMutePlayerAction(localized, player)
		if mutePlayerAction then
			table.insert(moreActions, mutePlayerAction)
		end

		local blockPlayerAction = self:getBlockPlayerAction(localized, player)
		if blockPlayerAction then
			table.insert(moreActions, blockPlayerAction)
		end

		local unfriendAction = self:getUnfriendAction(localized, player, isFriendsWithPlayer)
		if unfriendAction then
			table.insert(moreActions, unfriendAction)
		end
	end

	return moreActions
end

function PlayerContextualMenuWrapper:getInviteAction(localized, player, isFriendsWithPlayer)
	if not player then
		return nil
	end

	if not isFriendsWithPlayer then
		return nil
	end

	local userInviteStatus = self.props.invitesState[tostring(player.Id)]
	if userInviteStatus then
		-- todo: handle moderated and failed states

		if userInviteStatus == InviteStatus.Pending or userInviteStatus == InviteStatus.Success then
			return {
				text = localized.inviteSent,
				icon = Images["icons/status/success"],
				onActivated = function() end,
			}
		end
	else
		return {
			text = localized.inviteFriend,
			icon = Images["icons/actions/friends/friendInvite"],
			onActivated = function()
				local placeId = tostring(game.PlaceId)
				local userId = tostring(player.Id)
				if placeId then
					self.props.dispatchInviteUserToPlaceId(userId, placeId)
				end
			end,
		}
	end

	return nil
end

function PlayerContextualMenuWrapper:getViewAvatarAction(localized, player)
	return {
		text = localized.viewAvatar,
		icon = Assets.Images.ViewAvatar,
		onActivated = function()
			GuiService:InspectPlayerFromUserIdWithCtx(player.Id, "escapeMenu")
			self.props.closeMenu()
			self.props.onActionComplete()
			SendAnalytics(Constants.AnalyticsMenuActionName, Constants.AnalyticsExamineAvatarName, {})
		end,
	}
end

function PlayerContextualMenuWrapper:getReportAction(localized, player)
	local isLocalPlayer = player.Id == self.props.playersService.LocalPlayer.UserId
	if isLocalPlayer then
		return nil
	end

	return {
		text = localized.reportAbuse,
		icon = Images["icons/actions/feedback"],
		onActivated = function()
			-- todo: replace with new V3 T&S module integration
			self.props.dispatchOpenReportDialog(player.Id, player.Username)
			self.props.onActionComplete()
		end,
	}
end

function PlayerContextualMenuWrapper:getMutePlayerAction(localized, player)
	if self.props.voiceEnabled then
		local voiceParticipant = VoiceChatServiceManager.participants[tostring(player.Id)]
		if voiceParticipant then
			local isMuted = voiceParticipant.isMutedLocally
			return {
				text = isMuted and localized.unmutePlayer or localized.mutePlayer,
				icon = VoiceChatServiceManager:GetIcon(isMuted and "Unmute" or "Mute", "Misc"),
				onActivated = function()
					VoiceChatServiceManager:ToggleMutePlayer(player.Id)
					self.props.onActionComplete()
				end,
			}
		end
	end

	return nil
end

function PlayerContextualMenuWrapper:getBlockPlayerAction(localized, player)
	local isBlocked = self.props.blockingUtility:IsPlayerBlockedByUserId(player.Id)
	return {
		text = isBlocked and localized.unblockPlayer or localized.blockPlayer,
		icon = Images["icons/actions/block"],
		onActivated = function()
			-- todo: integrate with block api
			self.props.onActionComplete()
		end,
	}
end

function PlayerContextualMenuWrapper:getUnfriendAction(localized, player, isFriendsWithPlayer)
	if not isFriendsWithPlayer then
		return nil
	end

	return {
		text = localized.unfriend,
		icon = Images["icons/actions/friends/friendRemove"],
		onActivated = function()
			self.props.playersService.LocalPlayer:RevokeFriendship(player)

			-- todo: add analytics
		end,
	}
end

return RoactRodux.connect(function(state, props)
	return {
		invitesState = state.invites,
		voiceEnabled = state.voiceState.voiceEnabled,
		screenSize = state.screenSize,
		isRespawnDialogOpen = state.respawn.dialogOpen,
		isGamepadLastInput = state.displayOptions.inputType == Constants.InputType.Gamepad,
		isCurrentZoneActive = state.currentZone == 1,
	}
end, function(dispatch)
	return {
		closeMenu = function()
			dispatch(CloseMenu)
		end,
		dispatchInviteUserToPlaceId = function(userId, placeId)
			dispatch(InviteUserToPlaceId(userId, placeId))
		end,
		dispatchOpenReportDialog = function(userId, userName)
			dispatch(OpenReportDialog(userId, userName))
		end,
	}
end)(PlayerContextualMenuWrapper)
