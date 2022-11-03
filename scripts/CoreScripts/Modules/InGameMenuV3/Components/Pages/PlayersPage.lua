--!nonstrict
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local useSelector = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useSelector
local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Cryo)

local UIBlox = InGameMenuDependencies.UIBlox
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local withStyle = UIBlox.Core.Style.withStyle
local IconButton = UIBlox.App.Button.IconButton
local LoadingStrategy = UIBlox.App.Loading.Enum.LoadingStrategy
local Images = UIBlox.App.ImageSet.Images
local getIconSize = UIBlox.App.ImageSet.getIconSize
local VerticalScrollViewWithIndicator = UIBlox.App.Container.VerticalScrollViewWithIndicator

local InGameMenu = script.Parent.Parent.Parent
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local PlayerSearchPredicate = require(InGameMenu.Utility.PlayerSearchPredicate)
local withLocalization = require(InGameMenu.Localization.withLocalization)
local GetFFlagUsePageSearchAnimation = require(InGameMenu.Flags.GetFFlagUsePageSearchAnimation)
local FIntFirstPlayerCellIndexEngineLoadingStrategy = require(InGameMenu.Flags.GetFIntFirstPlayerCellIndexEngineLoadingStrategy)()

local PlayerCell = require(InGameMenu.Components.PlayerCell)
local PlayerContextualMenuWrapper = require(InGameMenu.Components.PlayerContextualMenuWrapper)
local CoPlayInviteCell = require(InGameMenu.Components.CoPlayInviteCell)

local UIAnimator = require(InGameMenu.Utility.UIAnimator)
local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local Divider = require(InGameMenu.Components.Divider)
local Page = require(InGameMenu.Components.Page)
local PageWithSearch = require(InGameMenu.Components.PageWithSearch)
local PageUtils = require(InGameMenu.Components.Pages.PageUtils)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local Constants = require(InGameMenu.Resources.Constants)
local ExperienceMenuABTestManager = require(InGameMenu.ExperienceMenuABTestManager)
local IsMenuCsatEnabled = require(InGameMenu.Flags.IsMenuCsatEnabled)
local FriendRequestStatus = require(InGameMenu.Utility.FriendRequestStatus)

local FocusHandler = require(script.Parent.Parent.Connection.FocusHandler)
local SearchBar = require(script.Parent.Parent.SearchBar)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceIndicator = require(RobloxGui.Modules.VoiceChat.Components.VoiceIndicatorFunc)
local VoiceStateContext = require(RobloxGui.Modules.VoiceChat.VoiceStateContext)
local playerInterface = require(RobloxGui.Modules.Interfaces.playerInterface)

local VerifiedBadges = require(CorePackages.Workspace.Packages.VerifiedBadges)
local isPlayerVerified = VerifiedBadges.isPlayerVerified

local DIVIDER_INDENT = 0
local DIVIDER_HEIGHT = 1
local LIST_HEADER_HEIGHT = 24
local COPLAY_INVITE_CELL_HEIGHT = 56
local COPLAY_INVITE_ANIMATION_SPEED = 0.3

local ICON_SIZE = getIconSize(UIBlox.App.ImageSet.Enum.IconSize.Medium)

local VoiceIndicatorWrapper = function(props)
	local voiceServiceState = React.useContext(VoiceStateContext.Context)
	local visible, setVisible = React.useState(false)

	if not voiceServiceState.voiceEnabled then
		return nil
	end

	return React.createElement(React.Fragment, nil, {
		Watcher = React.createElement(PageNavigationWatcher, {
			desiredPage = Constants.PlayersPageKey,
			onNavigate = setVisible,
		}),
		VoiceIndicator = React.createElement(VoiceIndicator, Cryo.Dictionary.join(props, {
			disable = not visible
		})),
	})
end


local PlayersPage = Roact.PureComponent:extend("PlayersPage")

PlayersPage.validateProps = t.strictInterface({
	players = t.array(playerInterface),
	inviteFriends = t.array(t.strictInterface({
		IsOnline = t.boolean,
		Id = t.integer,
		Username = t.string,
		Displayname = t.string,
	})),
	incomingFriendRequests = t.array(playerInterface),
	openInviteFriendsPage = t.callback,
	pageTitle = t.string,
	currentPage = t.optional(t.string),
	isRespawnDialogOpen = t.optional(t.boolean),
	isGamepadLastInput = t.optional(t.boolean),
	isCurrentZoneActive = t.optional(t.boolean),
	playersService = t.union(t.Instance, t.table),
})

