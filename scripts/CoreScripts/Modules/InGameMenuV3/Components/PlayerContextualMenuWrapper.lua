--!nonstrict
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local playerInterface = require(RobloxGui.Modules.Interfaces.playerInterface)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceConstants = require(RobloxGui.Modules.InGameChat.BubbleChat.Constants)
local useVoiceState = require(RobloxGui.Modules.VoiceChat.Hooks.useVoiceState)
local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)
local BlockPlayer = require(RobloxGui.Modules.PlayerList.Thunks.BlockPlayer)
local UnblockPlayer = require(RobloxGui.Modules.PlayerList.Thunks.UnblockPlayer)
local TrustAndSafety = require(RobloxGui.Modules.TrustAndSafety)
local RoactAppExperiment = require(CorePackages.Packages.RoactAppExperiment)

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
local ExperienceMenuABTestManager = require(InGameMenu.ExperienceMenuABTestManager)

local SetFriendBlockConfirmation = require(InGameMenu.Actions.SetFriendBlockConfirmation)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SetInspectedUserInfo = require(InGameMenu.Actions.InspectAndBuy.SetInspectedUserInfo)
local FriendRequestStatus = require(InGameMenu.Utility.FriendRequestStatus)

local InviteStatus = Constants.InviteStatus
local IsMenuCsatEnabled = require(InGameMenu.Flags.IsMenuCsatEnabled)

local InspectAndBuyV2IXPTest = require(InGameMenu.Flags.InspectAndBuyV2IXPTest)

local PlayerContextualMenuWrapper = Roact.PureComponent:extend("PlayerContextualMenuWrapper")

