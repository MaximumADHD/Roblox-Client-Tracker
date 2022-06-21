local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Cryo = InGameMenuDependencies.Cryo
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local withStyle = UIBlox.Core.Style.withStyle
local IconButton = UIBlox.App.Button.IconButton
local Images = UIBlox.App.ImageSet.Images
local getIconSize = UIBlox.App.ImageSet.getIconSize

local InGameMenu = script.Parent.Parent.Parent
local PlayerSearchPredicate = require(InGameMenu.Utility.PlayerSearchPredicate)
local withLocalization = require(InGameMenu.Localization.withLocalization)

local PlayerCell = require(InGameMenu.Components.PlayerCell)
local PlayerContextualMenuWrapper = require(InGameMenu.Components.PlayerContextualMenuWrapper)
local CoPlayInviteCell = require(InGameMenu.Components.CoPlayInviteCell)

local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local Divider = require(InGameMenu.Components.Divider)

local BarOnTopScrollingFrame = require(InGameMenu.Components.BarOnTopScrollingFrame)
local Page = require(InGameMenu.Components.Page)
local PageUtils = require(InGameMenu.Components.Pages.PageUtils)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local Constants = require(InGameMenu.Resources.Constants)

local FocusHandler = require(script.Parent.Parent.Connection.FocusHandler)
local SearchBar = require(script.Parent.Parent.SearchBar)

local VoiceIndicator = require(RobloxGui.Modules.VoiceChat.Components.VoiceIndicator)
local playerInterface = require(RobloxGui.Modules.Interfaces.playerInterface)

local DIVIDER_INDENT = 0
local DIVIDER_HEIGHT = 1
local LIST_HEADER_HEIGHT = 24
local PLAYER_CELL_HEIGHT = 72
local INVITE_CELL_HEIGHT = 56

local ICON_SIZE = getIconSize(UIBlox.App.ImageSet.Enum.IconSize.Medium)

local PlayersPage = Roact.PureComponent:extend("PlayersPage")

PlayersPage.validateProps = t.strictInterface({
	players = t.array(playerInterface),
	isMenuOpen = t.boolean,
	voiceEnabled = t.optional(t.boolean),
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
	self:setState({
		selectedPlayer = nil,
		selectedPlayerPosition = Vector2.new(0, 0),
		voiceChatEnabled = false,
		allMuted = false,
		selectedPlayerRef = nil,
		firstPlayerRef = nil,
		searchText = "",
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
		self:setState({
			isFilteringMode = false,
			searchText = "",
		})
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

function PlayersPage:renderListEntries(style, localized, players)
	local layoutOrder = 0
	local listComponents = {}
	local visibleEntryCount = 0
	local visibleHeadersCount = 1

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

			if isEntryVisible then
				visibleEntryCount = visibleEntryCount + 1

				listComponents["incoming_request_player_" .. id] = Roact.createElement(PlayerCell, {
					username = player.Name,
					displayName = player.DisplayName,
					userId = player.UserId,
					isOnline = true,
					isSelected = self.state.selectedPlayer == player,
					LayoutOrder = layoutOrder,
					onActivated = self.toggleMoreActionsForIncomingFriendRequests,
					[Roact.Change.AbsolutePosition] = self.state.selectedPlayer == player and self.positionChanged
						or nil,
					[Roact.Ref] = self.setSelectedPlayerRef,
				}, {
					Icon = Roact.createElement(IconButton, {
						size = UDim2.fromOffset(0, 0),
						icon = Images["icons/actions/friends/friendpending"],
						position = self.props.position,
						anchorPoint = Vector2.new(1, 0.5),
						layoutOrder = self.props.layoutOrder,
						onActivated = self.toggleMoreActionsForIncomingFriendRequests,
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

	for index, player in pairs(players) do
		local id = player.UserId
		local RoactRef
		if index == 1 and not self.state.selectedPlayer then
			RoactRef = self.setFirstPlayerRef
		elseif self.state.selectedPlayer == player then
			RoactRef = self.setSelectedPlayerRef
		end
		local isEntryVisibleForPlayer = PlayerSearchPredicate(self.state.searchText, player.Name, player.DisplayName)

		if isEntryVisibleForPlayer then
			visibleEntryCount = visibleEntryCount + 1

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
				Icon = self.props.voiceEnabled
					and player ~= self.props.playersService.LocalPlayer
					and Roact.createElement(VoiceIndicator, {
						userId = tostring(player.UserId),
						hideOnError = true,
						iconStyle = iconStyle,
						onClicked = self.toggleMoreActions,
					}),
			})

			layoutOrder = layoutOrder + 1

			if index < #players then
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

function PlayersPage:renderFocusHandler(canCaptureFocus)
	return Roact.createElement(FocusHandler, {
		isFocused = canCaptureFocus
			and self.props.currentPage == "Players"
			and self.props.isMenuOpen
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
	local canCaptureFocus = self.props.isGamepadLastInput
		and not self.props.isRespawnDialogOpen
		and self.props.isCurrentZoneActive

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
					else
						-- refresh contents forcibly
						self:setState(function(prevState, props)
							return Cryo.Dictionary.join(prevState)
						end)
					end
				end,
			})
		or nil

	local listEntries, visibleEntryCount, visibleHeadersCount = self:renderListEntries(
		style,
		localized,
		self.props.players
	)
	local canvasSize = INVITE_CELL_HEIGHT
		+ (visibleEntryCount * (PLAYER_CELL_HEIGHT + DIVIDER_HEIGHT))
		+ (visibleHeadersCount * LIST_HEADER_HEIGHT)

	return PageUtils.withScrollDownState(function(onScroll, scrollingDown)
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
				autoCaptureFocus = true,
				onTextChanged = self.onSearchTextChanged,
				onCancelled = self.onSearchBarDismissed,
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
						CanvasSize = UDim2.new(1, 0, 0, canvasSize),
						onCanvasPositionChanged = function(rbx)
							if self.state.selectedPlayer then
								self:setState({
									selectedPlayer = Roact.None,
								})
							end
							onScroll(rbx)
						end,
					}, listEntries),

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
	end)
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
	if self.props.isMenuOpen and not prevProps.isMenuOpen then
		self:setState({
			selectedPlayer = Roact.None,
		})
	end

	if not self.props.isMenuOpen and prevProps.isMenuOpen then
		self.onSearchBarDismissed()
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
		currentPage = state.menuPage,
		isRespawnDialogOpen = state.respawn.dialogOpen,
		isGamepadLastInput = state.displayOptions.inputType == Constants.InputType.Gamepad,
		isCurrentZoneActive = state.currentZone == 1,
	}
end, function(dispatch)
	return {
		openInviteFriendsPage = function()
			return dispatch(SetCurrentPage("InviteFriends"))
		end,
	}
end)(PlayersPage)
