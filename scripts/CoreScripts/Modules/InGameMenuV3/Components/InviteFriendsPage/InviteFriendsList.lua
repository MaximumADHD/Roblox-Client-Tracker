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
local InviteUserToPlaceId = require(InGameMenu.Thunks.InviteUserToPlaceId)
local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local PlayerCell = require(InGameMenu.Components.PlayerCell)
local PlayerContextualMenuWrapper = require(InGameMenu.Components.PlayerContextualMenuWrapper)
local PlayerSearchPredicate = require(InGameMenu.Utility.PlayerSearchPredicate)

local Divider = require(InGameMenu.Components.Divider)
local BarOnTopScrollingFrame = require(InGameMenu.Components.BarOnTopScrollingFrame)
local FocusHandler = require(InGameMenu.Components.Connection.FocusHandler)
local RootedConnection = require(InGameMenu.Components.Connection.RootedConnection)

local Constants = require(InGameMenu.Resources.Constants)

local PLAYER_CELL_HEIGHT = 72

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

	isFilteringMode = t.optional(t.boolean),
	searchText = t.optional(t.string),

	dispatchInviteUserToPlaceId = t.callback,
})

InviteFriendsList.defaultProps = {
	playersService = Players,
	isFilteringMode = false,
	searchText = "",
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
		if
			playerInfo ~= nil
			and self.state.selectedPlayer
			and self.state.selectedPlayer.UserId == playerInfo.UserId
		then
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
	if self.props.isFilteringMode and self.props.searchText ~= prevProps.searchText then
		-- handle filtering mode with context menu open, dismiss if not part of filter
		local isEntryVisible = self.state.selectedPlayer
				and PlayerSearchPredicate(
					self.props.searchText,
					self.state.selectedPlayer.Name,
					self.state.selectedPlayer.DisplayName
				)
			or false

		self:setState({
			selectedPlayer = isEntryVisible and self.state.selectedPlayer or Roact.None,
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
	local layoutOrder = 1
	local friendList = {}
	local visibleEntryIndex = 0

	friendList.ListLayout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
	})

	local map, visibilityCount = self:mapVisibilityToIndex(friends, self.props.searchText)
	for index, playerInfo in pairs(friends) do
		local isEntryVisibleForPlayer = true
		if self.props.isFilteringMode then
			isEntryVisibleForPlayer = map[index]
		end

		if isEntryVisibleForPlayer then
			local userInvited = self.props.invitesState[tostring(playerInfo.Id)]

			visibleEntryIndex = visibleEntryIndex + 1
			friendList["friend_" .. index] = Roact.createElement(PlayerCell, {
				username = playerInfo.Username,
				displayName = playerInfo.DisplayName,
				userId = playerInfo.Id,
				isOnline = playerInfo.IsOnline,
				isSelected = self.state.selectedPlayer and self.state.selectedPlayer.UserId == playerInfo.Id,
				LayoutOrder = layoutOrder,
				[Roact.Ref] = self.state.selectedPlayer
						and self.state.selectedPlayer.UserId == playerInfo.Id
						and self.setSelectedPlayerRef
					or nil,
				[Roact.Change.AbsolutePosition] = self.state.selectedPlayer
						and self.state.selectedPlayer.UserId == playerInfo.Id
						and self.positionChanged
					or nil,
				onActivated = function(_)
					self.toggleMoreActions(self:getPlayerByIndex(index))
				end,
			}, {
				InviteFriend = Roact.createElement(IconButton, {
					size = UDim2.fromOffset(0, 0),
					icon = userInvited and Images["icons/status/success"]
						or Images["icons/actions/friends/friendInvite"],
					anchorPoint = Vector2.new(1, 0.5),
					onActivated = function()
						local player = self:getPlayerByIndex(index)
						if userInvited then
							self.toggleMoreActions(player)
						else
							local placeId = tostring(game.PlaceId)
							local userId = tostring(player.UserId)
							if placeId then
								self.props.dispatchInviteUserToPlaceId(userId, placeId)
							end
						end
					end,
				}),
			})

			layoutOrder = layoutOrder + 1

			if visibleEntryIndex < visibilityCount then
				friendList["divider_" .. layoutOrder] = Roact.createElement(Divider, {
					LayoutOrder = layoutOrder,
					Size = UDim2.new(1, 0, 0, 1),
					Visible = true,
					theme = "BackgroundContrast",
				})

				layoutOrder = layoutOrder + 1
			end
		end
	end

	return friendList, visibilityCount
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
			CanvasSize = UDim2.new(1, 0, 0, visibleEntryCount * (PLAYER_CELL_HEIGHT + 1)),
			onCanvasPositionChanged = self.state.selectedPlayer and function()
				self:setState({
					selectedPlayer = Roact.None,
				})
			end or nil,
		}, listEntries),

		MoreActionsMenu = Roact.createElement(PlayerContextualMenuWrapper, {
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

function InviteFriendsList:mapVisibilityToIndex(friends, searchText)
	local visibilityCount = 0
	local map = {}
	for index, playerInfo in pairs(friends) do
		local isEntryVisibleForPlayer = PlayerSearchPredicate(searchText, playerInfo.Username, playerInfo.DisplayName)
		map[index] = isEntryVisibleForPlayer

		if isEntryVisibleForPlayer then
			visibilityCount = visibilityCount + 1
		end
	end

	return map, visibilityCount
end

function InviteFriendsList:getPlayerByIndex(index)
	if index <= 0 then
		return nil
	end

	-- friends interface is different from a Player instance
	local player = self.props.friends[index]
	if player then
		return {
			UserId = player.Id,
			Name = player.Username,
			DisplayName = player.DisplayName,
		}
	end

	return nil
end

return RoactRodux.connect(function(state, props)
	return {
		isMenuOpen = state.isMenuOpen,
		invitesState = state.invites,
		inviteFriends = state.inviteFriends.inviteFriends,
		shouldForgetPreviousSelection = state.menuPage == Constants.MainPagePageKey or state.currentZone == 0,
	}
end, function(dispatch)
	return {
		dispatchInviteUserToPlaceId = function(userId, placeId)
			dispatch(InviteUserToPlaceId(userId, placeId))
		end,
	}
end)(InviteFriendsList)
