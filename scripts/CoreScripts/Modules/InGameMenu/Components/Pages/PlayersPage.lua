--!nonstrict
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Cryo = InGameMenuDependencies.Cryo
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind

local withStyle = UIBlox.Core.Style.withStyle
local Images = UIBlox.App.ImageSet.Images

local InGameMenu = script.Parent.Parent.Parent

local withLocalization = require(InGameMenu.Localization.withLocalization)

local Flags = InGameMenu.Flags
local GetFFlagIGMGamepadSelectionHistory = require(Flags.GetFFlagIGMGamepadSelectionHistory)
local FocusHandler = require(script.Parent.Parent.Connection.FocusHandler)
local VoiceIndicator = require(RobloxGui.Modules.VoiceChat.Components.VoiceIndicator)
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)

local PlayerLabel = require(InGameMenu.Components.PlayerLabelV2)
local PlayerContextualMenu = require(InGameMenu.Components.PlayerContextualMenu)

local FFlagLuaMenuPerfImprovements = require(InGameMenu.Flags.FFlagLuaMenuPerfImprovements)

local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local Divider = require(InGameMenu.Components.Divider)

local BarOnTopScrollingFrame = require(InGameMenu.Components.BarOnTopScrollingFrame)
local Page = require(InGameMenu.Components.Page)

local CloseMenu = require(InGameMenu.Thunks.CloseMenu)

local Assets = require(InGameMenu.Resources.Assets)

local Constants = require(InGameMenu.Resources.Constants)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local BlockingUtility = require(CorePackages.Workspace.Packages.BlockingUtility)
local UnblockPlayer = require(RobloxGui.Modules.PlayerList.Thunks.UnblockPlayer)
local TrustAndSafety = require(RobloxGui.Modules.TrustAndSafety)
local onBlockButtonActivated = require(RobloxGui.Modules.Settings.onBlockButtonActivated)

local log = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)

local inGameGlobalGuiInset = settings():GetFVariable("InGameGlobalGuiInset")

local DIVIDER_INDENT = 104
local PLAYER_LABEL_HEIGHT = 71
local PLAYER_LABEL_WIDTH = 400

local ACTION_WIDTH = 352
local ACTION_HEIGHT = 56
local CONTEXT_SIDE_PADDING = 24 -- context menu should keep 24 px away from bottom/right side of screen
local CONTEXT_PADDING_TOP = inGameGlobalGuiInset + CONTEXT_SIDE_PADDING -- context side padding + in-game inset
-- context menu is 20 px away from right bound of player list if there are available space
local CONTEXT_LEFT_PADDING = 20

local PlayersPage = Roact.PureComponent:extend("PlayersPage")

PlayersPage.validateProps = t.strictInterface({
	isMenuOpen = t.boolean,
	voiceEnabled = t.optional(t.boolean),
	inspectMenuEnabled = t.boolean,
	friends = t.map(t.integer, t.enum(Enum.FriendStatus)),
	closeMenu = t.callback,
	unblockPlayer = t.callback,
	pageTitle = t.string,
	screenSize = t.Vector2,
	currentPage = t.optional(t.string),
	isRespawnDialogOpen = t.optional(t.boolean),
	isReportDialogOpen = t.optional(t.boolean),
	isGamepadLastInput = t.optional(t.boolean),
	isCurrentZoneActive = t.optional(t.boolean),
})

function PlayersPage:init()
	self:setState({
		players = Players:GetPlayers(),
		selectedPlayer = nil,
		selectedPlayerPosition = Vector2.new(0, 0),
		pageSizeY = 0,
		voiceChatEnabled = false,
		allMuted = false,
		selectedPlayerRef = nil,
		firstPlayerRef = nil,
	})

	self.setSelectedPlayerRef = function(rbx)
		if GetFFlagIGMGamepadSelectionHistory() then
			self:setState({
				selectedPlayerRef = rbx,
			})
		else
			self:setState({
				selectedPlayerRef = rbx,
				firstPlayerRef = Roact.None,
			})
		end
	end

	self.setFirstPlayerRef = function(rbx)
		self:setState({
			firstPlayerRef = rbx,
		})
	end

	if FFlagLuaMenuPerfImprovements then
		self.positionChanged = function(rbx)
			self:setState({
				selectedPlayerPosition = rbx.AbsolutePosition,
			})
		end
		self.toggleMoreActions = function(userId)
			local player = Players:GetPlayerByUserId(userId)
			if self.state.selectedPlayer == player then
				self:setState({
					selectedPlayer = Roact.None,
				})
			else
				self:setState({
					selectedPlayer = player,
				})
			end
		end
	end
