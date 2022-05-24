local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox

local RoactGamepad = require(CorePackages.Packages.RoactGamepad)

local IconButton = UIBlox.App.Button.IconButton
local Images = UIBlox.App.ImageSet.Images

local InGameMenu = script.Parent.Parent.Parent
local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local PlayerCell = require(InGameMenu.Components.PlayerCell)
local PlayerContextualMenuWrapper = require(InGameMenu.Components.PlayerContextualMenuWrapper)

local Divider = require(InGameMenu.Components.Divider)
local BarOnTopScrollingFrame = require(InGameMenu.Components.BarOnTopScrollingFrame)
local PlayerSearchPredicate = require(InGameMenu.Utility.PlayerSearchPredicate)
local FocusHandler = require(InGameMenu.Components.Connection.FocusHandler)
local RootedConnection = require(InGameMenu.Components.Connection.RootedConnection)

local Constants = require(InGameMenu.Resources.Constants)

local PLAYER_LABEL_HEIGHT = 72

local InviteFriendsList = Roact.PureComponent:extend("InviteFriendsList")

InviteFriendsList.validateProps = t.strictInterface({
	friends = t.array(t.strictInterface({
		IsOnline = t.boolean,
		Id = t.integer,
		Username = t.string,
		DisplayName = t.string,
	})),
	invitesState = t.table,
	shouldForgetPreviousSelection = t.optional(t.boolean),
	canCaptureFocus = t.boolean,
	playersService = t.union(t.Instance, t.table),
	isMenuOpen = t.optional(t.boolean),
})

InviteFriendsList.defaultProps = {
	playersService = Players,
}

function InviteFriendsList:init()
	self.playerRefs = RoactGamepad.createRefCache()

	self.state = {
		selectedPlayer = nil,
		selectedPlayerPosition = Vector2.new(0, 0),
		selectedPlayerRef = nil,
	}

	self.setSelectedPlayerRef = function(rbx)
		self:setState({
			selectedPlayerRef = rbx,
		})
	end

	self.positionChanged = function(rbx)
		self:setState({
			selectedPlayerPosition = rbx.AbsolutePosition,
		})
	end

	self.toggleMoreActions = function(playerInfo)
		if playerInfo ~= nil and self.state.selectedPlayer == playerInfo then
			self:setState({
				selectedPlayer = Roact.None,
			})
		else
			self:setState({
				selectedPlayer = playerInfo or Roact.None,
			})
		end
	end
end

function InviteFriendsList:didUpdate(prevProps, prevState)
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

function InviteFriendsList:renderListEntries()
	local friends = self.props.friends

	local friendsCount = #friends
	local layoutOrder = 1

	local friendList = {}
	local visibleEntryCount = 0

	friendList.ListLayout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
	})

	for index, playerInfo in pairs(friends) do
		local isEntryVisible = PlayerSearchPredicate(self.state.searchText, playerInfo.Username, playerInfo.DisplayName)

		if isEntryVisible then
			visibleEntryCount = visibleEntryCount + 1
		end

		friendList["friend_" .. index] = Roact.createElement(PlayerCell, {
			username = playerInfo.Username,
			displayName = playerInfo.DisplayName,
			userId = playerInfo.Id,
			isOnline = playerInfo.IsOnline,
			isSelected = self.state.selectedPlayer == playerInfo,
			LayoutOrder = layoutOrder,
			Visible = isEntryVisible,
			[Roact.Ref] = self.state.selectedPlayer == playerInfo and self.setSelectedPlayerRef or nil,
			[Roact.Change.AbsolutePosition] = self.state.selectedPlayer == playerInfo and self.positionChanged or nil,
			onActivated = function(_)
				self.toggleMoreActions(friends[index])
			end,
		}, {
			Icon = Roact.createElement(IconButton, {
				size = UDim2.fromOffset(0, 0),
				icon = Images["icons/actions/friends/friendInvite"],
				anchorPoint = Vector2.new(1, 0.5),
				onActivated = function(_)
					self.toggleMoreActions(friends[index])
				end,
			}),
		})

		layoutOrder = layoutOrder + 1

		if index < friendsCount then
			friendList["divider_" .. layoutOrder] = Roact.createElement(Divider, {
				LayoutOrder = layoutOrder,
				Size = UDim2.new(1, 0, 0, 1),
				Visible = isEntryVisible,
			})

			layoutOrder = layoutOrder + 1
		end
	end

	return friendList, visibleEntryCount
end

function InviteFriendsList:render()
	local listEntries, visibleEntryCount = self:renderListEntries()

	local friendsList = Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		List = Roact.createElement(BarOnTopScrollingFrame, {
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
			CanvasSize = UDim2.new(1, 0, 0, visibleEntryCount * (PLAYER_LABEL_HEIGHT + 1)),
		}, listEntries),

		MoreActionsMenu = Roact.createElement(PlayerContextualMenuWrapper, {
			xOffset = Constants.PageWidth,
			selectedPlayer = self.state.selectedPlayer,
			selectedPlayerPosition = self.state.selectedPlayerPosition,
			onActionComplete = function()
				self:setState({
					selectedPlayer = Roact.None,
				})
			end,
		}),
		Watcher = Roact.createElement(PageNavigationWatcher, {
			desiredPage = "InviteFriends",
			onNavigateAway = function()
				self:setState({
					selectedPlayer = Roact.None,
				})
			end,
		}),
	})

	return Roact.createElement(RootedConnection, {
		render = function(isRooted)
			return Roact.createElement(FocusHandler, {
				isFocused = self.props.canCaptureFocus and isRooted,
				shouldForgetPreviousSelection = self.props.shouldForgetPreviousSelection,
				didFocus = function() end,
			}, {
				FriendsList = friendsList,
			})
		end,
	})
end

return RoactRodux.connect(function(state, props)
	return {
		isMenuOpen = state.isMenuOpen,
		invitesState = state.invites,
		inviteFriends = state.inviteFriends.inviteFriends,
		shouldForgetPreviousSelection = state.menuPage == Constants.MainPagePageKey or state.currentZone == 0,
	}
end, nil)(InviteFriendsList)
