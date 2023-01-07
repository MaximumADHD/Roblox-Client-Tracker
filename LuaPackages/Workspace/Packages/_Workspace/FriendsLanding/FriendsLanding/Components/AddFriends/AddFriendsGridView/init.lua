--!nonstrict
local AddFriends = script:FindFirstAncestor("FriendsLanding").AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact
local t = dependencies.t

local UIBlox = dependencies.UIBlox
local DefaultMetricsGridView = UIBlox.App.Grid.DefaultMetricsGridView
local GridMetrics = UIBlox.App.Grid.GridMetrics

local PLAYER_TILE_TEXT_HEIGHT = 80
local PLAYER_TILE_MARGIN = 12

local AddFriendsGridView = Roact.PureComponent:extend("AddFriendsGridView")

AddFriendsGridView.validateProps = t.strictInterface({
	items = t.table,
	windowSize = t.Vector2,
	renderAddFriendsTile = t.callback,
	layoutOrder = t.optional(t.integer),
	itemMargin = t.optional(t.integer),
	getItemMetrics = t.optional(t.callback),
})

AddFriendsGridView.defaultProps = {
	layoutOrder = 1,
	itemMargin = PLAYER_TILE_MARGIN,
	getItemMetrics = GridMetrics.getMediumMetrics,
}

function AddFriendsGridView:init()
	self.renderItem = function(user, index)
		local windowSize = self.props.windowSize
		local itemWidth = self.props.getItemMetrics(windowSize.X, self.props.itemMargin).itemWidth
		local itemHeight = self.getItemHeight(itemWidth)
		return self.props.renderAddFriendsTile(user, itemWidth, itemHeight, index)
	end

	self.getItemHeight = function(width)
		return width + PLAYER_TILE_TEXT_HEIGHT
	end
end

function AddFriendsGridView:render()
	return Roact.createElement(DefaultMetricsGridView, {
		getItemHeight = self.getItemHeight,
		items = self.props.items,
		getItemMetrics = self.props.getItemMetrics,
		renderItem = self.renderItem,
		itemPadding = Vector2.new(PLAYER_TILE_MARGIN, PLAYER_TILE_MARGIN),
		maxHeight = math.huge,
		defaultChildIndex = 1,
		LayoutOrder = self.props.layoutOrder,
	})
end

return AddFriendsGridView
