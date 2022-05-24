local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind

local withStyle = UIBlox.Core.Style.withStyle
local IconButton = UIBlox.App.Button.IconButton
local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Images = UIBlox.App.ImageSet.Images
local getIconSize = UIBlox.App.ImageSet.getIconSize

local InGameMenu = script.Parent.Parent.Parent

local withLocalization = require(InGameMenu.Localization.withLocalization)

local FocusHandler = require(script.Parent.Parent.Connection.FocusHandler)
local VoiceIndicator = require(RobloxGui.Modules.VoiceChat.Components.VoiceIndicator)
local playerInterface = require(RobloxGui.Modules.Interfaces.playerInterface)

local PlayerCell = require(InGameMenu.Components.PlayerCell)
local PlayerContextualMenu = require(InGameMenu.Components.PlayerContextualMenu)
local CoPlayInviteCell = require(InGameMenu.Components.CoPlayInviteCell)

local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local Divider = require(InGameMenu.Components.Divider)

local BarOnTopScrollingFrame = require(InGameMenu.Components.BarOnTopScrollingFrame)
local Page = require(InGameMenu.Components.Page)
local PageUtils = require(InGameMenu.Components.Pages.PageUtils)

local OpenReportDialog = require(InGameMenu.Actions.OpenReportDialog)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)

local Assets = require(InGameMenu.Resources.Assets)

local Constants = require(InGameMenu.Resources.Constants)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)
local BlockPlayer = require(RobloxGui.Modules.PlayerList.Thunks.BlockPlayer)
local UnblockPlayer = require(RobloxGui.Modules.PlayerList.Thunks.UnblockPlayer)

local log = require(RobloxGui.Modules.Logger):new(script.Name)

local DIVIDER_INDENT = 104
local PLAYER_LABEL_HEIGHT = 71
local PLAYER_LABEL_WIDTH = Constants.PageWidth

local ACTION_WIDTH = 300
local ACTION_HEIGHT = 56
local CONTEXT_MENU_HEADER_HEIGHT = 92

local CONTEXT_SIDE_PADDING = 24 -- context menu should keep 24 px away from bottom/right side of screen
local CONTEXT_PADDING_TOP = 24 -- context side padding
-- context menu is 20 px away from right bound of player list if there are available space
local CONTEXT_LEFT_PADDING = 20
local CONTEXT_MENU_BUTTON_CONTAINER_WIDTH = 118
local CONTEXT_MENU_BUTTON_CONTAINER_HEIGHT = 36
local CONTEXT_MENU_BUTTON_WIDTH = 47

local ICON_SIZE = getIconSize(UIBlox.App.ImageSet.Enum.IconSize.Medium)

local PlayersPage = Roact.PureComponent:extend("PlayersPage")

PlayersPage.validateProps = t.strictInterface({
	players = t.array(playerInterface),
	isMenuOpen = t.boolean,
	voiceEnabled = t.optional(t.boolean),
	inspectMenuEnabled = t.boolean,
	inviteFriends = t.array(t.strictInterface({
		IsOnline = t.boolean,
		Id = t.integer,
		Username = t.string,
		Displayname = t.string,
	})),
	incomingFriendRequests = t.array(playerInterface),
	dispatchOpenReportDialog = t.callback,
	closeMenu = t.callback,
	blockPlayer = t.callback,
	unblockPlayer = t.callback,
	openInviteFriendsPage = t.callback,
	pageTitle = t.string,
	screenSize = t.Vector2,
	currentPage = t.optional(t.string),
	isRespawnDialogOpen = t.optional(t.boolean),
	isReportDialogOpen = t.optional(t.boolean),
	isGamepadLastInput = t.optional(t.boolean),
	isCurrentZoneActive = t.optional(t.boolean),
	blockingUtility = t.union(t.Instance, t.table),
	playersService = t.union(t.Instance, t.table),
})

PlayersPage.defaultProps = {
	players = {},
	inviteFriends = {},
	incomingFriendRequests = {},
	blockingUtility = BlockingUtility,
	playersService = Players,
}

