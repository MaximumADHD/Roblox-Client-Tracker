local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local AnalyticsService = game:GetService("RbxAnalyticsService")

local playerInterface = require(RobloxGui.Modules.Interfaces.playerInterface)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)
local BlockPlayer = require(RobloxGui.Modules.PlayerList.Thunks.BlockPlayer)
local UnblockPlayer = require(RobloxGui.Modules.PlayerList.Thunks.UnblockPlayer)
local TrustAndSafety = require(RobloxGui.Modules.TrustAndSafety)

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local UIBlox = InGameMenuDependencies.UIBlox
local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Images = UIBlox.App.ImageSet.Images

local InGameMenu = script.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)
local Assets = require(InGameMenu.Resources.Assets)
local Constants = require(InGameMenu.Resources.Constants)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local PlayerContextualMenu = require(InGameMenu.Components.PlayerContextualMenu)
local InviteUserToPlaceId = require(InGameMenu.Thunks.InviteUserToPlaceId)

local SetFriendBlockConfirmation = require(InGameMenu.Actions.SetFriendBlockConfirmation)

local InviteStatus = Constants.InviteStatus

local PlayerContextualMenuWrapper = Roact.PureComponent:extend("PlayerContextualMenuWrapper")

PlayerContextualMenuWrapper.validateProps = t.strictInterface({
	xOffset = t.optional(t.number),
	selectedPlayer = t.optional(playerInterface),
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
	dispatchInviteUserToPlaceId = t.callback,
	blockPlayer = t.callback,
	unblockPlayer = t.callback,
	openFriendBlockConfirmation = t.callback,
})

PlayerContextualMenuWrapper.defaultProps = {
	blockingUtility = BlockingUtility,
	playersService = Players,
	screenSize = Vector2.new(0, 0),
	selectedPlayer = nil,
	selectedPlayerPosition = Vector2.new(0, 0),
	onActionComplete = function(shouldClose) end,
}

local ACTION_WIDTH = 300
local ACTION_HEIGHT = 56

local CONTEXT_MENU_HEADER_HEIGHT = 92
local CONTEXT_SIDE_PADDING = 24 -- context menu should keep 24 px away from bottom/right side of screen
local CONTEXT_PADDING_TOP = 24 -- context side padding
local CONTEXT_LEFT_PADDING = 20
local CONTEXT_MENU_BUTTON_CONTAINER_WIDTH = 118
local CONTEXT_MENU_BUTTON_CONTAINER_HEIGHT = 36
local CONTEXT_MENU_BUTTON_WIDTH = 47

function PlayerContextualMenuWrapper:init()
	self:setState({
		isBlocked = false,
		canToggleMute = false,
		isMuted = false,
	})
end

function PlayerContextualMenuWrapper.getDerivedStateFromProps(nextProps, lastState)
	local selectedPlayer = nextProps.selectedPlayer
	if selectedPlayer ~= nil then
		local userId = selectedPlayer.UserId
		-- block player
		local isBlocked = nextProps.blockingUtility:IsPlayerBlockedByUserId(userId)
		-- mute voice chat
		local canToggleMute = false
		local isMuted = false
		if nextProps.voiceEnabled then
			local voiceParticipant = VoiceChatServiceManager.participants[tostring(userId)]
			if voiceParticipant then
				canToggleMute = true
				isMuted = voiceParticipant.isMutedLocally
			end
		end
		return {
			isBlocked = isBlocked,
			canToggleMute = canToggleMute,
			isMuted = isMuted,
		}
	else
		return {
			isBlocked = false,
			canToggleMute = false,
			isMuted = false,
		}
	end
end

function PlayerContextualMenuWrapper:updateDerivedState()
	self:setState(self.getDerivedStateFromProps(self.props, self.state))
end

function PlayerContextualMenuWrapper:render()
	return withLocalization({
		addFriend = "CoreScripts.InGameMenu.Actions.AddFriend",
		viewAvatar = "CoreScripts.InGameMenu.Actions.ViewAvatar",
		reportAbuse = "CoreScripts.InGameMenu.Actions.ReportAbuse",
		inviteFriend = "CoreScripts.InGameMenu.Action.InviteFriend",
		inviteSent = "CoreScripts.InGameMenu.Action.InviteSent",
		blockPlayer = "CoreScripts.InGameMenu.Actions.BlockPlayer",
		unblockPlayer = "CoreScripts.InGameMenu.Actions.UnblockPlayer",
		unfriend = "CoreScripts.InGameMenu.Actions.Unfriend",
		unmutePlayer = "CoreScripts.InGameMenu.Action.UnmutePlayer",
		mutePlayer = "CoreScripts.InGameMenu.Action.MutePlayer",
		pendingFriendRequest = "CoreScripts.InGameMenu.Action.PendingFriendRequest",
		accept = "CoreScripts.InGameMenu.Action.Accept",
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
	local isFriendsWithPlayer = false
	if self.props.selectedPlayer ~= nil then
		local player = self.props.selectedPlayer
		isFriendsWithPlayer = self.props.playersService.LocalPlayer:IsFriendsWith(player.UserId)
		moreActions = self:getMoreActions(localized, player, isFriendsWithPlayer)
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
				isFriend = isFriendsWithPlayer,
				onClose = function()
					self.props.onActionComplete(true)
				end,
			})
		or nil

	return moreActionsMenuPanel