end

local function sortPlayers(p1, p2)
	return p1.Name:lower() < p2.Name:lower()
end

function PlayersPage:renderListEntries(players)
	local sortedPlayers = Cryo.List.sort(players, sortPlayers)

	local layoutOrder = 0
	local listComponents = {}

	listComponents.ListLayout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
	})

	for index, player in pairs(sortedPlayers) do
		local id = FFlagLuaMenuPerfImprovements and player.UserId or index

		local positionChanged = FFlagLuaMenuPerfImprovements and self.positionChanged
			or function(rbx)
				self:setState({
					selectedPlayerPosition = rbx.AbsolutePosition,
				})
			end

		local toggleMoreActions = FFlagLuaMenuPerfImprovements and self.toggleMoreActions
			or function()
				if self.state.selectedPlayer == player then
					self:setState({
						selectedPlayer = Roact.None,
					})
				else
					self:setState({
						selectedPlayer = player,
					})
				end
			end

		local RoactRef
		if index == 1 and not self.state.selectedPlayer then
			RoactRef = self.setFirstPlayerRef
		elseif self.state.selectedPlayer == player then
			RoactRef = self.setSelectedPlayerRef
		end

		local iconStyle = player ~= Players.LocalPlayer and "SpeakerLight" or "MicLight"

		listComponents["player_" .. id] = Roact.createElement(PlayerLabel, {
			username = player.Name,
			displayName = player.DisplayName,
			userId = player.UserId,
			isOnline = true,
			isSelected = self.state.selectedPlayer == player,
			LayoutOrder = layoutOrder,

			onActivated = toggleMoreActions,

			[Roact.Change.AbsolutePosition] = self.state.selectedPlayer == player and positionChanged or nil,
			[Roact.Ref] = RoactRef,
		}, {
			Icon = self.props.voiceEnabled and player ~= Players.LocalPlayer and Roact.createElement(VoiceIndicator, {
				userId = tostring(player.UserId),
				hideOnError = true,
				iconStyle = iconStyle,
				onClicked = toggleMoreActions,
			}),
		})

		layoutOrder = layoutOrder + 1

		if index < #sortedPlayers then
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
	local moreActions = {}

	if self.state.selectedPlayer ~= nil then
		if self.state.selectedPlayer ~= Players.LocalPlayer then
			local friendStatus = Enum.FriendStatus.Unknown
			if self.props.friends[self.state.selectedPlayer.UserId] then
				friendStatus = self.props.friends[self.state.selectedPlayer.UserId]
			end

			local friendActionText = localized.addFriend
			local friendActionIcon = Images["icons/actions/friends/friendAdd"]
			if friendStatus == Enum.FriendStatus.Friend then
				friendActionText = localized.unfriend
				friendActionIcon = Images["icons/actions/friends/friendRemove"]
			elseif friendStatus == Enum.FriendStatus.FriendRequestSent then
				friendActionText = localized.cancelFriend
				friendActionIcon = Images["icons/actions/friends/friendRemove"]
			elseif friendStatus == Enum.FriendStatus.FriendRequestReceived then
				friendActionText = localized.acceptFriend
			end

			table.insert(moreActions, {
				text = friendActionText,
				icon = friendActionIcon,
				onActivated = function()
					local player = self.state.selectedPlayer
					if
						friendStatus == Enum.FriendStatus.Friend
						or friendStatus == Enum.FriendStatus.FriendRequestSent
					then
						Players.LocalPlayer:RevokeFriendship(player)
					else
						Players.LocalPlayer:RequestFriendship(player)
						AnalyticsService:ReportCounter("PlayersMenu-RequestFriendship")
						SendAnalytics(Constants.AnalyticsMenuActionName, Constants.AnalyticsRequestFriendName, {})
					end
					self:setState({
						selectedPlayer = Roact.None,
					})
				end,
			})
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

		if self.state.selectedPlayer ~= Players.LocalPlayer then
			table.insert(moreActions, {
				text = localized.reportAbuse,
				icon = Images["icons/actions/feedback"],
				onActivated = function()
					local player = self.state.selectedPlayer
					TrustAndSafety.openReportDialogForPlayer(player, Constants.AnalyticsMenuActionName)
					self:setState({
						selectedPlayer = Roact.None,
					})
				end,
			})
			if self.props.voiceEnabled then
				local voiceParticipant =
					VoiceChatServiceManager.participants[tostring(self.state.selectedPlayer.UserId)]
				if voiceParticipant then
					local isMuted = voiceParticipant.isMutedLocally
					table.insert(moreActions, {
						text = isMuted and "Unmute Player" or "Mute Player",
						icon = VoiceChatServiceManager:GetIcon(isMuted and "Unmute" or "Mute", "Misc")
,
						onActivated = function()
							local player = self.state.selectedPlayer
							log:debug("Muting Player {}", player.UserId)
							VoiceChatServiceManager:ToggleMutePlayer(
								player.UserId,
								VoiceConstants.VOICE_CONTEXT_TYPE.IN_GAME_MENU
							)
							self:setState({
								selectedPlayer = Roact.None,
							})
						end,
					})
				end
			end

			local player = self.state.selectedPlayer
			local isBlocked = BlockingUtility:IsPlayerBlockedByUserId(player.UserId)
			table.insert(moreActions, {
				text = isBlocked and localized.unblockPlayer or localized.blockPlayer,
				icon = Images["icons/actions/block"],
				onActivated = function()
					if isBlocked then
						self.props.unblockPlayer(player)
					else
						onBlockButtonActivated(player, nil, self.__componentName)
					end

					self:setState({
						selectedPlayer = Roact.None,
					})
				end,
			})
		end
	end

	return moreActions
