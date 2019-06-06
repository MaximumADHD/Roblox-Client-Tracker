local GridRoot = script.Parent
local UIBloxRoot = GridRoot.Parent

local Roact = require(UIBloxRoot.Parent.Roact)
local t = require(UIBloxRoot.Parent.t)

local GridView = require(GridRoot.GridView)

local positiveVector2 = require(UIBloxRoot.Utility.isPositiveVector2)

-- It is an error to have a window size > the maximum size the grid view can
-- grow to, so we check it here.
local function validateWindowSize(props)
	if props.windowSize.X > props.maxSize.X or props.windowSize.Y > props.maxSize.Y then
		return false, ("windowSize must be less than or equal to maxSize\nmaxSize: %f, %f\nwindowSize: %f, %f"):format(
			props.maxSize.X,
			props.maxSize.Y,
			props.windowSize.X,
			props.windowSize.Y
		)
	end

	return true
end

local isGridViewProps = t.intersection(
	t.strictInterface({
		-- A function that, given the width of grid cells, returns the height of
		-- grid cells.
		getItemHeight = t.callback,
		-- A grid metrics getter function (see GridMetrics).
		getItemMetrics = t.callback,
		-- How much of the grid view is visible. This determines the size of cells
		-- in the grid.
		windowSize = positiveVector2,
		-- A function that, given an item, returns a Roact element representing that
		-- item. The item should expect to fill its parent. Setting LayoutOrder is
		-- not necessary.
		renderItem = t.callback,
		-- The spacing between grid cells, on each axis.
		itemPadding = t.Vector2,
		-- All the items that can be displayed in the grid. renderItem should be
		-- able to use all values in this table.
		items = t.array(t.any),
		-- The maximum size the grid view is allowed to grow to.
		maxSize = positiveVector2,
		-- The layout order of the grid.
		LayoutOrder = t.optional(t.integer),
	}),
	validateWindowSize
)

local DefaultMetricsGridView = Roact.PureComponent:extend("DefaultMetricsGridView")

DefaultMetricsGridView.defaultProps = {
	maxSize = Vector2.new(math.huge, math.huge),
}

function DefaultMetricsGridView:render()
	assert(isGridViewProps(self.props))

	local itemMetrics = self.props.getItemMetrics(self.props.windowSize.X, self.props.itemPadding.X)
	local itemHeight = self.props.getItemHeight(itemMetrics.itemWidth)

	local size = Vector2.new(
		math.max(0, itemMetrics.itemWidth),
		math.max(0, itemHeight)
	)

	return Roact.createElement(GridView, {
		renderItem = self.props.renderItem,
		maxSize = self.props.maxSize,
		itemSize = size,
		itemPadding = self.props.itemPadding,
		items = self.props.items,
		LayoutOrder = self.props.LayoutOrder,
	})
end

return DefaultMetricsGridView