PlayersPage.defaultProps = {
	players = {},
	inviteFriends = {},
	incomingFriendRequests = {},
	playersService = Players,
}

function PlayersPage:init()
	self.scrollingFrameRef = Roact.createRef()
	if GetFFlagUsePageSearchAnimation() then
		self.searchBarRef = Roact.createRef()
		self.coplayInviteCellCanvasGroupRef = Roact.createRef()
		self.uiAnimator = UIAnimator:new()
	end

	self.layoutBindings = {}
	self.getLayoutBinding = function(id, layoutOrder)
		local layoutBinding = self.layoutBindings[id]
		if not layoutBinding then
			local valueBinding, setLayout = Roact.createBinding(layoutOrder)
			layoutBinding = {
				valueBinding = valueBinding,
				setValue = setLayout,
				value = layoutOrder,
			}
			self.layoutBindings[id] = layoutBinding
		end

		if layoutBinding.value ~= layoutOrder then
			layoutBinding.value = layoutOrder
			layoutBinding.setValue(layoutOrder)
		end

		return layoutBinding.valueBinding
	end

	self:setState({
		selectedPlayer = nil,
		selectedPlayerPosition = Vector2.new(0, 0),
		voiceChatEnabled = false,
		allMuted = false,
		selectedPlayerRef = nil,
		firstPlayerRef = nil,
		isFilteringMode = false,
		searchText = "",
		heightOffset = 0,
	})
	self.scrollingThread = nil
	self.scrollingDown = nil

	self.pageHeaderActivated = function()
		local scrollingFrame = self.scrollingFrameRef:getValue()
		if scrollingFrame then
			scrollingFrame:scrollToTop()
		end
	end

	self.setSelectedPlayerRef = function(rbx)
		self:setState({
			selectedPlayerRef = rbx,
		})
	end

	if GetFFlagUsePageSearchAnimation() then
		self.setCoplayInviteCellCanvasGroupRef = function(rbx)
			self.coplayInviteCellCanvasGroupRef = rbx
			if rbx then
				self.uiAnimator:addReversibleTween(rbx, 'fade', UIAnimator.ReversibleTweens.Fade(), TweenInfo.new(COPLAY_INVITE_ANIMATION_SPEED))
				self.uiAnimator:addReversibleTween(rbx, 'collapse', UIAnimator.ReversibleTweens.VerticalCollapse(rbx, COPLAY_INVITE_CELL_HEIGHT), TweenInfo.new(COPLAY_INVITE_ANIMATION_SPEED))
			else
				self.uiAnimator:removeAllTweens(rbx)
			end
		end
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
		local player = self:getPlayerByUserId(userId)

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

	self.toggleMoreActionsForIncomingFriendRequests = function(userId)
		local player = self:getIncomingFriendRequestsPlayerByUserId(userId)
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

	self.onSearchTextChanged = function(searchText)
		if searchText ~= self.state.searchText and self.state.isFilteringMode then
			-- handle filtering mode with context menu open, dismiss if not part of filter
			local isEntryVisible = self.state.selectedPlayer
					and PlayerSearchPredicate(
						searchText,
						self.state.selectedPlayer.Name,
						self.state.selectedPlayer.DisplayName
					)
				or false

			self:setState({
				searchText = searchText,
				selectedPlayer = isEntryVisible and self.state.selectedPlayer or Roact.None,
			})
		end
	end

	self.onSearchBarDismissed = function()
		if GetFFlagUsePageSearchAnimation() then
			self.uiAnimator:playReversibleTweens(self.coplayInviteCellCanvasGroupRef, {'fade', 'collapse'}, true)
		end
		self:setState({
			isFilteringMode = false,
			searchText = "",
		})
	end

	self.menuOpenChange = function(menuOpen, wasOpen)
		if menuOpen and not wasOpen then
			if self.state.selectedPlayer then
				self:setState({
					selectedPlayer = Roact.None,
				})
			end
			local scrollingFrame = self.scrollingFrameRef:getValue()
			if scrollingFrame and scrollingFrame.CanvasPosition.Y > 0 then
				scrollingFrame.CanvasPosition = Vector2.new(0, 0)
			end
		end

		if not GetFFlagUsePageSearchAnimation() then
			if not menuOpen and wasOpen then
				self.onSearchBarDismissed()
			end
		end

		if menuOpen and not self.friendStatusConnection then
			FriendRequestStatus.reset()
			self.friendStatusConnection = FriendRequestStatus.connect(function()
				self:setState({
					FriendRequestStatus = {},
				})
			end)
		elseif not menuOpen and self.friendStatusConnection then
			self.friendStatusConnection:disconnect()
			self.friendStatusConnection = nil
		end
		FriendRequestStatus.menuOpenStatusChange(menuOpen)
	end

	if GetFFlagUsePageSearchAnimation() then
		self.onSearchModeEntered = function()
			self.uiAnimator:playReversibleTweens(self.coplayInviteCellCanvasGroupRef, {'fade', 'collapse'}, false)
			self:setState({
				isFilteringMode = true,
			})
		end
	end