end

function PlayersPage:renderFocusHandler(canCaptureFocus)
	local shouldForgetPreviousSelection = nil -- Can be inlined when flag is removed
	if GetFFlagIGMGamepadSelectionHistory() then
		shouldForgetPreviousSelection = self.props.currentPage == Constants.MainPagePageKey
			or not self.props.isCurrentZoneActive
	end

	return Roact.createElement(FocusHandler, {
		isFocused = canCaptureFocus
			and self.props.currentPage == "Players"
			and self.props.isMenuOpen
			and not self.props.isReportDialogOpen
			and not self.state.selectedPlayer
			and (self.state.selectedPlayerRef or self.state.firstPlayerRef) ~= nil,
		shouldForgetPreviousSelection = shouldForgetPreviousSelection,
		didFocus = GetFFlagIGMGamepadSelectionHistory()
				and function(previousSelection)
					-- Focus first player when landing on the page
					GuiService.SelectedCoreObject = previousSelection or self.state.firstPlayerRef
				end
			or function()
				-- Focus first player when landing on the page
				GuiService.SelectedCoreObject = self.state.selectedPlayerRef or self.state.firstPlayerRef
			end,
	})
end

function PlayersPage:renderWithLocalizedAndSelectionCursor(localized, getSelectionCursor)
	local moreMenuPositionYOffset = 0
	local moreMenuPositionXOffset = 0
	local moreActions = {}
	if self.state.selectedPlayer ~= nil then
		moreActions = self:getMoreActions(localized)
		local actionMenuHeight = #moreActions * ACTION_HEIGHT
		local screenWidth = self.props.screenSize.X
		local screenHeight = self.props.screenSize.Y

		-- always keep 24 px distance from side of screen if viewport is too limited
		-- otherwise just postion to the right of all menu content with padding 20
		if self.state.selectedPlayerPosition.Y + actionMenuHeight + CONTEXT_PADDING_TOP < screenHeight then
			moreMenuPositionYOffset = self.state.selectedPlayerPosition.Y
		else
			moreMenuPositionYOffset = screenHeight - actionMenuHeight - CONTEXT_PADDING_TOP
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

	local moreActionsMenuPanel = nil
	local canCaptureFocus = self.props.isGamepadLastInput
		and not self.props.isRespawnDialogOpen
		and self.props.isCurrentZoneActive

	moreActionsMenuPanel = self.state.selectedPlayer
			and Roact.createElement(PlayerContextualMenu, {
				moreActions = moreActions,
				actionWidth = ACTION_WIDTH,
				xOffset = moreMenuPositionXOffset,
				yOffset = moreMenuPositionYOffset,
				canCaptureFocus = canCaptureFocus,
				onClose = function()
					self:setState({ selectedPlayer = Roact.None })
				end,
			})
		or nil

	return Roact.createElement(Page, {
		pageTitle = self.props.pageTitle,
		titleChildren = self.props.voiceEnabled and Roact.createElement("ImageButton", {
			Size = UDim2.fromOffset(36, 36),
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(1, 0.5),
			BorderSizePixel = 0,
			Position = UDim2.new(1, 4, 0.5, 0),
			Image = VoiceChatServiceManager:GetIcon(self.state.allMuted and "UnmuteAll" or "MuteAll", "Misc"),
			[Roact.Event.Activated] = function()
				VoiceChatServiceManager:MuteAll(not self.state.allMuted, VoiceConstants.VOICE_CONTEXT_TYPE.IN_GAME_MENU)
				self:setState({
					allMuted = not self.state.allMuted,
				})
			end,
			SelectionImageObject = getSelectionCursor(CursorKind.RoundedRect),
		}),
	}, {
		PlayerListContent = withStyle(function(style)
			return Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),

				[Roact.Change.AbsoluteSize] = function(rbx)
					self:setState({
						pageSizeY = rbx.AbsoluteSize.Y,
					})
				end,
			}, {
				PlayerList = Roact.createElement(BarOnTopScrollingFrame, {
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(1, 0, 1, 0),
					CanvasSize = UDim2.new(1, 0, 0, #self.state.players * (PLAYER_LABEL_HEIGHT + 1)),
					ScrollingEnabled = self.state.selectedPlayer == nil,
				}, self:renderListEntries(self.state.players)),

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
				})
			end,
		}),
	})
