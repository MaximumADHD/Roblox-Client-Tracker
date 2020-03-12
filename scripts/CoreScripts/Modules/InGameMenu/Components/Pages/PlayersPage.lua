local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local CoreGui = game:GetService("CoreGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Cryo = InGameMenuDependencies.Cryo
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent.Parent

local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local PlayerLabel = require(InGameMenu.Components.PlayerLabel)
local Divider = require(InGameMenu.Components.Divider)
local MoreButton = require(InGameMenu.Components.MoreButton)
local MoreActionsMenu = require(InGameMenu.Components.MoreActionsMenu)
local BarOnTopScrollingFrame = require(InGameMenu.Components.BarOnTopScrollingFrame)
local Page = require(InGameMenu.Components.Page)

local OpenReportDialog = require(InGameMenu.Actions.OpenReportDialog)
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)

local Assets = require(InGameMenu.Resources.Assets)

local Constants = require(InGameMenu.Resources.Constants)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)

local inGameGlobalGuiInset = settings():GetFVariable("InGameGlobalGuiInset")

local DIVIDER_INDENT = 80
local PLAYER_LABEL_HEIGHT = 70
local PLAYER_LABEL_WIDTH = 400

local ACTION_WIDTH = 352
local ACTION_HEIGHT = 56
local ACTIONS_MENU_BOTTOM_PADDING = 15
local CONTEXT_SIDE_PADDING = 24 -- context menu should keep 24 px away from bottom/right side of screen
local CONTEXT_PADDING_TOP = inGameGlobalGuiInset + CONTEXT_SIDE_PADDING -- context side padding + in-game inset
local CONTEXT_LEFT_PADDING = 20 -- context menu is 20 px away from right bound of player list if there are available space

local getFFlagInGameMenuSinglePaneDesign = require(InGameMenu.Flags.GetFFlagInGameMenuSinglePaneDesign)
local fflagInGameMenuSinglePaneDesign = getFFlagInGameMenuSinglePaneDesign()

local PlayersPage = Roact.PureComponent:extend("PlayersPage")

PlayersPage.validateProps = t.strictInterface({
	isMenuOpen = t.boolean,
	inspectMenuEnabled = t.boolean,
	friends = t.map(t.integer, t.enum(Enum.FriendStatus)),
	dispatchOpenReportDialog = t.callback,
	closeMenu = t.callback,
	pageTitle = t.string,
	screenSize = t.Vector2,
})

function PlayersPage:init()
	self.selectedPlayerFrame = nil

	self:setState({
		players = Players:GetPlayers(),
		selectedPlayer = nil,
		selectedPlayerPosition = Vector2.new(0, 0),
		pageSizeY = 0,
	})
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
		local function positionChanged(rbx)
			self:setState({
				selectedPlayerPosition = rbx.AbsolutePosition,
			})
		end

		--Done this way because of a bug with Roact Refs not being set correctly.
		--See https://github.com/Roblox/roact/issues/228
		local function refUpdatedFunction(rbx)
			if player == self.state.selectedPlayer then
				self.selectedPlayerFrame = rbx
			end
		end

		local displayMoreButton = player ~= Players.LocalPlayer or self.props.inspectMenuEnabled

		local function toggleMoreActions()
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

		listComponents["player_"..index] = Roact.createElement(PlayerLabel, {
			username = player.Name,
			userId = player.UserId,
			isOnline = true,
			isSelected = self.state.selectedPlayer == player,
			LayoutOrder = layoutOrder,

			onActivated = toggleMoreActions,

			[Roact.Change.AbsolutePosition] = self.state.selectedPlayer == player and positionChanged or nil,
			[Roact.Ref] = self.state.selectedPlayer == player and refUpdatedFunction or nil,
		}, {
			MoreActions = displayMoreButton and Roact.createElement(MoreButton, {
				onActivated = toggleMoreActions,
				LayoutOrder = 1,
			})
		})

		layoutOrder = layoutOrder + 1

		if index < #sortedPlayers then
			listComponents["divider_" .. layoutOrder] = Roact.createElement(Divider, {
				LayoutOrder = layoutOrder,
				Size = UDim2.new(1, -DIVIDER_INDENT, 0, 1)
			})

			layoutOrder = layoutOrder + 1
		end
	end

	return listComponents