end

function PlayersPage:getPlayerByUserId(userId)
	for _, player in pairs(self.props.players) do
		if player.UserId == userId then
			return player
		end
	end

	return nil
end

function PlayersPage:getIncomingFriendRequestsPlayerByUserId(userId)
	for _, player in pairs(self.props.incomingFriendRequests) do
		if player.UserId == userId then
			return player
		end
	end

	return nil
end

function PlayersPage:isPlayerUserIdMuted(userId)
	local voiceParticipant = VoiceChatServiceManager.participants[tostring(userId)]
	local isMuted = nil
	if voiceParticipant then
		isMuted = voiceParticipant.isMutedLocally
	end

	return isMuted
end

function PlayersPage:renderListEntries(style, localized, players)
	local sortedPlayers = players

	local layoutOrder = 0
	local listComponents = {}
	local visibleEntryCount = 0
	local visibleHeadersCount = 1

	listComponents.ListLayout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
	})

	listComponents.EndPad = Roact.createElement("Frame", {
		Size = UDim2.new(0, 1, 0, 72),
		BackgroundTransparency = 1,
		LayoutOrder = 1000,
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
	if GetFFlagUsePageSearchAnimation() then
		listComponents["coplay_invite_cell_canvas_group"] = Roact.createElement("CanvasGroup", {
			BorderSizePixel = 0,
			BackgroundTransparency = style.Theme.BackgroundContrast.Transparency,
			BackgroundColor3 = style.Theme.BackgroundContrast.Color,
			Size = UDim2.new(1, 0, 0, COPLAY_INVITE_CELL_HEIGHT),
			LayoutOrder = layoutOrder,
			[Roact.Ref] = self.setCoplayInviteCellCanvasGroupRef,
		}, {
			InviteCell = Roact.createElement(CoPlayInviteCell, {
				onActivated = self.props.openInviteFriendsPage,
				friends = self.props.inviteFriends,
			}),
		})
	else
		listComponents["coplay_invite_cell"] = Roact.createElement(CoPlayInviteCell, {
			LayoutOrder = layoutOrder,
			onActivated = self.props.openInviteFriendsPage,
			friends = self.props.inviteFriends,
		})
	end
	layoutOrder = layoutOrder + 1
	local playerRequestFriendship = {}
	-- incoming friend request section
	if #self.props.incomingFriendRequests > 0 then
		visibleHeadersCount = visibleHeadersCount + 1

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
			Size = UDim2.new(1, 0, 0, LIST_HEADER_HEIGHT),
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
			local isEntryVisible = PlayerSearchPredicate(self.state.searchText, player.Name, player.DisplayName)
			playerRequestFriendship[id] = true

			local RoactRef
			if self.state.selectedPlayer == player then
				RoactRef = self.setSelectedPlayerRef
			end

			if isEntryVisible then
				visibleEntryCount = visibleEntryCount + 1
				listComponents["incoming_request_player_" .. id] = Roact.createElement(PlayerCell, {
					username = player.Name,
					displayName = player.DisplayName,
					hasVerifiedBadge = isPlayerVerified(player),
					userId = player.UserId,
					isOnline = true,
					isSelected = self.state.selectedPlayer == player,
					LayoutOrder = self.getLayoutBinding("incoming" .. id, layoutOrder),
					onActivated = self.toggleMoreActionsForIncomingFriendRequests,
					[Roact.Change.AbsolutePosition] = self.state.selectedPlayer == player and self.positionChanged
						or nil,
					forwardRef = RoactRef,
				}, {
					VoiceIndicator = Roact.createElement(VoiceIndicatorWrapper, {
						userId = tostring(player.UserId),
						hideOnError = true,
						iconStyle = "SpeakerLight",
						size = UDim2.fromOffset(36, 36),
						onClicked = function()
							local isMuted = self:isPlayerUserIdMuted(player.UserId)
							VoiceChatServiceManager:ToggleMutePlayer(player.UserId)
							SendAnalytics(
								Constants.AnalyticsMenuActionName,
								isMuted and Constants.AnalyticsUnmutePlayer or Constants.AnalyticsMutePlayer,
								{ source = Constants.AnalyticsPlayerCellSource }
							)
						end,
					}) or nil,
					Icon = Roact.createElement(IconButton, {
						size = UDim2.fromOffset(0, 0),
						icon = Images["icons/actions/friends/friendpending"],
						position = self.props.position,
						anchorPoint = Vector2.new(1, 0.5),
						layoutOrder = 3,
						onActivated = function()
							self.toggleMoreActionsForIncomingFriendRequests(player.UserId)
						end,
					}),
				})

				layoutOrder = layoutOrder + 1
			end
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
		Size = UDim2.new(1, 0, 0, LIST_HEADER_HEIGHT),
		LayoutOrder = layoutOrder,
	}, {
		PaddingLeftadding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 6),
			PaddingBottom = UDim.new(0, 6),
			PaddingLeft = UDim.new(0, 24),
		}),
	})

	layoutOrder = layoutOrder + 1

	for index, player in pairs(sortedPlayers) do
		local id = player.UserId
		local loadingStrategy = nil
		if FIntFirstPlayerCellIndexEngineLoadingStrategy ~= 0 and index >= FIntFirstPlayerCellIndexEngineLoadingStrategy then
			loadingStrategy = LoadingStrategy.Default
		end

		if playerRequestFriendship[id] then
			continue
		end

		local RoactRef
		if index == 1 and not self.state.selectedPlayer then
			RoactRef = self.setFirstPlayerRef
		elseif self.state.selectedPlayer == player then
			RoactRef = self.setSelectedPlayerRef
		end
		local isEntryVisibleForPlayer = PlayerSearchPredicate(self.state.searchText, player.Name, player.DisplayName)
		if isEntryVisibleForPlayer then
			visibleEntryCount = visibleEntryCount + 1

			local notLocalPlayer = player and player ~= self.props.playersService.LocalPlayer
			local iconStyle = notLocalPlayer and "SpeakerLight" or "MicLight"
			local friendStatus = notLocalPlayer
					and player.Parent == Players
					and self.props.playersService.LocalPlayer:GetFriendStatus(player)
				or nil
			local online = not notLocalPlayer or friendStatus ~= nil
			local notFriend = friendStatus
					and (friendStatus == Enum.FriendStatus.Unknown or friendStatus == Enum.FriendStatus.NotFriend)
				or nil
			local pendingFriend = friendStatus and friendStatus == Enum.FriendStatus.FriendRequestSent or nil
			local requestingStatus, acceptedRequest = FriendRequestStatus.requestingStatus(player)
			if requestingStatus then
				if requestingStatus == FriendRequestStatus.Enum.REQUEST_FRIEND then
					pendingFriend = true
					notFriend = true
				elseif requestingStatus > FriendRequestStatus.Enum.REVOKE_ACTION then
					pendingFriend = false
					notFriend = true
				end
			end

			local memoKey = 0
			if notFriend then
				memoKey += 1
			end
			if pendingFriend then
				memoKey += 2
			end
			if acceptedRequest then
				memoKey += 4
			end

			listComponents["player_" .. id] = Roact.createElement(PlayerCell, {
				username = player.Name,
				displayName = player.DisplayName,
				userId = player.UserId,
				hasVerifiedBadge = isPlayerVerified(player),
				isOnline = online,
				isSelected = self.state.selectedPlayer == player,
				LayoutOrder = self.getLayoutBinding(id, layoutOrder),
				memoKey = memoKey,
				loadingStrategy = loadingStrategy,
				onActivated = self.toggleMoreActions,

				[Roact.Change.AbsolutePosition] = self.state.selectedPlayer == player and self.positionChanged or nil,
				forwardRef = RoactRef,
			}, {
				VoiceIndicator = Roact.createElement(VoiceIndicatorWrapper, {
					userId = tostring(player.UserId),
					hideOnError = true,
					iconStyle = iconStyle,
					size = UDim2.fromOffset(36, 36),
					onClicked = function()
						local isMuted = self:isPlayerUserIdMuted(player.UserId)
						if notLocalPlayer then
							VoiceChatServiceManager:ToggleMutePlayer(player.UserId)

							SendAnalytics(
								Constants.AnalyticsMenuActionName,
								isMuted and Constants.AnalyticsUnmutePlayer or Constants.AnalyticsMutePlayer,
								{ source = Constants.AnalyticsPlayerCellSource }
							)
						else
							VoiceChatServiceManager:ToggleMic()

							SendAnalytics(
								Constants.AnalyticsMenuActionName,
								isMuted and Constants.AnalyticsUnmuteSelf or Constants.AnalyticsMuteSelf,
								{ source = Constants.AnalyticsPlayerCellSource }
							)
						end
					end,
				}) or nil,
				SuccessIcon = acceptedRequest and Roact.createElement(IconButton, {
					size = UDim2.fromOffset(0, 0),
					icon = Images["icons/status/success"],
					anchorPoint = Vector2.new(1, 0.5),
					layoutOrder = 3,
					onActivated = function(_) end,
				}) or nil,
				AddFriend = notFriend and not pendingFriend and Roact.createElement(IconButton, {
					size = UDim2.fromOffset(0, 0),
					icon = Images["icons/actions/friends/friendAdd"],
					anchorPoint = Vector2.new(1, 0.5),
					layoutOrder = 3,
					onActivated = function(_)
						FriendRequestStatus.issueFriendRequest(player, Constants.AnalyticsPlayerCellSource)
						if IsMenuCsatEnabled() then
							ExperienceMenuABTestManager.default:setCSATQualification()
						end
					end,
				}) or nil,
				PendingFriend = pendingFriend and Roact.createElement(IconButton, {
					size = UDim2.fromOffset(0, 0),
					icon = Images["icons/actions/friends/friendpending"],
					anchorPoint = Vector2.new(1, 0.5),
					layoutOrder = 3,
					onActivated = function(_)
						FriendRequestStatus.cancelFriendRequest(player, Constants.AnalyticsPlayerCellSource)
					end,
				}) or nil,
			})

			layoutOrder = layoutOrder + 1

			if index < #sortedPlayers then
				listComponents["divider_" .. id] = Roact.createElement(Divider, {
					LayoutOrder = layoutOrder,
					Size = UDim2.new(1, -DIVIDER_INDENT, 0, DIVIDER_HEIGHT),
					theme = "BackgroundContrast",
				})

				layoutOrder = layoutOrder + 1
			end
		end
	end

	return listComponents, visibleEntryCount, visibleHeadersCount