function PlayersPage:init()
	self:setState({
		selectedPlayer = nil,
		selectedPlayerPosition = Vector2.new(0, 0),
		voiceChatEnabled = false,
		allMuted = false,
		selectedPlayerRef = nil,
		firstPlayerRef = nil,
	})

	self.setSelectedPlayerRef = function(rbx)
		self:setState({
			selectedPlayerRef = rbx,
		})
	end

	self.setFirstPlayerRef = function(rbx)
		self:setState({
			firstPlayerRef = rbx,
		})
	end

	self.positionChanged = function(rbx)
		self:setState({
			selectedPlayerPosition = rbx.AbsolutePosition,
		})
	end

	self.toggleMoreActions = function(userId)
		local player = self.props.playersService:GetPlayerByUserId(userId)

		if player ~= nil and self.state.selectedPlayer == player then
			self:setState({
				selectedPlayer = Roact.None,
			})
		else
			self:setState({
				selectedPlayer = player or Roact.None,
			})
		end
	end

	PageUtils.initOnScrollDownState(self)
end

function PlayersPage:renderListEntries(style, localized, players)
	local layoutOrder = 0
	local listComponents = {}

	listComponents.ListLayout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
	})

	-- divider
	listComponents["divider_after_coplay_invite_cell"] = Roact.createElement("Frame", {
		LayoutOrder = layoutOrder,
		Size = UDim2.new(1, 0, 0, 4),
		BorderSizePixel = 0,
		BackgroundColor3 = style.Theme.BackgroundContrast.Color,
		BackgroundTransparency = style.Theme.BackgroundContrast.Transparency,
	})

	layoutOrder = layoutOrder + 1

	-- co-play invite cell
	listComponents["coplay_invite_cell"] = Roact.createElement(CoPlayInviteCell, {
		LayoutOrder = layoutOrder,
		onActivated = function()
			self.props.openInviteFriendsPage()
		end,
		friends = self.props.inviteFriends,
	})
	layoutOrder = layoutOrder + 1

	-- incoming friend request section
	if #self.props.incomingFriendRequests > 0 then
		listComponents["header_incoming_friend_requests"] = Roact.createElement("TextLabel", {
			BackgroundTransparency = style.Theme.BackgroundContrast.Transparency,
			BackgroundColor3 = style.Theme.BackgroundContrast.Color,
			BorderSizePixel = 0,
			Font = style.Font.Footer.Font,
			Text = localized.headerIncomingFriendRequests,
			TextColor3 = style.Theme.TextDefault.Color,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextTransparency = style.Theme.TextDefault.Transparency,
			TextSize = style.Font.BaseSize * style.Font.Footer.RelativeSize,
			Size = UDim2.new(1, 0, 0, 24),
			LayoutOrder = layoutOrder,
		}, {
			PaddingLeftadding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 6),
				PaddingBottom = UDim.new(0, 6),
				PaddingLeft = UDim.new(0, 24),
			}),
		})

		layoutOrder = layoutOrder + 1

		-- incoming friend request players
		for _, player in pairs(self.props.incomingFriendRequests) do
			local id = player.UserId
			listComponents["incoming_request_player_" .. id] = Roact.createElement(PlayerCell, {
				username = player.Name,
				displayName = player.DisplayName,
				userId = player.UserId,
				isOnline = true,
				isSelected = self.state.selectedPlayer == player,
				LayoutOrder = layoutOrder,

				onActivated = self.toggleMoreActions,

				[Roact.Change.AbsolutePosition] = self.state.selectedPlayer == player and self.positionChanged or nil,
				[Roact.Ref] = self.setSelectedPlayerRef,
			}, {
				Icon = Roact.createElement(IconButton, {
					size = UDim2.fromOffset(0, 0),
					icon = Images["icons/actions/friends/friendpending"],
					position = self.props.position,
					anchorPoint = Vector2.new(1, 0.5),
					layoutOrder = self.props.layoutOrder,
					onActivated = self.toggleMoreActions,
				}),
			})

			layoutOrder = layoutOrder + 1
		end
	end

	-- players header section
	listComponents["header_player"] = Roact.createElement("TextLabel", {
		BackgroundTransparency = style.Theme.BackgroundContrast.Transparency,
		BackgroundColor3 = style.Theme.BackgroundContrast.Color,
		BorderSizePixel = 0,
		Font = style.Font.Footer.Font,
		Text = localized.headerPlayers,
		TextColor3 = style.Theme.TextDefault.Color,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTransparency = style.Theme.TextDefault.Transparency,
		TextSize = style.Font.BaseSize * style.Font.Footer.RelativeSize,
		Size = UDim2.new(1, 0, 0, 24),
		LayoutOrder = layoutOrder,
	}, {
		PaddingLeftadding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 6),
			PaddingBottom = UDim.new(0, 6),
			PaddingLeft = UDim.new(0, 24),
		}),
	})

	layoutOrder = layoutOrder + 1

	for index, player in pairs(players) do
		local id = player.UserId
		local RoactRef
		if index == 1 and not self.state.selectedPlayer then
			RoactRef = self.setFirstPlayerRef
		elseif self.state.selectedPlayer == player then
			RoactRef = self.setSelectedPlayerRef
		end

		local iconStyle = player ~= self.props.playersService.LocalPlayer and "SpeakerLight" or "MicLight"

		listComponents["player_" .. id] = Roact.createElement(PlayerCell, {
			username = player.Name,
			displayName = player.DisplayName,
			userId = player.UserId,
			isOnline = true,
			isSelected = self.state.selectedPlayer == player,
			LayoutOrder = layoutOrder,

			onActivated = self.toggleMoreActions,

			[Roact.Change.AbsolutePosition] = self.state.selectedPlayer == player and self.positionChanged or nil,
			[Roact.Ref] = RoactRef,
		}, {
			Icon = self.props.voiceEnabled and player ~= self.props.playersService.LocalPlayer and Roact.createElement(
				VoiceIndicator,
				{
					userId = tostring(player.UserId),
					hideOnError = true,
					iconStyle = iconStyle,
					onClicked = self.toggleMoreActions,
				}
			),
		})

		layoutOrder = layoutOrder + 1

		if index < #players then
			listComponents["divider_" .. id] = Roact.createElement(Divider, {
				LayoutOrder = layoutOrder,
				Size = UDim2.new(1, -DIVIDER_INDENT, 0, 1),
			})

			layoutOrder = layoutOrder + 1
		end
	end

	return listComponents
