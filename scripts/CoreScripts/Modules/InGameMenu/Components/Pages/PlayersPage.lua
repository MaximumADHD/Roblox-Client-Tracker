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
local Images = UIBlox.App.ImageSet.Images
local BaseMenu = UIBlox.App.Menu.BaseMenu

local InGameMenu = script.Parent.Parent.Parent

local withLocalization = require(InGameMenu.Localization.withLocalization)

local getFFlagUseNewPlayerLabelDesign = require(InGameMenu.Flags.GetFFlagUseNewPlayerLabelDesign)
local fflagUseNewPlayerLabelDesign = getFFlagUseNewPlayerLabelDesign()
local PlayerLabel = fflagUseNewPlayerLabelDesign and require(InGameMenu.Components.PlayerLabelV2)
	or require(InGameMenu.Components.PlayerLabel)

local FFlagFixMenuIcons = require(InGameMenu.Flags.FFlagFixMenuIcons)
local FFlagFixInGameMenuMissingAssets = require(InGameMenu.Flags.FFlagFixInGameMenuMissingAssets)
local FFlagLuaMenuPerfImprovements = require(InGameMenu.Flags.FFlagLuaMenuPerfImprovements)

local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local Divider = require(InGameMenu.Components.Divider)

-- remove this when removing fflagUseNewPlayerLabelDesign
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

local DIVIDER_INDENT = fflagUseNewPlayerLabelDesign and 104 or 70
local PLAYER_LABEL_HEIGHT = fflagUseNewPlayerLabelDesign and 71 or 70
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

	if FFlagLuaMenuPerfImprovements then
		self.positionChanged = function(rbx)
			self:setState({
				selectedPlayerPosition = rbx.AbsolutePosition,
			})
		end
		self.toggleMoreActions = function(userId)
			local player = Players:GetPlayerFromUserId(userId)
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

		local positionChanged = FFlagLuaMenuPerfImprovements and self.positionChanged or function(rbx)
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

		-- remove this when removing fflagUseNewPlayerLabelDesign
		local displayMoreButton = player ~= Players.LocalPlayer or self.props.inspectMenuEnabled
		displayMoreButton = not fflagUseNewPlayerLabelDesign and displayMoreButton

		local toggleMoreActions = FFlagLuaMenuPerfImprovements and self.toggleMoreActions or function()
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

		listComponents["player_" .. id] = Roact.createElement(PlayerLabel, {
			username = player.Name,
			displayName = fflagUseNewPlayerLabelDesign and player.DisplayName or nil,
			userId = player.UserId,
			isOnline = true,
			isSelected = self.state.selectedPlayer == player,
			LayoutOrder = layoutOrder,

			onActivated = toggleMoreActions,

			[Roact.Change.AbsolutePosition] = self.state.selectedPlayer == player and positionChanged or nil,
			[Roact.Ref] = self.state.selectedPlayer == player and refUpdatedFunction or nil,
		},{
			-- remove this when removing fflagUseNewPlayerLabelDesign
			MoreActions = displayMoreButton and Roact.createElement(MoreButton, {
				onActivated = toggleMoreActions,
				LayoutOrder = 1,
			})
		})

		layoutOrder = layoutOrder + 1

		if index < #sortedPlayers then
			listComponents["divider_" .. id] = Roact.createElement(Divider, {
				LayoutOrder = layoutOrder,
				Size = UDim2.new(1, -DIVIDER_INDENT, 0, 1)
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

			local friendActionText = FFlagFixInGameMenuMissingAssets and localized.addFriend
				or "CoreScripts.InGameMenu.Actions.AddFriend"
			local friendActionIcon = FFlagFixMenuIcons and Images["icons/actions/friends/friendAdd"] or Assets.Images.AddFriend
			if friendStatus == Enum.FriendStatus.Friend then
				friendActionText = FFlagFixInGameMenuMissingAssets and localized.unfriend
					or "CoreScripts.InGameMenu.Actions.Unfriend"
				friendActionIcon = FFlagFixMenuIcons and Images["icons/actions/friends/friendRemove"] or Assets.Images.UnFriend
			elseif friendStatus == Enum.FriendStatus.FriendRequestSent then
				friendActionText = FFlagFixInGameMenuMissingAssets and localized.cancelFriend
					or "CoreScripts.InGameMenu.Actions.CancelFriend"
				friendActionIcon = FFlagFixMenuIcons and Images["icons/actions/friends/friendRemove"]
					or Assets.Images.CancelFriendRequest
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
			text = FFlagFixInGameMenuMissingAssets and localized.viewAvatar
				or "CoreScripts.InGameMenu.Actions.ViewAvatar",
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
				text = FFlagFixInGameMenuMissingAssets and localized.reportAbuse
					or "CoreScripts.InGameMenu.Actions.ReportAbuse",
				icon = FFlagFixMenuIcons and Images["icons/actions/feedback"] or Assets.Images.ReportIcon,
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

function PlayersPage:renderWithLocalized(localized)
	local moreMenuPositionYOffset = 0
	local moreMenuPositionXOffset = 0
	local moreActions = {}
	if self.state.selectedPlayer ~= nil then
		if FFlagFixInGameMenuMissingAssets then
			moreActions = self:getMoreActions(localized)
		else
			moreActions = self:getMoreActions()
		end
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

		if screenWidth >= self.state.selectedPlayerPosition.X + PLAYER_LABEL_WIDTH + CONTEXT_LEFT_PADDING + ACTION_WIDTH
			+ CONTEXT_SIDE_PADDING then
			moreMenuPositionXOffset = self.state.selectedPlayerPosition.X + PLAYER_LABEL_WIDTH + CONTEXT_LEFT_PADDING
		else
			moreMenuPositionXOffset = screenWidth - ACTION_WIDTH - CONTEXT_SIDE_PADDING
		end
	end

	-- This will be created directed under another gui as it should not get clipped as other menus
	local moreActionsMenuPanel = Roact.createElement(Roact.Portal, {
		target = CoreGui
	}, {
		InGameMenuContextGui = Roact.createElement("ScreenGui", {
			DisplayOrder = 2,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		},{
			MoreActionsMenu = FFlagFixInGameMenuMissingAssets and Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				Visible = self.state.selectedPlayer ~= nil,
			}, {
				BaseMenu = Roact.createElement(BaseMenu, {
					buttonProps = moreActions,

					width = UDim.new(0, ACTION_WIDTH),
					position = UDim2.fromOffset(moreMenuPositionXOffset, moreMenuPositionYOffset),
				})
			}) or Roact.createElement(MoreActionsMenu, {
				Position = UDim2.fromOffset(moreMenuPositionXOffset, moreMenuPositionYOffset),
				Visible = self.state.selectedPlayer ~= nil,
				menuWidth = UDim.new(0, ACTION_WIDTH),
				actionHeight = UDim.new(0, ACTION_HEIGHT),
				actions = moreActions,
			}),
		})
	})

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

function PlayersPage:render()
	return withLocalization({
		addFriend = "CoreScripts.InGameMenu.Actions.AddFriend",
		unfriend = "CoreScripts.InGameMenu.Actions.Unfriend",
		cancelFriend = "CoreScripts.InGameMenu.Actions.CancelFriend",
		viewAvatar = "CoreScripts.InGameMenu.Actions.ViewAvatar",
		reportAbuse = "CoreScripts.InGameMenu.Actions.ReportAbuse",
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