end

function canCaptureFocusSelector(state)
	return state.displayOptions.inputType == Constants.InputType.Gamepad
		and not state.respawn.dialogOpen
		and state.currentZone == 1
		and state.menuPage == Constants.PlayersPageKey
		and state.isMenuOpen
end

function shouldForgetPreviousSelectionSelector(state)
	return state.menuPage ~= Constants.PlayersPageKey or state.currentZone ~= 1
end

function FocusHandlerWrapper(props)
	local canCaptureFocus = useSelector(canCaptureFocusSelector)
	local isFocused = not props.hasSelectedPlayer and props.hasSelectionRef
	local shouldForgetPreviousSelection = useSelector(shouldForgetPreviousSelectionSelector)

	return Roact.createElement(FocusHandler, {
		isFocused = canCaptureFocus and isFocused,
		shouldForgetPreviousSelection = shouldForgetPreviousSelection,
		didFocus = props.didFocus,
	})
end

function PlayersPage:renderFocusHandler()
	return Roact.createElement(FocusHandlerWrapper, {
		hasSelectedPlayer = self.state.selectedPlayer ~= nil,
		hasSelectionRef = (self.state.selectedPlayerRef or self.state.firstPlayerRef) ~= nil,
		didFocus = function(previousSelection)
			-- Focus first player when landing on the page
			GuiService.SelectedCoreObject = previousSelection or self.state.firstPlayerRef
		end,
	})