end

function PlayersPage:getMoreActions()
	local moreActions = {}

	if self.state.selectedPlayer ~= nil then
		if self.state.selectedPlayer ~= Players.LocalPlayer then
			local friendStatus = Enum.FriendStatus.Unknown
			if self.props.friends[self.state.selectedPlayer.UserId] then
				friendStatus = self.props.friends[self.state.selectedPlayer.UserId]
			end

			local friendActionText = "CoreScripts.InGameMenu.Actions.AddFriend"
			local friendActionIcon = Assets.Images.AddFriend
			if friendStatus == Enum.FriendStatus.Friend then
				friendActionText = "CoreScripts.InGameMenu.Actions.Unfriend"
				friendActionIcon = Assets.Images.UnFriend
			elseif friendStatus == Enum.FriendStatus.FriendRequestSent then
				friendActionText = "CoreScripts.InGameMenu.Actions.CancelFriend"
				friendActionIcon =  Assets.Images.CancelFriendRequest
			end

			table.insert(moreActions, {
				text = friendActionText,
				icon = friendActionIcon,
				onActivated = function()
					local player = self.state.selectedPlayer
					if friendStatus == Enum.FriendStatus.Friend
						or friendStatus == Enum.FriendStatus.FriendRequestSent then
						Players.LocalPlayer:RevokeFriendship(player)
					else
						Players.LocalPlayer:RequestFriendship(player)
						AnalyticsService:ReportCounter("PlayersMenu-RequestFriendship")
						SendAnalytics(Constants.AnalyticsMenuActionName, Constants.AnalyticsRequestFriendName,{})
					end
					self:setState({
						selectedPlayer = Roact.None,
					})
				end,
			})
		end

		table.insert(moreActions, {
			text = "CoreScripts.InGameMenu.Actions.ViewAvatar",
			icon = Assets.Images.ViewAvatar,
			onActivated = function()
				GuiService:InspectPlayerFromUserIdWithCtx(self.state.selectedPlayer.UserId, "escapeMenu")
				self:setState({
					selectedPlayer = Roact.None,
				})
				self.props.closeMenu()
				SendAnalytics(Constants.AnalyticsMenuActionName, Constants.AnalyticsExamineAvatarName,{})
			end,
		})

		if self.state.selectedPlayer ~= Players.LocalPlayer then
			table.insert(moreActions, {
				text = "CoreScripts.InGameMenu.Actions.ReportAbuse",
				icon = Assets.Images.ReportIcon,
				onActivated = function()
					local player = self.state.selectedPlayer
					self.props.dispatchOpenReportDialog(player.UserId, player.Name)
					self:setState({
						selectedPlayer = Roact.None,
					})
				end,
			})
		end
	end

	return moreActions
end