end

function PlayersPage:renderWithLocalized(localized)
	return withSelectionCursorProvider(function(getSelectionCursor)
		return self:renderWithLocalizedAndSelectionCursor(localized, getSelectionCursor)
	end)
end

function PlayersPage:render()
	return withLocalization({
		addFriend = "CoreScripts.InGameMenu.Actions.AddFriend",
		acceptFriend = "CoreScripts.InGameMenu.Actions.AcceptFriend",
		unfriend = "CoreScripts.InGameMenu.Actions.Unfriend",
		cancelFriend = "CoreScripts.InGameMenu.Actions.CancelFriend",
		viewAvatar = "CoreScripts.InGameMenu.Actions.ViewAvatar",
		reportAbuse = "CoreScripts.InGameMenu.Actions.ReportAbuse",
		blockPlayer = "CoreScripts.InGameMenu.Actions.BlockPlayer",
		unblockPlayer = "CoreScripts.InGameMenu.Actions.UnblockPlayer",
	})(function(localized)
		return self:renderWithLocalized(localized)
	end)
end

function PlayersPage:didUpdate(prevProps, prevState)
	if self.props.isMenuOpen and not prevProps.isMenuOpen then
		self:setState({
			players = Players:GetPlayers(),
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

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		isMenuOpen = state.isMenuOpen,
		voiceEnabled = state.voiceState.voiceEnabled,
		friends = state.friends,
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
		closeMenu = function()
			dispatch(CloseMenu)
		end,

		unblockPlayer = function(player)
			return dispatch(UnblockPlayer(player))
		end,
	}
end)(PlayersPage)