end

function PlayerContextualMenuWrapper:getMoreActions(localized, player, isFriendsWithPlayer)
	local moreActions = {}
	if self.props.selectedPlayer ~= nil then
		local inviteAction = self:getInviteAction(localized, player, isFriendsWithPlayer)
		if inviteAction then
			table.insert(moreActions, inviteAction)
		end

		local friendAction = self:getFriendAction(localized, player)
		if friendAction then
			table.insert(moreActions, friendAction)
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

		local blockPlayerAction = self:getBlockPlayerAction(localized, player, isFriendsWithPlayer)
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
	local isPlayerInstanceType = typeof(player) == "Instance" and player:IsA("Player")
	if isPlayerInstanceType then
		return nil
	end

	if not player then
		return nil
	end

	if not isFriendsWithPlayer then
		return nil
	end

	local userInviteStatus = self.props.invitesState[tostring(player.UserId)]
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
				local userId = tostring(player.UserId)
				if placeId then
					self.props.dispatchInviteUserToPlaceId(userId, placeId)
				end
			end,
		}
	end

	return nil
end

function PlayerContextualMenuWrapper:getFriendAction(localized, player)
	local isPlayerInstanceType = typeof(player) == "Instance" and player:IsA("Player")
	if not isPlayerInstanceType then
		return nil
	end

	-- check if player is same as local player
	if player.UserId == Players.LocalPlayer.UserId then
		return nil
	end

	-- check if player is blocked
	if self.state.isBlocked then
		return nil
	end

	if player.Parent ~= Players or Players.LocalPlayer.Parent ~= Players then
		return nil
	end

	-- if we're not friends yet, we can either send a friend request
	local friendStatus = self.props.playersService.LocalPlayer:GetFriendStatus(player)
	if friendStatus == Enum.FriendStatus.Unknown or friendStatus == Enum.FriendStatus.NotFriend then
		return {
			text = localized.addFriend,
			icon = Images["icons/actions/friends/friendAdd"],
			onActivated = function()
				self.props.playersService.LocalPlayer:RequestFriendship(player)

				-- send analytic events
				AnalyticsService:ReportCounter("PlayersMenu-RequestFriendship")
				SendAnalytics(Constants.AnalyticsMenuActionName, Constants.AnalyticsRequestFriendName, {})
			end,
		}
	elseif friendStatus == Enum.FriendStatus.FriendRequestSent then
		return {
			text = localized.pendingFriendRequest,
			icon = Images["icons/actions/friends/friendpending"],
			onActivated = function()
				-- cancel request if there's a pending friend request
				self.props.playersService.LocalPlayer:RevokeFriendship(player)

				-- todo: send analytics counter and event
			end,
		}
	elseif friendStatus == Enum.FriendStatus.FriendRequestReceived then
		return {
			text = localized.accept,
			icon = Images["icons/actions/friends/friendpending"],
			onActivated = function() end,
			renderRightSideGadget = function()
				return {
					ButtonStack = Roact.createElement(ButtonStack, {
						buttons = {
							{
								buttonType = ButtonType.Secondary,
								props = {
									icon = Images["icons/actions/reject"],
									size = UDim2.fromOffset(
										CONTEXT_MENU_BUTTON_WIDTH,
										CONTEXT_MENU_BUTTON_CONTAINER_HEIGHT
									),
									onActivated = function()
										self.props.playersService.LocalPlayer:RevokeFriendship(player)
										self.setState({
											selectedPlayer = Roact.None,
										})
									end,
									layoutOrder = 1,
								},
							},
							{
								buttonType = ButtonType.PrimarySystem,
								props = {
									icon = Images["icons/actions/friends/friendAdd"],
									size = UDim2.fromOffset(
										CONTEXT_MENU_BUTTON_WIDTH,
										CONTEXT_MENU_BUTTON_CONTAINER_HEIGHT
									),
									onActivated = function()
										self.props.playersService.LocalPlayer:RequestFriendship(player)
										self.setState({
											selectedPlayer = Roact.None,
										})
									end,
									layoutOrder = 2,
								},
							},
						},
						buttonHeight = CONTEXT_MENU_BUTTON_CONTAINER_HEIGHT,
						forcedFillDirection = Enum.FillDirection.Horizontal,
						marginBetween = 8,
					}),
				}
			end,
			rightSideGadgetSize = Vector2.new(
				CONTEXT_MENU_BUTTON_CONTAINER_WIDTH,
				CONTEXT_MENU_BUTTON_CONTAINER_HEIGHT
			),
		}

	else
		return nil
	end
