local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local RoactGamepad = require(CorePackages.Packages.RoactGamepad)

local InGameMenu = script.Parent.Parent.Parent

local PlayerLabel = require(InGameMenu.Components.PlayerLabelV2)
local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)

local Divider = require(InGameMenu.Components.Divider)
local SendInviteButton = require(script.Parent.SendInviteButton)
local SearchBox = require(script.Parent.SearchBox)
local BarOnTopScrollingFrame = require(InGameMenu.Components.BarOnTopScrollingFrame)
local PlayerSearchPredicate = require(InGameMenu.Utility.PlayerSearchPredicate)
local FocusHandler = require(InGameMenu.Components.Connection.FocusHandler)
local RootedConnection = require(InGameMenu.Components.Connection.RootedConnection)

local Constants = require(InGameMenu.Resources.Constants)
local InviteStatus = Constants.InviteStatus

local InviteUserToPlaceId = require(InGameMenu.Thunks.InviteUserToPlaceId)

local DIVIDER_INDENT = 104
local PLAYER_LABEL_HEIGHT = 71

local SEARCHBOX_HEIGHT = 36
local SEARCHBOX_TOP_PADDING = 8
local SEARCHBOX_BOTTOM_PADDING = 20

local PLACE_ID = tostring(game.PlaceId)

local InviteFriendsList = Roact.PureComponent:extend("InviteFriendsList")

InviteFriendsList.validateProps = t.strictInterface({
	friends = t.array(t.strictInterface({
		IsOnline = t.boolean,
		Id = t.integer,
		Username = t.string,
		DisplayName = t.string,
	})),
	invitesState = t.table,
	shouldForgetPreviousSelection = GetFFlagIGMGamepadSelectionHistory() and t.optional(t.boolean) or nil,
	dispatchInviteUserToPlaceId = t.callback,
	canCaptureFocus = t.boolean,
	searchBoxRef = t.table,
})

function InviteFriendsList:init()
	self.playerRefs = RoactGamepad.createRefCache()

	self.state = {
		searchText = "",
	}
	self.inviteAnimationInProgress = {}
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
		local userId = tostring(playerInfo.Id)
		local userInviteStatus = self.props.invitesState[userId]
		local isEntryVisible = PlayerSearchPredicate(self.state.searchText, playerInfo.Username, playerInfo.DisplayName)

		if isEntryVisible then
			visibleEntryCount = visibleEntryCount + 1
		end

		friendList["friend_"..index] = Roact.createElement(PlayerLabel, {
			username = playerInfo.Username,
			displayName = playerInfo.DisplayName,
			userId = playerInfo.Id,
			isOnline = playerInfo.IsOnline,
			isSelected = false,
			LayoutOrder = layoutOrder,
			Visible = isEntryVisible,
			[Roact.Ref] = self.playerRefs[index],

			onActivated = function()
				local isPending = userInviteStatus == InviteStatus.Pending
				local isSuccess = userInviteStatus == InviteStatus.Success
				local inviteAnimationInProgress = self.inviteAnimationInProgress[playerInfo.Id]
				if not (isPending or isSuccess or inviteAnimationInProgress) then
					self.props.dispatchInviteUserToPlaceId(userId, PLACE_ID)
				end
			end
		}, {
			InviteButton = Roact.createElement(SendInviteButton, {
				userInviteStatus = userInviteStatus,
				onActivated = function()
					self.props.dispatchInviteUserToPlaceId(userId, PLACE_ID)
				end,
				animationBegun = function()
					self.inviteAnimationInProgress[playerInfo.Id] = true
				end,
				animationEnded = function()
					self.inviteAnimationInProgress[playerInfo.Id] = nil
				end,
			})
		})

		layoutOrder = layoutOrder + 1

		if index < friendsCount then
			friendList["divider_" .. layoutOrder] = Roact.createElement(Divider, {
				LayoutOrder = layoutOrder,
				Size = UDim2.new(1, -DIVIDER_INDENT, 0, 1),
				Visible = isEntryVisible,
			})

			layoutOrder = layoutOrder + 1
		end
	end

	return friendList, visibleEntryCount
end

function InviteFriendsList:render()
	local listEntries, visibleEntryCount = self:renderListEntries()

	local listOffset = SEARCHBOX_HEIGHT + SEARCHBOX_TOP_PADDING + SEARCHBOX_BOTTOM_PADDING

	local friendsList = Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		SearchBox = Roact.createElement(SearchBox, {
			Size = UDim2.new(1, -48, 0, SEARCHBOX_HEIGHT),
			Position = UDim2.new(0.5, 0, 0, SEARCHBOX_TOP_PADDING),
			AnchorPoint = Vector2.new(0.5, 0),
			searchUpdated = function(newSearch)
				self:setState({
					searchText = newSearch,
				})
			end,
			searchCleared = function()
				self:setState({
					searchText = "",
				})
				if self.props.canCaptureFocus then
					GuiService.SelectedCoreObject = self.props.searchBoxRef:getValue()
				end
			end,
			itemRef = self.props.searchBoxRef,
		}),

		List = Roact.createElement(BarOnTopScrollingFrame, {
			Position = UDim2.new(0, 0, 0, listOffset),
			Size = UDim2.new(1, 0, 1, -listOffset),
			CanvasSize = UDim2.new(1, 0, 0, visibleEntryCount * (PLAYER_LABEL_HEIGHT + 1)),
		}, listEntries)
	})

	local shouldForgetPreviousSelection = nil -- can be inlined when GetFFlagIGMGamepadSelectionHistory is removed
	if GetFFlagIGMGamepadSelectionHistory() then
		shouldForgetPreviousSelection = self.props.shouldForgetPreviousSelection
	end

	return Roact.createElement(RootedConnection, {
		render = function(isRooted)
			return Roact.createElement(FocusHandler, {
				isFocused = self.props.canCaptureFocus and isRooted,
				shouldForgetPreviousSelection = shouldForgetPreviousSelection,
				didFocus = GetFFlagIGMGamepadSelectionHistory() and function(previousSelection)
					GuiService.SelectedCoreObject = previousSelection or self:getFirstVisiblePlayerRef() or self.props.searchBoxRef:getValue()
				end or function()
					GuiService.SelectedCoreObject = self:getFirstVisiblePlayerRef() or self.props.searchBoxRef:getValue()
				end,
			}, {
				FriendsList = friendsList,
			})
		end,
	})
end

function InviteFriendsList:getFirstVisiblePlayerRef()
	local friends = self.props.friends
	for index, playerInfo in pairs(friends) do
		local isEntryVisible = PlayerSearchPredicate(self.state.searchText, playerInfo.Username, playerInfo.DisplayName)
		if isEntryVisible then
			return self.playerRefs[index]:getValue()
		end
	end
	return nil
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		local shouldForgetPreviousSelection = nil -- can be inlined when flag is removed
		if GetFFlagIGMGamepadSelectionHistory() then
			shouldForgetPreviousSelection = state.menuPage == Constants.MainPagePageKey or state.currentZone == 0
		end

		return {
			invitesState = state.invites,
			shouldForgetPreviousSelection = shouldForgetPreviousSelection,
		}
	end,
	function(dispatch)
		return {
			dispatchInviteUserToPlaceId = function(userId, placeId)
				dispatch(InviteUserToPlaceId(userId, placeId))
			end
		}
	end
)(InviteFriendsList)
