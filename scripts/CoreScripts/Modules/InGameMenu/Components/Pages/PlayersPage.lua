local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Cryo = InGameMenuDependencies.Cryo
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Style.withStyle

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

local DIVIDER_INDENT = 80
local PLAYER_LABEL_HEIGHT = 70

local ACTION_WIDTH = 352
local ACTION_HEIGHT = 56
local ACTIONS_MENU_BOTTOM_PADDING = 15

local PlayersPage = Roact.PureComponent:extend("PlayersPage")

PlayersPage.validateProps = t.strictInterface({
	isMenuOpen = t.boolean,
	inspectMenuEnabled = t.boolean,
	friends = t.map(t.integer, t.enum(Enum.FriendStatus)),
	dispatchOpenReportDialog = t.callback,
	closeMenu = t.callback,
	pageTitle = t.string,
})

function PlayersPage:init()
	self.selectedPlayerFrame = nil

	self:setState({
		players = Players:GetPlayers(),
		selectedPlayer = nil,
		selectedPlayerPosition = 0,
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
				selectedPlayerPosition = rbx.AbsolutePosition.Y,
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
	local moreMenuPosition = 0
	local moreActions = {}
	if self.state.selectedPlayer ~= nil then
		moreActions = self:getMoreActions()
		moreMenuPosition = self.state.selectedPlayerPosition
		local selectedPlayerMaxPosition = self.state.selectedPlayerPosition + PLAYER_LABEL_HEIGHT/2
		local maxPosition = moreMenuPosition + (#moreActions * ACTION_HEIGHT)/2 + ACTIONS_MENU_BOTTOM_PADDING
		if selectedPlayerMaxPosition > self.state.pageSizeY then
			--Slide the more menu off screen as the selected player slides off screen.
			moreMenuPosition = moreMenuPosition - (maxPosition - self.state.pageSizeY)
			moreMenuPosition = moreMenuPosition + (selectedPlayerMaxPosition - self.state.pageSizeY)
		elseif maxPosition > self.state.pageSizeY then
			--If the selectedPlayer is fully visible, the more menu will be fully visible.
			moreMenuPosition = moreMenuPosition - (maxPosition - self.state.pageSizeY)
		end
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

				-- The more menu can't go inside the scrolling frame because it has a different clipping bounds.
				MoreActionsMenu = Roact.createElement(MoreActionsMenu, {
					Position = UDim2.new(1, 20, 0, moreMenuPosition),
					AnchorPoint = Vector2.new(0, 0.5),
					Visible = self.state.selectedPlayer ~= nil,
					menuWidth = UDim.new(0, ACTION_WIDTH),
					actionHeight = UDim.new(0, ACTION_HEIGHT),
					actions = moreActions,
				}),
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
		if self.state.selectedPlayerPosition ~= self.selectedPlayerFrame.AbsolutePosition.Y then
			self:setState({
				selectedPlayerPosition = self.selectedPlayerFrame.AbsolutePosition.Y,
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