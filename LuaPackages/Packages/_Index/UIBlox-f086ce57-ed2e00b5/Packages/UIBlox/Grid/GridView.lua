local GridRoot = script.Parent
local UIBloxRoot = GridRoot.Parent

local Roact = require(UIBloxRoot.Parent.Roact)
local t = require(UIBloxRoot.Parent.t)

local positiveVector2 = require(UIBloxRoot.Utility.isPositiveVector2)

local isGridViewProps = t.strictInterface({
	-- A function that, given an item, returns a Roact element representing that
	-- item. The item should expect to fill its parent. Setting LayoutOrder is
	-- not necessary.
	renderItem = t.callback,
	-- The size of a grid item, in pixels.
	itemSize = positiveVector2,
	-- The spacing between grid cells, on each axis.
	itemPadding = t.Vector2,
	-- All the items that can be displayed in the grid. renderItem should be
	-- able to use all values in this table.
	items = t.array(t.any),
	-- The maximum size the grid view is allowed to grow to.
	maxSize = positiveVector2,
	-- The layout order of the grid.
	LayoutOrder = t.optional(t.integer),
})

local GridView = Roact.PureComponent:extend("GridView")

GridView.defaultProps = {
	maxSize = Vector2.new(math.huge, math.huge),
}

function GridView:render()
	assert(isGridViewProps(self.props))
	local items = self.props.items
	local itemCount = #items

	local itemSize = self.props.itemSize
	local itemPadding = self.props.itemPadding
	local maxSize = self.props.maxSize
	local startIndex = 1
	local endIndex = itemCount

	local gridChildren = {}
	local x, y = 0, 0
	local containerWidth, containerHeight = 0, itemSize.Y

	-- If the item height is already greater than the maximum size we shouldn't
	-- render _anything_
	if containerHeight < maxSize.Y then
		for itemIndex = startIndex, endIndex do
			gridChildren[itemIndex] = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, x, 0, y),
				Size = UDim2.new(0, itemSize.X, 0, itemSize.Y),
			}, {
				Content = self.props.renderItem(items[itemIndex])
			})

			x = x + itemSize.X + itemPadding.X

			local widthDelta = itemSize.X

			-- If we're not at the end of the row, we need to account for padding
			-- in the width of the container.
			if x < maxSize.X and itemIndex ~= endIndex then
				widthDelta = widthDelta + itemPadding.X
			end

			containerWidth = math.min(maxSize.X, containerWidth + widthDelta)

			-- If the x position overflows the maximum size, wrap further content
			-- onto another row. We don't use the same conditional as above to avoid
			-- breaking onto a row when there's no content to put there.
			if x > maxSize.X and itemIndex < endIndex then
				x = 0
				y = y + itemPadding.Y + itemSize.Y

				local heightDelta = itemPadding.Y + itemSize.Y

				if containerHeight + heightDelta < maxSize.Y then
					containerHeight = containerHeight + heightDelta
				else
					break
				end
			end
		end
	end

	containerHeight = math.min(containerHeight, maxSize.Y)

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = self.props.LayoutOrder,
		Size = UDim2.new(0, containerWidth, 0, containerHeight),
	}, gridChildren)
end

return GridView