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
local VerticalScrollViewWithIndicator = UIBlox.App.Container.VerticalScrollViewWithIndicator
local LoadingStrategy = UIBlox.App.Loading.Enum.LoadingStrategy

local InGameMenu = script.Parent.Parent.Parent
local InviteUserToPlaceId = require(InGameMenu.Thunks.InviteUserToPlaceId)
local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local PlayerCell = require(InGameMenu.Components.PlayerCell)
local PlayerContextualMenuWrapper = require(InGameMenu.Components.PlayerContextualMenuWrapper)
local PlayerSearchPredicate = require(InGameMenu.Utility.PlayerSearchPredicate)
local Constants = require(InGameMenu.Resources.Constants)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local ExperienceMenuABTestManager = require(InGameMenu.ExperienceMenuABTestManager)

local VerifiedBadges = require(CorePackages.Workspace.Packages.VerifiedBadges)
local isPlayerVerified = VerifiedBadges.isPlayerVerified

local Divider = require(InGameMenu.Components.Divider)
local FocusHandler = require(InGameMenu.Components.Connection.FocusHandler)
local RootedConnection = require(InGameMenu.Components.Connection.RootedConnection)
local IsMenuCsatEnabled = require(InGameMenu.Flags.IsMenuCsatEnabled)
local GetFFlagInvitePlayerObjectFix = require(InGameMenu.Flags.GetFFlagInvitePlayerObjectFix)
local FIntFirstPlayerCellIndexEngineLoadingStrategy = require(InGameMenu.Flags.GetFIntFirstPlayerCellIndexEngineLoadingStrategy)()

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
	scrollingFrameRef = t.optional(t.table),

	dispatchInviteUserToPlaceId = t.callback,
})

InviteFriendsList.defaultProps = {
	playersService = Players,
	isFilteringMode = false,
	searchText = "",
}

function InviteFriendsList:init()
	self.playerRefs = RoactGamepad.createRefCache()
	self.scrollingFrameRef = Roact.createRef()

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
			self.layoutBindings[id] =  layoutBinding
		end

		if layoutBinding.value ~= layoutOrder then
			layoutBinding.value = layoutOrder
			layoutBinding.setValue(layoutOrder)
		end

		return layoutBinding.valueBinding
	end

	self.menuOpenChanged = function(menuOpen, wasOpen)
		if menuOpen and not wasOpen then
			local scrollingFrame = self.props.scrollingFrameRef and self.props.scrollingFrameRef:getValue() or nil
			if scrollingFrame and scrollingFrame.CanvasPosition.Y > 0 then
				scrollingFrame.CanvasPosition = Vector2.new(0, 0)
			end
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

	friendList.EndPad = Roact.createElement("Frame", {
		Size = UDim2.new(0, 1, 0, 72),
		BackgroundTransparency = 1,
		LayoutOrder = 1000,
	})

	local map, visibilityCount = self:mapVisibilityToIndex(friends, self.props.searchText)
	for index, playerInfo in pairs(friends) do
		local isEntryVisibleForPlayer = true
		if self.props.isFilteringMode then
			isEntryVisibleForPlayer = map[index]
		end
		local loadingStrategy = nil
		if FIntFirstPlayerCellIndexEngineLoadingStrategy ~= 0 and index >= FIntFirstPlayerCellIndexEngineLoadingStrategy then
			loadingStrategy = LoadingStrategy.Default
		end

		if isEntryVisibleForPlayer then
			local userInvited = self.props.invitesState[tostring(playerInfo.Id)]
			local key = 0
			if userInvited then key = key + 1 end

			visibleEntryIndex = visibleEntryIndex + 1
			friendList["friend_" .. playerInfo.Id] = Roact.createElement(PlayerCell, {
				username = playerInfo.Username,
				displayName = playerInfo.DisplayName,
				userId = playerInfo.Id,
				hasVerifiedBadge = isPlayerVerified(playerInfo),
				isOnline = playerInfo.IsOnline,
				isSelected = self.state.selectedPlayer and self.state.selectedPlayer.UserId == playerInfo.Id or nil,
				LayoutOrder = self.getLayoutBinding(playerInfo.Id, layoutOrder),
				forwardRef = self.state.selectedPlayer
						and self.state.selectedPlayer.UserId == playerInfo.Id
						and self.setSelectedPlayerRef
					or nil,
				[Roact.Change.AbsolutePosition] = self.state.selectedPlayer
						and self.state.selectedPlayer.UserId == playerInfo.Id
						and self.positionChanged
					or nil,
				onActivated = function(_)
					if GetFFlagInvitePlayerObjectFix() then
						self.toggleMoreActions({
							UserId = playerInfo.Id,
							Name = playerInfo.Username,
							DisplayName = playerInfo.DisplayName,
						})
					else
						self.toggleMoreActions(self:getPlayerByIndex(index))
					end
				end,
				memoKey = key,
				loadingStrategy = loadingStrategy,
			}, {
				InviteFriend = Roact.createElement(IconButton, {
					size = UDim2.fromOffset(0, 0),
					icon = userInvited and Images["icons/status/success"]
						or Images["icons/actions/friends/friendInvite"],
					anchorPoint = Vector2.new(1, 0.5),
					onActivated = function()
						local player = self:getPlayerByIndex(index)
						if GetFFlagInvitePlayerObjectFix() then
							player = {
								UserId = playerInfo.Id,
								Name = playerInfo.Username,
								DisplayName = playerInfo.DisplayName,
							}
						end
						if userInvited then
							self.toggleMoreActions(player)
						else
							local placeId = tostring(game.PlaceId)
							local userId = tostring(player.UserId)
							if placeId then
								self.props.dispatchInviteUserToPlaceId(userId, placeId)

								SendAnalytics(
									Constants.AnalyticsMenuActionName,
									Constants.AnalyticsInvitePlayerToPlaceId,
									{
										placeId = placeId,
										source = Constants.AnalyticsInviteFriendsListSource,
									}
								)

								if IsMenuCsatEnabled() then
									ExperienceMenuABTestManager.default:setCSATQualification()
								end
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
	local listEntries = self:renderListEntries()

	local friendsList = Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		List = Roact.createElement(VerticalScrollViewWithIndicator, {
			position = UDim2.new(0, 0, 0, 0),
			size = UDim2.new(1, 0, 1, 0),
			canvasSizeY = UDim.new(0, 0),
			useAutomaticCanvasSize = true,
			[Roact.Change.CanvasPosition] = self.state.selectedPlayer and function()
				self:setState({
					selectedPlayer = Roact.None,
				})
			end or nil,
			scrollingFrameRef = self.props.scrollingFrameRef,
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
			desiredPage = Constants.InviteFriendsPageKey,
			onNavigate = self.menuOpenChanged,
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
		invitesState = state.invites,
		shouldForgetPreviousSelection = state.menuPage ~= Constants.InviteFriendsPageKey or state.currentZone == 0,
	}
end, function(dispatch)
	return {
		dispatchInviteUserToPlaceId = function(userId, placeId)
			dispatch(InviteUserToPlaceId(userId, placeId))
		end,
	}
end)(InviteFriendsList)