end

function PlayerContextualMenuWrapper:getViewAvatarAction(localized, player)
	return {
		text = localized.viewAvatar,
		icon = Assets.Images.ViewAvatar,
		onActivated = function()
			GuiService:InspectPlayerFromUserIdWithCtx(player.UserId, "escapeMenu")
			SendAnalytics(Constants.AnalyticsMenuActionName, Constants.AnalyticsExamineAvatarName, {})
		end,
	}
end

function PlayerContextualMenuWrapper:getReportAction(localized, player)
	local isLocalPlayer = player.UserId == self.props.playersService.LocalPlayer.UserId
	if isLocalPlayer then
		return nil
	end

	return {
		text = localized.reportAbuse,
		icon = Images["icons/actions/feedback"],
		onActivated = function()
			TrustAndSafety.openReportDialogForPlayer(player)
			self.props.onActionComplete(true)
		end,
	}
end

function PlayerContextualMenuWrapper:getMutePlayerAction(localized, player)
	local isPlayerInstanceType = typeof(player) == "Instance" and player:IsA("Player")
	if not isPlayerInstanceType then
		return nil
	end

	if player.Parent ~= Players or Players.LocalPlayer.Parent ~= Players then
		return nil
	end

	if self.state.canToggleMute then
		return {
			text = self.state.isMuted and localized.unmutePlayer or localized.mutePlayer,
			icon = VoiceChatServiceManager:GetIcon(self.state.isMuted and "Unmute" or "Mute", "Misc"),
			onActivated = function()
				VoiceChatServiceManager:ToggleMutePlayer(player.UserId)
				self:updateDerivedState()
				self.props.onActionComplete(false)
			end,
		}
	end

	return nil
end

function PlayerContextualMenuWrapper:getBlockPlayerAction(localized, player, isFriendsWithPlayer)
	local isPlayerInstanceType = typeof(player) == "Instance" and player:IsA("Player")
	if not isPlayerInstanceType then
		return nil
	end

	local isLocalPlayer = player.UserId == self.props.playersService.LocalPlayer.UserId
	if isLocalPlayer then
		return nil
	end

	local isBlocked = self.state.isBlocked
	return {
		text = isBlocked and localized.unblockPlayer or localized.blockPlayer,
		icon = Images["icons/actions/block"],
		onActivated = function()
			if isBlocked then
				self.props.unblockPlayer(player)
				self:updateDerivedState()
				self.props.onActionComplete(false)
			else
				if isFriendsWithPlayer then
					self.props.openFriendBlockConfirmation(player)
				else
					self.props.blockPlayer(player)
					self:updateDerivedState()
					self.props.onActionComplete(false)
				end
			end
		end,
	}
end

function PlayerContextualMenuWrapper:getUnfriendAction(localized, player, isFriendsWithPlayer)
	local isPlayerInstanceType = typeof(player) == "Instance" and player:IsA("Player")
	if not isPlayerInstanceType then
		return nil
	end

	if not isFriendsWithPlayer then
		return nil
	end

	if player.Parent ~= Players or Players.LocalPlayer.Parent ~= Players then
		return nil
	end

	return {
		text = localized.unfriend,
		icon = Images["icons/actions/friends/friendRemove"],
		onActivated = function()
			-- todo: use non - players service API
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
		openFriendBlockConfirmation = function(friend)
			dispatch(SetFriendBlockConfirmation(true, friend))
		end,
		dispatchInviteUserToPlaceId = function(userId, placeId)
			dispatch(InviteUserToPlaceId(userId, placeId))
		end,
		blockPlayer = function(player)
			return dispatch(BlockPlayer(player))
		end,
		unblockPlayer = function(player)
			return dispatch(UnblockPlayer(player))
		end,
	}
end)(PlayerContextualMenuWrapper)
