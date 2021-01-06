local Grid = script.Parent
local App = Grid.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local VerticalScrollView = require(App.Container.VerticalScrollView)

local ScrollingGridView = Roact.PureComponent:extend("ScrollingGridView")

ScrollingGridView.validateProps = t.strictInterface({
	items = t.table,
	renderItem = t.callback,
	itemSize = t.Vector2,
	size = t.optional(t.UDim2),
	itemPadding = t.optional(t.Vector2),
	innerUIPadding = t.optional(t.strictInterface({
		PaddingTop = t.optional(t.UDim),
		PaddingBottom = t.optional(t.UDim),
		PaddingLeft = t.optional(t.UDim),
		PaddingRight = t.optional(t.UDim),
	})),
	horizontalAlignment = t.optional(t.EnumItem),
})

ScrollingGridView.defaultProps = {
	itemPadding = Vector2.new(12, 24),
	horizontalAlignment = Enum.HorizontalAlignment.Center,
}

function ScrollingGridView:init()
	self.gridRef = Roact.createRef()
	self.state ={
		contentSize = Vector2.new(0, 0)
	}

	self.onGridResize = function()
		local contentSize = self.gridRef.current.AbsoluteContentSize
		self:setState({
			contentSize = contentSize,
		})
	end
end

function ScrollingGridView:render()
	local contentSize = self.state.contentSize

	local gridItems = {}

	for key, value in pairs(self.props.items) do
		gridItems[key] = self.props.renderItem(value)
	end

	gridItems.GridLayout = Roact.createElement("UIGridLayout", {
		CellSize = UDim2.fromOffset(self.props.itemSize.X, self.props.itemSize.Y),
		CellPadding = UDim2.fromOffset(self.props.itemPadding.X, self.props.itemPadding.Y),
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = self.props.horizontalAlignment,
		[Roact.Change.AbsoluteContentSize] = self.onGridResize,
		[Roact.Ref] = self.gridRef,
	})

	gridItems.UIPadding = Roact.createElement("UIPadding", self.props.innerUIPadding)

	return Roact.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		[Roact.Change.AbsoluteSize] = self.onResize,
	}, {
		VerticalScrollView = Roact.createElement(VerticalScrollView, {
			size = UDim2.fromScale(1, 1),
			canvasSizeY =  UDim.new(0, contentSize.Y),
		}, gridItems)
	})
end

return ScrollingGridView