end

function PlayersPage:getMoreActions(localized)
	-- determine friend status
	local player = self.state.selectedPlayer
	local friendStatus = self.props.playersService.LocalPlayer:GetFriendStatus(player)

	local moreActions = {}
	if self.state.selectedPlayer ~= nil then
		if self.state.selectedPlayer ~= self.props.playersService.LocalPlayer then
			-- get friend actions based on friend status
			local friendAction = self:getFriendAction(localized, friendStatus)
			if friendAction then
				table.insert(moreActions, friendAction)
			end
		end

		table.insert(moreActions, {
			text = localized.viewAvatar,
			icon = Assets.Images.ViewAvatar,
			onActivated = function()
				GuiService:InspectPlayerFromUserIdWithCtx(self.state.selectedPlayer.UserId, "escapeMenu")
				self:setState({
					selectedPlayer = Roact.None,
				})
				self.props.closeMenu()
				SendAnalytics(Constants.AnalyticsMenuActionName, Constants.AnalyticsExamineAvatarName, {})
			end,
		})

		if self.state.selectedPlayer ~= self.props.playersService.LocalPlayer then
			table.insert(moreActions, {
				text = localized.reportAbuse,
				icon = Images["icons/actions/feedback"],
				onActivated = function()
					local player = self.state.selectedPlayer
					self.props.dispatchOpenReportDialog(player.UserId, player.Name)
					self:setState({
						selectedPlayer = Roact.None,
					})
				end,
			})
			if self.props.voiceEnabled then
				local voiceParticipant =
					VoiceChatServiceManager.participants[tostring(
						self.state.selectedPlayer.UserId
					)]
				if voiceParticipant then
					local isMuted = voiceParticipant.isMutedLocally
					table.insert(moreActions, {
						text = isMuted and "Unmute Player" or "Mute Player",
						icon = VoiceChatServiceManager:GetIcon(isMuted and "Unmute" or "Mute", "Misc"),
						onActivated = function()
							local player = self.state.selectedPlayer
							log:debug("Muting Player {}", player.UserId)
							VoiceChatServiceManager:ToggleMutePlayer(player.UserId)
							self:setState({
								selectedPlayer = Roact.None,
							})
						end,
					})
				end
			end

			local isBlocked = self.props.blockingUtility:IsPlayerBlockedByUserId(player.UserId)
			table.insert(moreActions, {
				text = isBlocked and localized.unblockPlayer or localized.blockPlayer,
				icon = Images["icons/actions/block"],
				onActivated = function()
					if isBlocked then
						self.props.unblockPlayer(player)
					else
						self.props.blockPlayer(player)
					end

					self:setState({
						selectedPlayer = Roact.None,
					})
				end,
			})

			-- include action to unfriend if player is a friend
			if self.state.selectedPlayer ~= self.props.playersService.LocalPlayer then
				if friendStatus == Enum.FriendStatus.Friend then
					table.insert(moreActions, {
						text = localized.unfriend,
						icon = Images["icons/actions/friends/friendRemove"],
						onActivated = function()
							self.props.playersService.LocalPlayer:RevokeFriendship(player)

							-- todo: add analytics
						end,
					})
				end
			end
		end
	end

	return moreActions
