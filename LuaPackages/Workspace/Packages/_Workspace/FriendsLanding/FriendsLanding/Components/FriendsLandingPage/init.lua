--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withStyle = UIBlox.Style.withStyle
local DefaultMetricsGridView = UIBlox.App.Grid.DefaultMetricsGridView
local EnumScreens = require(FriendsLanding.EnumScreens)
local GridMetrics = UIBlox.App.Grid.GridMetrics
local FilterByButton = require(FriendsLanding.Components.FilterByButton)
local FriendTile = require(FriendsLanding.Components.FriendTile)
local memoize = dependencies.memoize
local EmptyResultsView = require(FriendsLanding.Components.EmptyResultsView)
local RefreshScrollingFrame = dependencies.SocialLibraries.Components.RefreshScrollingFrame
local VerticalScrollView = UIBlox.App.Container.VerticalScrollView
local ButtonClickEvents = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)
local Constants = require(FriendsLanding.Common.Constants)

local getFFlagSocialAddGameJoinSource = dependencies.getFFlagSocialAddGameJoinSource

local FriendsLandingPage = Roact.PureComponent:extend("FriendsLandingPage")

local noOpt = function() end

local NEW_NAV_BAR_SIZE = 56
local PLAYER_TILE_TEXT_HEIGHT = 80
local GRID_HORIZONTAL_SPACING = 12
local GRID_VERTICAL_SPACING = 12
local SHOW_MORE_LAYOUT_ORDER = 4

FriendsLandingPage.defaultProps = {
	friends = {},
	totalFilteredFriends = 0,
	totalFriendCount = 0,
	isLuobu = false,
	renderShowMore = noOpt,
	analytics = nil,
	navigateToLuaAppPages = nil,
	refreshPage = noOpt,
}

function FriendsLandingPage:init()
	self.openPlayerProfile = memoize(function(participantId, index, user, size, position)
		return function()
			self.props.analytics:navigate(EnumScreens.ViewUserProfile)
			self.props.analytics:buttonClick(ButtonClickEvents.PlayerTile, {
				friendId = participantId,
				position = index - 1,
				subpage = "peekView",
				page = "playerProfile",
			})
			local contextualMenuProps = {
				user = user,
				positionIndex = index or 0,
				absolutePosition = (index or 0) + 1,
				onOpen = function() end, -- this is used for freezing/unfreezing the user carousel on homepage, not needed here
				onClose = function() end, -- this is used for freezing/unfreezing the user carousel on homepage, not needed here
				anchorSpaceSize = size,
				anchorSpacePosition = position,
				source = if getFFlagSocialAddGameJoinSource() then Constants.FriendsLandingPageSourceName else nil,
			}
			local navParams = { openJoinable = true, contextualMenuProps = contextualMenuProps }
			self.props.navigateToLuaAppPages[EnumScreens.ViewUserProfile](participantId, navParams)
		end
	end)

	self.pageLoadingTimeReport = function()
		self.props.analytics:pageLoadingTimeReport()
	end

	self.renderItem = function(item, index)
		return Roact.createElement(FriendTile, {
			user = item,
			index = index,
			openPlayerProfile = self.openPlayerProfile,
			isLuobu = self.props.isLuobu,
			pageLoadingTimeReport = self.pageLoadingTimeReport,
		})
	end

	self.getItemHeight = function(width)
		return width + PLAYER_TILE_TEXT_HEIGHT
	end

	self.filterButtonOnActivated = function()
		self.props.analytics:buttonClick(ButtonClickEvents.FriendFilterPill)
		if self.props.navigation then
			self.props.navigation.navigate(EnumScreens.FilterByModal)
		end
	end

	self.refreshPage = function()
		return self.props.refreshPage({
			errorMessage = self.props.localizedStrings.pageError,
		})
	end

	self.generateScrollingElementProps = memoize(function()
		return {
			size = UDim2.new(1, 0, 1, -NEW_NAV_BAR_SIZE),
			useAutomaticCanvasSize = true,
			-- The extra 1 offset is needed so it's still scrollable (so you can refresh the page)
			canvasSizeY = UDim.new(1, 1),
		}
	end)
end

function FriendsLandingPage:didMount()
	self.props.analytics:pageMountingTimeReport()
end

function FriendsLandingPage:render()
	return withStyle(function(style)
		local noResults = self.props.totalFilteredFriends == 0
		return Roact.createFragment({
			page = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = style.Theme.BackgroundDefault.Color,
			}, {
				gridFrame = Roact.createElement("Frame", {
					Size = UDim2.fromScale(1, 1),
					LayoutOrder = 2,
					BackgroundTransparency = 1,
				}, {
					ScrollView = Roact.createElement(RefreshScrollingFrame, {
						ScrollingElement = VerticalScrollView,
						scrollingElementProps = self.generateScrollingElementProps(),
						refresh = self.refreshPage,
					}, {
						layout = Roact.createElement("UIListLayout", {
							SortOrder = Enum.SortOrder.LayoutOrder,
							FillDirection = Enum.FillDirection.Vertical,
						}),
						-- this spacing frame corresponds to the comment in self.generateScrollingElementsProps
						pulldownSpacing = Roact.createElement("Frame", {
							Size = UDim2.new(1, 0, 0, 1),
							LayoutOrder = 1,
							BackgroundTransparency = 1,
						}) or nil,
						filterByButton = Roact.createElement(FilterByButton, {
							filter = self.props.filter,
							friendCount = self.props.totalFilteredFriends,
							isDisabled = self.props.totalFriendCount == 0,
							layoutOrder = 2,
							onActivated = self.filterButtonOnActivated,
						}),
						[noResults and "noResultsView" or "friendsGrid"] = noResults
								and Roact.createElement(EmptyResultsView, {
									layoutOrder = 3,
									pageLoadingTimeReport = self.pageLoadingTimeReport,
								})
							or Roact.createElement(DefaultMetricsGridView, {
								getItemHeight = self.getItemHeight,
								items = self.props.friends,
								getItemMetrics = GridMetrics.getMediumMetrics,
								renderItem = self.renderItem,
								itemPadding = Vector2.new(GRID_HORIZONTAL_SPACING, GRID_VERTICAL_SPACING),
								maxHeight = math.huge,
								defaultChildIndex = 1,
								LayoutOrder = 3,
							}),
						showMoreContainer = self.props.renderShowMore(SHOW_MORE_LAYOUT_ORDER),
					}),
				}),
			}),
		})
	end)
end

return FriendsLandingPage