function PlayersPage:render()
	local moreMenuPositionYOffset = 0
	local moreMenuPositionXOffset = 0
	local moreActions = {}
	if self.state.selectedPlayer ~= nil then
		moreActions = self:getMoreActions()
		if fflagInGameMenuSinglePaneDesign then
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

			if screenWidth >= self.state.selectedPlayerPosition.X + PLAYER_LABEL_WIDTH + CONTEXT_LEFT_PADDING + ACTION_WIDTH + CONTEXT_SIDE_PADDING then
				moreMenuPositionXOffset = self.state.selectedPlayerPosition.X + PLAYER_LABEL_WIDTH + CONTEXT_LEFT_PADDING
			else
				moreMenuPositionXOffset = screenWidth - ACTION_WIDTH - CONTEXT_SIDE_PADDING
			end
		else
			local selectedPlayerMaxPosition = self.state.selectedPlayerPosition.Y + PLAYER_LABEL_HEIGHT/2
			local maxPosition = moreMenuPositionYOffset + (#moreActions * ACTION_HEIGHT)/2 + ACTIONS_MENU_BOTTOM_PADDING
			if selectedPlayerMaxPosition > self.state.pageSizeY then
				--Slide the more menu off screen as the selected player slides off screen.
				moreMenuPositionYOffset = moreMenuPositionYOffset - (maxPosition - self.state.pageSizeY)
				moreMenuPositionYOffset = moreMenuPositionYOffset + (selectedPlayerMaxPosition - self.state.pageSizeY)
			elseif maxPosition > self.state.pageSizeY then
				--If the selectedPlayer is fully visible, the more menu will be fully visible.
				moreMenuPositionYOffset = moreMenuPositionYOffset - (maxPosition - self.state.pageSizeY)
			end
		end
	end

	local moreActionsMenuPanel
	if fflagInGameMenuSinglePaneDesign then
		-- This will be created directed under another gui as it should not get clipped as other menus
		moreActionsMenuPanel = Roact.createElement(Roact.Portal, {
			target = CoreGui
		}, {
			InGameMenuContextGui = Roact.createElement("ScreenGui", {
				DisplayOrder = 2,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			},{
				MoreActionsMenu = Roact.createElement(MoreActionsMenu, {
					Position = UDim2.fromOffset(moreMenuPositionXOffset, moreMenuPositionYOffset),
					Visible = self.state.selectedPlayer ~= nil,
					menuWidth = UDim.new(0, ACTION_WIDTH),
					actionHeight = UDim.new(0, ACTION_HEIGHT),
					actions = moreActions,
				}),
			})
		})
	else
		-- The more menu can't go inside the scrolling frame because it has a different clipping bounds.
		moreActionsMenuPanel = Roact.createElement(MoreActionsMenu, {
			Position = UDim2.new(1, CONTEXT_LEFT_PADDING, 0, moreMenuPositionYOffset),
			AnchorPoint = Vector2.new(0, 0.5),
			Visible = self.state.selectedPlayer ~= nil,
			menuWidth = UDim.new(0, ACTION_WIDTH),
			actionHeight = UDim.new(0, ACTION_HEIGHT),
			actions = moreActions,
		})
	end

	return Roact.createElement(Page, {
		pageTitle = self.props.pageTitle,
	}, {
		PlayerListContent = withStyle(function(style)
			return Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 400, 1, 0),

				[Roact.Change.AbsoluteSize] = function(rbx)
					self:setState({
						pageSizeY = rbx.AbsoluteSize.Y
					})
				end,
			}, {
				PlayerList = Roact.createElement(BarOnTopScrollingFrame, {
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(1, 0, 1, 0),
					CanvasSize = UDim2.new(1, 0, 0, #self.state.players * (PLAYER_LABEL_HEIGHT + 1)),
					scrollBarOffset = 4,
					ScrollingEnabled = self.state.selectedPlayer == nil,
				}, self:renderListEntries(self.state.players)),

				MoreActionsMenu = moreActionsMenuPanel,
			})
		end),
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
		})
	})
end

function PlayersPage:didUpdate(prevProps, prevState)
	if self.props.isMenuOpen and not prevProps.isMenuOpen then
		self:setState({
			players = Players:GetPlayers(),
			selectedPlayer = Roact.None,
		})
	end

	if self.selectedPlayerFrame then
		if self.state.selectedPlayerPosition ~= self.selectedPlayerFrame.AbsolutePosition then
			self:setState({
				selectedPlayerPosition = self.selectedPlayerFrame.AbsolutePosition,
			})
		end
	end
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			isMenuOpen = state.isMenuOpen,
			friends = state.friends,
			inspectMenuEnabled = state.displayOptions.inspectMenuEnabled,
			screenSize = state.screenSize,
		}
	end,
	function(dispatch)
		return {
			dispatchOpenReportDialog = function(userId, userName)
				dispatch(OpenReportDialog(userId, userName))
			end,

			closeMenu = function()
				dispatch(CloseMenu)
			end,
		}
	end
)(PlayersPage)