end

function PlayersPage:renderWithLocalizedAndSelectionCursor(style, localized, getSelectionCursor)
	local moreActionsMenuPanel = self.state.selectedPlayer
			and Roact.createElement(PlayerContextualMenuWrapper, {
				xOffset = Constants.PageWidth,
				selectedPlayer = self.state.selectedPlayer,
				selectedPlayerPosition = self.state.selectedPlayerPosition,
				onActionComplete = function(shouldClose)
					if shouldClose then
						self:setState({
							selectedPlayer = Roact.None,
						})
					end
				end,
			})
		or nil

	local listEntries = self:renderListEntries(style, localized, self.props.players)

	local getChildren = function(onScroll)
		return {
			PlayerListContent = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, self.state.heightOffset),
			}, {
				PlayerList = Roact.createElement(VerticalScrollViewWithIndicator, {
					position = UDim2.new(0, 0, 0, 0),
					size = UDim2.new(1, 0, 1, 0),
					canvasSizeY = UDim.new(0, 0),
					useAutomaticCanvasSize = true,
					scrollingFrameRef = self.scrollingFrameRef,
					[Roact.Change.CanvasPosition] = function(rbx)
						if self.state.selectedPlayer then
							self:setState({
								selectedPlayer = Roact.None,
							})
						end
						onScroll(rbx)
					end,
				}, listEntries),

				MoreActionsMenu = moreActionsMenuPanel,
			}),
			FocusHandler = self:renderFocusHandler(),
			Watcher = Roact.createElement(PageNavigationWatcher, {
				onNavigate = self.menuOpenChange,
				desiredPage = Constants.PlayersPageKey,
				onNavigateAway = function()
					if self.state.selectedPlayer then
						self:setState({
							selectedPlayer = Roact.None,
						})
					end
				end,
			}),
		}
	end

	return PageUtils.withScrollDownState(function(onScroll, scrollingDown)
		self:updateHeightOffset(scrollingDown)

		if GetFFlagUsePageSearchAnimation() then
			return Roact.createElement(PageWithSearch, {
				useLeaveButton = true,
				scrollingDown = scrollingDown,
				isFilteringMode = self.state.isFilteringMode,
				pageTitle = self.props.pageTitle,
				hasSearchBar = true,
				searchText = self.state.searchText,
				onSearchTextChanged = self.onSearchTextChanged,
				onSearchModeEntered = self.onSearchModeEntered,
				onSearchBarDismissed = self.onSearchBarDismissed,
				onHeaderActivated = self.pageHeaderActivated,
			}, getChildren(onScroll))
		end

		return Roact.createElement(Page, {
			useLeaveButton = true,
			scrollingDown = scrollingDown,
			pageTitle = self.props.pageTitle,
			titleChildren = Roact.createElement(IconButton, {
				size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
				icon = Images["icons/common/search"],
				onActivated = function()
					self:setState({
						isFilteringMode = true,
					})
				end,
			}),
			isFilteringMode = self.state.isFilteringMode,
			searchBar = Roact.createElement(SearchBar, {
				size = UDim2.new(1, 0, 0, 36),
				text = self.state.searchText,
				autoCaptureFocus = true,
				onTextChanged = self.onSearchTextChanged,
				onCancelled = self.onSearchBarDismissed,
			}),
			onHeaderActivated = self.pageHeaderActivated,
		}, getChildren(onScroll))
	end)
end

function PlayersPage:updateHeightOffset(scrollingDown)
	if self.scrollingDown ~= scrollingDown then
		self.scrollingDown = scrollingDown

		if self.scrollingThread then
			task.cancel(self.scrollingThread)
		end

		if scrollingDown then
			self:setState({
				heightOffset = 0,
			})
		else
			self.scrollingThread = task.delay(Constants.LeaveButtonTweenTime, function()
				self:setState({
					heightOffset = -Constants.LeaveButtonContainerHeight,
				})
			end)
		end
	end
end

function PlayersPage:renderWithLocalized(style, localized)
	return withSelectionCursorProvider(function(getSelectionCursor)
		return self:renderWithLocalizedAndSelectionCursor(style, localized, getSelectionCursor)
	end)
end

function PlayersPage:render()
	return withStyle(function(style)
		return withLocalization({
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
		inviteFriends = state.inviteFriends,
	}
end, function(dispatch)
	return {
		openInviteFriendsPage = function()
			return dispatch(SetCurrentPage("InviteFriends"))
		end,
	}
end)(PlayersPage)