PlayerContextualMenuWrapper.validateProps = t.strictInterface({
	xOffset = t.optional(t.number),
	selectedPlayer = t.optional(playerInterface),
	selectedPlayerPosition = t.optional(t.Vector2),
	blockingUtility = t.union(t.Instance, t.table),
	playersService = t.union(t.Instance, t.table),
	onActionComplete = t.optional(t.callback),
	invitesState = t.table,
	voiceState = t.optional(t.string),
	canCaptureFocus = t.optional(t.boolean),
	screenSize = t.Vector2,
	dispatchInviteUserToPlaceId = t.callback,
	blockPlayer = t.callback,
	unblockPlayer = t.callback,
	openFriendBlockConfirmation = t.callback,
	openInspectAndBuyPage = InspectAndBuyV2IXPTest.isEnabled() and t.callback or nil,
	setInspectedUserInfo = InspectAndBuyV2IXPTest.isEnabled() and t.callback or nil,

	-- from RoactAppExperiment
	inspectAndBuyV2Enabled = InspectAndBuyV2IXPTest.isEnabled() and t.boolean or nil,
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

function PlayerVoiceState(props)
	local voiceState = useVoiceState(props.userId)
	return props.render(voiceState)
end

function withPlayerVoiceState(userId, render)
	return Roact.createElement(PlayerVoiceState, {
		userId = userId,
		render = render,
	})
end

function PlayerContextualMenuWrapper:init()
	self:setState({
		isBlocked = false,
	})

	FriendRequestStatus.connect(function()
		self:setState({FriendRequestStatus = {}})
	end)
end

function PlayerContextualMenuWrapper.getDerivedStateFromProps(nextProps, lastState)
	local selectedPlayer = nextProps.selectedPlayer
	if selectedPlayer ~= nil then
		local userId = selectedPlayer.UserId
		-- block player
		local isBlocked = nextProps.blockingUtility:IsPlayerBlockedByUserId(userId)
		return {
			isBlocked = isBlocked,
		}
	else
		return {
			isBlocked = false,
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
		reportAbuse = "CoreScripts.InGameMenu.PageTitle.Report",
		inviteFriend = "CoreScripts.InGameMenu.Action.InviteFriend",
		inviteSent = "CoreScripts.InGameMenu.Action.InviteSent",
		blockPlayer = "CoreScripts.InGameMenu.Actions.BlockPlayer",
		unblockPlayer = "CoreScripts.InGameMenu.Actions.UnblockPlayer",
		unfriend = "CoreScripts.InGameMenu.Actions.Unfriend",
		unmutePlayer = "CoreScripts.InGameMenu.Action.UnmutePlayer",
		mutePlayer = "CoreScripts.InGameMenu.Action.MutePlayer",
		pendingFriendRequest = "CoreScripts.InGameMenu.Action.PendingFriendRequest",
		accept = "CoreScripts.InGameMenu.Action.Accept",
		muteSelf = "CoreScripts.InGameMenu.QuickActions.MuteSelf",
		unmuteSelf = "CoreScripts.InGameMenu.QuickActions.UnmuteSelf",
	})(function(localized)
		local player = self.props.selectedPlayer
		local userId = player and player.UserId or 0
		return withPlayerVoiceState(userId, function(voiceState)
			return self:renderWithLocalized(localized, voiceState)
		end)
	end)
end

function PlayerContextualMenuWrapper:renderWithLocalized(localized, voiceState)
	local moreMenuPositionYOffset = 0
	local moreMenuPositionXOffset = 0
	local maxMenuHeight = 0
	local anchorFromBottom = false
	local moreActions = {}
	local isFriendsWithPlayer = false
	if self.props.selectedPlayer ~= nil then
		local player = self.props.selectedPlayer
		pcall(function()
			isFriendsWithPlayer = self.props.playersService.LocalPlayer:IsFriendsWith(player.UserId)
		end)
		local friendRequesting = FriendRequestStatus.requestingStatus(player)
		if friendRequesting then
			if friendRequesting >= FriendRequestStatus.Enum.REVOKE_ACTION then
				isFriendsWithPlayer = false
			elseif friendRequesting == FriendRequestStatus.Enum.ACCEPT_FRIEND then
				isFriendsWithPlayer = true
			end
		end

		moreActions = self:getMoreActions(localized, player, isFriendsWithPlayer, voiceState)
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

	local moreActionsMenuPanel = self.props.selectedPlayer
		and Roact.createElement(PlayerContextualMenu, {
			moreActions = moreActions,
			actionWidth = ACTION_WIDTH,
			maxHeight = maxMenuHeight,
			anchorFromBottom = anchorFromBottom,
			xOffset = moreMenuPositionXOffset,
			yOffset = moreMenuPositionYOffset,
			canCaptureFocus = self.props.canCaptureFocus,
			player = self.props.selectedPlayer,
			isFriend = isFriendsWithPlayer,
			onClose = function()
				self.props.onActionComplete(true)
			end,
		})
		or nil

	return moreActionsMenuPanel
end

function PlayerContextualMenuWrapper:getMoreActions(localized, player, isFriendsWithPlayer, voiceState)
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

		local mutePlayerAction = self:getMutePlayerAction(localized, player, voiceState)
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
				if IsMenuCsatEnabled() then
					ExperienceMenuABTestManager.default:setCSATQualification()
				end

				local placeId = tostring(game.PlaceId)
				local userId = tostring(player.UserId)
				if placeId then
					self.props.dispatchInviteUserToPlaceId(userId, placeId)

					SendAnalytics(Constants.AnalyticsMenuActionName, Constants.AnalyticsInvitePlayerToPlaceId, {
						placeId = placeId,
						source = Constants.AnalyticsPlayerContextMenuSource,
					})
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
	local requestingStatus = FriendRequestStatus.requestingStatus(player)
	if requestingStatus == FriendRequestStatus.Enum.REQUEST_FRIEND then
		friendStatus = Enum.FriendStatus.FriendRequestSent
	elseif requestingStatus == FriendRequestStatus.Enum.ACCEPT_FRIEND then
		friendStatus = Enum.FriendStatus.Friend
	elseif requestingStatus == FriendRequestStatus.Enum.REJECT_FRIEND then
		friendStatus = Enum.FriendStatus.NotFriend
	elseif requestingStatus == FriendRequestStatus.Enum.UNFRIEND then
		friendStatus = Enum.FriendStatus.NotFriend
	end

	if friendStatus == Enum.FriendStatus.Unknown or friendStatus == Enum.FriendStatus.NotFriend then
		return {
			text = localized.addFriend,
			icon = Images["icons/actions/friends/friendAdd"],
			onActivated = function()
				FriendRequestStatus.issueFriendRequest(player, Constants.AnalyticsPlayerContextMenuSource)
				if IsMenuCsatEnabled() then
					ExperienceMenuABTestManager.default:setCSATQualification()
				end
			end,
		}
	elseif friendStatus == Enum.FriendStatus.FriendRequestSent then
		return {
			text = localized.pendingFriendRequest,
			icon = Images["icons/actions/friends/friendpending"],
			onActivated = function()
				-- cancel request if there's a pending friend request
				FriendRequestStatus.cancelFriendRequest(player, Constants.AnalyticsPlayerContextMenuSource)
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
										FriendRequestStatus.rejectFriendRequest(player)
										self:setState({
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
										FriendRequestStatus.acceptFriendRequest(player)
										self:setState({
											selectedPlayer = Roact.None,
										})
										if IsMenuCsatEnabled() then
											ExperienceMenuABTestManager.default:setCSATQualification()
										end
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
			if self.props.inspectAndBuyV2Enabled then
				self.props.setInspectedUserInfo(player.UserId, player.DisplayName)
				self.props.openInspectAndBuyPage()
			else
				GuiService:InspectPlayerFromUserIdWithCtx(player.UserId, "escapeMenu")
			end
			SendAnalytics(Constants.AnalyticsMenuActionName, Constants.AnalyticsExamineAvatarName, {})
		end,
	}
end

function PlayerContextualMenuWrapper:getReportAction(localized, player)
	local isLocalPlayer = player.UserId == self.props.playersService.LocalPlayer.UserId
	local notPlayerObj = not t.instanceIsA("Player")(player)
	if isLocalPlayer or notPlayerObj then
		return nil
	end

	return {
		text = localized.reportAbuse,
		icon = Images["icons/actions/feedback"],
		onActivated = function()
			TrustAndSafety.openReportDialogForPlayer(player, Constants.AnalyticsPlayerContextMenuSource)
			self.props.onActionComplete(true)

			SendAnalytics(
				Constants.AnalyticsMenuActionName,
				Constants.AnalyticsReportAbuse,
				{ source = Constants.AnalyticsPlayerContextMenuSource }
			)
		end,
	}
end

function PlayerContextualMenuWrapper:getMutePlayerAction(localized, player, voiceState)
	local isPlayerInstanceType = typeof(player) == "Instance" and player:IsA("Player")
	if not isPlayerInstanceType then
		return nil
	end

	if player.Parent ~= Players or Players.LocalPlayer.Parent ~= Players then
		return nil
	end

	if voiceState == VoiceConstants.VOICE_STATE.HIDDEN then
		return nil
	end

	local voiceParticipant = VoiceChatServiceManager.participants[tostring(player.UserId)]
	local isLocalPlayer = player.UserId == Players.LocalPlayer.UserId
	if isLocalPlayer then
		local isMuted = self.props.voiceState == VoiceConstants.VOICE_STATE.MUTED
			or self.props.voiceState == VoiceConstants.VOICE_STATE.LOCAL_MUTED
		return {
			text = isMuted and localized.unmuteSelf or localized.muteSelf,
			icon = VoiceChatServiceManager:GetIcon(isMuted and "Mute" or "Unmute", "Misc"),
			onActivated = function()
				VoiceChatServiceManager:ToggleMic()
				SendAnalytics(
					Constants.AnalyticsMenuActionName,
					isMuted and Constants.AnalyticsUnmuteSelf or Constants.AnalyticsMuteSelf,
					{ source = Constants.AnalyticsPlayerContextMenuSource }
				)
				self.props.onActionComplete(false)
			end,
		}
	elseif voiceParticipant then
		local isMuted = voiceParticipant.isMutedLocally
		return {
			text = isMuted and localized.unmutePlayer or localized.mutePlayer,
			icon = VoiceChatServiceManager:GetIcon(isMuted and "Muted" or "Unmuted0", "SpeakerLight"),
			onActivated = function()
				VoiceChatServiceManager:ToggleMutePlayer(player.UserId)
				SendAnalytics(
					Constants.AnalyticsMenuActionName,
					isMuted and Constants.AnalyticsUnmutePlayer or Constants.AnalyticsMutePlayer,
					{ source = Constants.AnalyticsPlayerContextMenuSource }
				)
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

				SendAnalytics(Constants.AnalyticsMenuActionName, Constants.AnalyticsUnblockPlayer, {})
			else
				if isFriendsWithPlayer then
					self.props.openFriendBlockConfirmation(player)
				else
					self.props.blockPlayer(player)
					self:updateDerivedState()
					self.props.onActionComplete(false)

					SendAnalytics(Constants.AnalyticsMenuActionName, Constants.AnalyticsBlockPlayer, {})
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
			FriendRequestStatus.requestUnfriend(player)
			if self.props.setFriendStatus then
				self.props.setFriendStatus(player.UserId, nil)
			end
		end,
	}
end

if InspectAndBuyV2IXPTest.isEnabled() then
	PlayerContextualMenuWrapper = RoactAppExperiment.connectUserLayer({
		InspectAndBuyV2IXPTest.layer,
	}, function(layerVariables, props)
		return {
			inspectAndBuyV2Enabled = InspectAndBuyV2IXPTest.isUserEnrolled(layerVariables),
		}
	end)(PlayerContextualMenuWrapper)
end

return RoactRodux.connect(function(state, props)
	local canCaptureFocus = state.displayOptions.inputType == Constants.InputType.Gamepad
		and not state.respawn.dialogOpen
		and state.currentZone == 1

	return {
		invitesState = state.invites,
		screenSize = state.screenSize,
		canCaptureFocus = canCaptureFocus,
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
		openInspectAndBuyPage = InspectAndBuyV2IXPTest.isEnabled() and function()
			return dispatch(SetCurrentPage(Constants.InspectAndBuyPageKey))
		end or nil,
		setInspectedUserInfo = InspectAndBuyV2IXPTest.isEnabled() and function(userId, displayName)
			return dispatch(SetInspectedUserInfo(userId, displayName))
		end or nil,
	}
end)(PlayerContextualMenuWrapper)