end

function PlayersPage:getFriendAction(localized, friendStatus)
	local player = self.state.selectedPlayer

	-- check if player is blocked
	local isBlocked = self.props.blockingUtility:IsPlayerBlockedByUserId(player.UserId)
	if isBlocked then
		return nil
	end

	-- if we're not friends yet, we can either send a friend request
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
		-- check to see if we have a pending incoming friend acceptance
		-- this happens when we have a pending friend request and we
		-- are about to decide whether we want to reject or accept friend request
		if self.state.pendingIncomingPlayerInvite then
			-- show reject/accept friend buttons
			return {
				text = localized.accept,
				icon = Images["icons/actions/friends/friendpending"],
				onActivated = function()
					self:setState({
						pendingIncomingPlayerInvite = Roact.None,
					})
				end,
				renderRightSideGadget = self.state.pendingIncomingPlayerInvite and function()
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
												pendingIncomingPlayerInvite = Roact.None,
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
												pendingIncomingPlayerInvite = Roact.None,
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
				rightSideGadgetSize = self.state.pendingIncomingPlayerInvite and Vector2.new(
					CONTEXT_MENU_BUTTON_CONTAINER_WIDTH,
					CONTEXT_MENU_BUTTON_CONTAINER_HEIGHT
				),
			}
		else
			-- show pending incoming friend invite state
			return {
				text = localized.pendingFriendRequest,
				icon = Images["icons/actions/friends/friendpending"],
				onActivated = function()
					self:setState({
						pendingIncomingPlayerInvite = player,
					})
				end,
			}
		end
	else
		return nil
	end
end

function PlayersPage:renderFocusHandler(canCaptureFocus)
	return Roact.createElement(FocusHandler, {
		isFocused = canCaptureFocus
			and self.props.currentPage == "Players"
			and self.props.isMenuOpen
			and not self.props.isReportDialogOpen
			and not self.state.selectedPlayer
			and (self.state.selectedPlayerRef or self.state.firstPlayerRef) ~= nil,
		shouldForgetPreviousSelection = self.props.currentPage == Constants.MainPagePageKey
			or not self.props.isCurrentZoneActive,
		didFocus = function(previousSelection)
			-- Focus first player when landing on the page
			GuiService.SelectedCoreObject = previousSelection or self.state.firstPlayerRef
		end,
	})
