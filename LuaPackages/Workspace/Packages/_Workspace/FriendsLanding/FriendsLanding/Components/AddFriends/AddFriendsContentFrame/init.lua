local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact
local t = dependencies.t
local UIBlox = dependencies.UIBlox
local GridMetrics = UIBlox.App.Grid.GridMetrics
local withStyle = UIBlox.Style.withStyle
local validateImage = UIBlox.Core.ImageSet.Validator.validateImage
local AddFriendsSectionHeaderFrame = require(script.Parent.AddFriendsSectionHeaderFrame)
local AddFriendsGridView = require(script.Parent.AddFriendsGridView)
local AddFriendsEmptyState = require(script.Parent.AddFriendsEmptyState)
local IgnoreAllFriendsRequestsMenu = require(script.Parent.IgnoreAllFriendsRequestsMenu)

local PLAYER_TILE_MARGIN = 12
-- Number of rows to show by default or per show-more click
local HEADER_DROPDOWN_MENU_OFFSET = 48
local HEADER_DROPDOWN_MENU_WIDTH = 300

local noOpt = function() end

local AddFriendsContentFrame = Roact.PureComponent:extend("AddFriendsContentFrame")

AddFriendsContentFrame.validateProps = t.interface({
	headerFrame = t.optional(t.strictInterface({
		title = t.string,
		icon = validateImage,
		iconVisible = t.boolean,
	})),
	renderAddFriendsTile = t.callback,
	position = t.UDim2,
	friends = t.array(t.table),
	screenSize = t.Vector2,
	renderShowMore = t.callback,
	itemMargin = t.optional(t.integer),
	getItemMetrics = t.optional(t.callback),
	layoutOrder = t.optional(t.integer),
	handleIgnoreAllFriendsRequests = t.optional(t.callback),
})

AddFriendsContentFrame.defaultProps = {
	itemMargin = PLAYER_TILE_MARGIN,
	getItemMetrics = GridMetrics.getMediumMetrics,
	layoutOrder = 1,
	handleIgnoreAllFriendsRequests = noOpt,
}

function AddFriendsContentFrame:init()
	self.state = {
		isIgnoreAllMenuOpen = false,
	}

	self.onHeaderIconClicked = function()
		self:setState({
			isIgnoreAllMenuOpen = not self.state.isIgnoreAllMenuOpen,
		})
	end

	self.onIgnoreAll = function()
		self:setState({
			isIgnoreAllMenuOpen = false,
		})
		if self.props.handleIgnoreAllFriendsRequests then
			self.props.handleIgnoreAllFriendsRequests()
		end
	end
end

function AddFriendsContentFrame:render()
	return withStyle(function(style)
		return Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			Position = self.props.position,
			BackgroundColor3 = style.Theme.BackgroundDefault.Color,
			LayoutOrder = self.props.layoutOrder,
			BorderSizePixel = 0,
		}, {
			ContentContainer = Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = style.Theme.BackgroundDefault.Color,
				BorderSizePixel = 0,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 0),
				}),
				HeaderFrame = self.props.headerFrame and Roact.createElement(AddFriendsSectionHeaderFrame, {
					layoutOrder = 1,
					title = self.props.headerFrame.title,
					icon = self.props.headerFrame.icon,
					iconVisible = self.props.headerFrame.iconVisible,
					onIconActivated = self.onHeaderIconClicked,
				}) or nil,
				ContentView = #self.props.friends > 0 and Roact.createElement(AddFriendsGridView, {
					items = self.props.friends,
					layoutOrder = 2,
					windowSize = self.props.screenSize,
					renderAddFriendsTile = self.props.renderAddFriendsTile,
					itemMargin = self.props.itemMargin,
					getItemMetrics = self.props.getItemMetrics,
				}) or Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, -48),
					LayoutOrder = 2,
					BackgroundTransparency = 1,
				}, {
					EmptyState = Roact.createElement(AddFriendsEmptyState),
				}),
				BottomLoadMoreButton = self.props.renderShowMore(3),
			}),
			IgnoreAllContextMenu = Roact.createElement(IgnoreAllFriendsRequestsMenu, {
				open = self.state.isIgnoreAllMenuOpen,
				width = UDim.new(0, HEADER_DROPDOWN_MENU_WIDTH),
				onIgnoreAll = self.onIgnoreAll,
				openPositionY = UDim.new(0, HEADER_DROPDOWN_MENU_OFFSET),
			}),
		})
	end)
end

return AddFriendsContentFrame