end

function PlayersPage:renderWithLocalizedAndSelectionCursor(style, localized, getSelectionCursor)
	local moreMenuPositionYOffset = 0
	local moreMenuPositionXOffset = 0
	local maxMenuHeight = 0
	local anchorFromBottom = false
	local moreActions = {}
	if self.state.selectedPlayer ~= nil then
		moreActions = self:getMoreActions(localized)
		local actionMenuHeight = (math.min(7.5, #moreActions) * ACTION_HEIGHT) + CONTEXT_MENU_HEADER_HEIGHT
		local screenWidth = self.props.screenSize.X
		local screenHeight = self.props.screenSize.Y

		-- always keep 24 px distance from side of screen if viewport is too limited
		-- otherwise just postion to the right of all menu content with padding 20
		if
			self.state.selectedPlayerPosition.Y - ACTION_HEIGHT + actionMenuHeight + CONTEXT_PADDING_TOP < screenHeight
		then
			moreMenuPositionYOffset = math.max(0, self.state.selectedPlayerPosition.Y - ACTION_HEIGHT)
		else
			moreMenuPositionYOffset = 0
			maxMenuHeight = screenHeight - CONTEXT_MENU_HEADER_HEIGHT
			-- If menu doesn't fill the screen, anchor the menu from the bottom of the screen
			anchorFromBottom = actionMenuHeight + CONTEXT_PADDING_TOP < screenHeight
		end

		if
			screenWidth
			>= self.state.selectedPlayerPosition.X
				+ PLAYER_LABEL_WIDTH
				+ CONTEXT_LEFT_PADDING
				+ ACTION_WIDTH
				+ CONTEXT_SIDE_PADDING
		then
			moreMenuPositionXOffset = self.state.selectedPlayerPosition.X + PLAYER_LABEL_WIDTH + CONTEXT_LEFT_PADDING
		else
			moreMenuPositionXOffset = screenWidth - ACTION_WIDTH - CONTEXT_SIDE_PADDING
		end
	end

	local canCaptureFocus = self.props.isGamepadLastInput
		and not self.props.isRespawnDialogOpen
		and self.props.isCurrentZoneActive

	local moreActionsMenuPanel = self.state.selectedPlayer
			and Roact.createElement(PlayerContextualMenu, {
				moreActions = moreActions,
				actionWidth = ACTION_WIDTH,
				maxHeight = maxMenuHeight,
				anchorFromBottom = anchorFromBottom,
				xOffset = moreMenuPositionXOffset,
				yOffset = moreMenuPositionYOffset,
				canCaptureFocus = canCaptureFocus,
				player = self.state.selectedPlayer,
				onClose = function()
					self:setState({ selectedPlayer = Roact.None })
				end,
			})
		or nil

	return Roact.createElement(Page, {
		useLeaveButton = true,
		scrollingDown = self.state.scrollingDown,
		pageTitle = self.props.pageTitle,
		titleChildren = self.props.voiceEnabled and Roact.createElement("ImageButton", {
			Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(1, 0.5),
			BorderSizePixel = 0,
			Position = UDim2.new(1, 4, 0.5, 0),
			Image = VoiceChatServiceManager:GetIcon(self.state.allMuted and "UnmuteAll" or "MuteAll", "Misc"),
			[Roact.Event.Activated] = function()
				VoiceChatServiceManager:MuteAll(not self.state.allMuted)
				self:setState({
					allMuted = not self.state.allMuted,
				})
			end,
			SelectionImageObject = getSelectionCursor(CursorKind.RoundedRect) or nil,
		}),
	}, {
		PlayerListContent = withStyle(function(style)
			return Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
			}, {
				PlayerList = Roact.createElement(BarOnTopScrollingFrame, {
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(1, 0, 1, 0),
					-- CanvasSize = UDim2.new(1, 0, 0, #self.state.players * (PLAYER_LABEL_HEIGHT + 1)),
					CanvasSize = UDim2.new(1, 0, 0, #self.props.players * (PLAYER_LABEL_HEIGHT + 1)),
					ScrollingEnabled = self.state.selectedPlayer == nil,
					onCanvasPositionChanged = self.onScroll,
				}, self:renderListEntries(style, localized, self.props.players)),

				MoreActionsMenu = moreActionsMenuPanel,
			})
		end),
		FocusHandler = self:renderFocusHandler(canCaptureFocus),
		Watcher = Roact.createElement(PageNavigationWatcher, {
			desiredPage = "Players",
			onNavigateTo = function()
				self:setState({
					players = Players:GetPlayers(),
				})
			end,
			onNavigateAway = function()
				self:setState({
					selectedPlayer = Roact.None,
					pendingIncomingPlayerInvite = Roact.None,
				})
			end,
		}),
	})
end

function PlayersPage:renderWithLocalized(style, localized)
	return withSelectionCursorProvider(function(getSelectionCursor)
		return self:renderWithLocalizedAndSelectionCursor(style, localized, getSelectionCursor)
	end)
end

function PlayersPage:render()
	return withStyle(function(style)
		return withLocalization({
			addFriend = "CoreScripts.InGameMenu.Actions.AddFriend",
			acceptFriend = "CoreScripts.InGameMenu.Actions.AcceptFriend",
			unfriend = "CoreScripts.InGameMenu.Actions.Unfriend",
			cancelFriend = "CoreScripts.InGameMenu.Actions.CancelFriend",
			viewAvatar = "CoreScripts.InGameMenu.Actions.ViewAvatar",
			reportAbuse = "CoreScripts.InGameMenu.Actions.ReportAbuse",
			blockPlayer = "CoreScripts.InGameMenu.Actions.BlockPlayer",
			unblockPlayer = "CoreScripts.InGameMenu.Actions.UnblockPlayer",
			headerPlayers = "CoreScripts.InGameMenu.Header.Players",
			headerIncomingFriendRequests = "CoreScripts.InGameMenu.Header.IncomingFriendRequests",
			pendingFriendRequest = "CoreScripts.InGameMenu.Action.PendingFriendRequest",
			accept = "CoreScripts.InGameMenu.Action.Accept",
		})(function(localized)
			return self:renderWithLocalized(style, localized)
		end)
	end)
end

function PlayersPage:didUpdate(prevProps, prevState)
	if self.props.isMenuOpen and not prevProps.isMenuOpen then
		self:setState({
			selectedPlayer = Roact.None,
		})
	end

	local selectedPlayerRef = self.state.selectedPlayerRef
	if selectedPlayerRef then
		if self.state.selectedPlayerPosition ~= selectedPlayerRef.AbsolutePosition then
			self:setState({
				selectedPlayerPosition = selectedPlayerRef.AbsolutePosition,
			})
		end
	end
end

return RoactRodux.connect(function(state, props)
	return {
		isMenuOpen = state.isMenuOpen,
		inviteFriends = state.inviteFriends.inviteFriends,
		voiceEnabled = state.voiceState.voiceEnabled,
		inspectMenuEnabled = state.displayOptions.inspectMenuEnabled,
		screenSize = state.screenSize,
		currentPage = state.menuPage,
		isRespawnDialogOpen = state.respawn.dialogOpen,
		isReportDialogOpen = state.report.dialogOpen or state.report.reportSentOpen,
		isGamepadLastInput = state.displayOptions.inputType == Constants.InputType.Gamepad,
		isCurrentZoneActive = state.currentZone == 1,
	}
end, function(dispatch)
	return {
		dispatchOpenReportDialog = function(userId, userName)
			dispatch(OpenReportDialog(userId, userName))
		end,

		closeMenu = function()
			dispatch(CloseMenu)
		end,

		blockPlayer = function(player)
			return dispatch(BlockPlayer(player))
		end,

		unblockPlayer = function(player)
			return dispatch(UnblockPlayer(player))
		end,
		openInviteFriendsPage = function()
			return dispatch(SetCurrentPage("InviteFriends"))
		end,
	}
end)(PlayersPage)
