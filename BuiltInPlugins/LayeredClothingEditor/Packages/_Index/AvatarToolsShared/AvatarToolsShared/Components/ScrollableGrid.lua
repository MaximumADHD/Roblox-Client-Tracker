--[[
	A DevFramework ScrollingFrame that contains a UIGridLayout.

	Required Props:
		UDim2 Size: size of the entire pane.
		UDim2 CellSize: size of each cell in the grid.

	Optional Props:
		number LayoutOrder: render order of component in layout
]]

local Packages = script.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local Framework = require(Packages.Framework)
local UI = Framework.UI
local Pane = UI.Pane
local ScrollingFrame = UI.ScrollingFrame

local Util = Framework.Util
local deepCopy = Util.deepCopy
local Typecheck = Util.Typecheck

local ScrollableGrid = Roact.PureComponent:extend("ScrollableGrid")
Typecheck.wrap(ScrollableGrid, script)

ScrollableGrid.defaultProps = {
	LayoutOrder = 1,
}

function ScrollableGrid:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder
	local size = props.Size
	local cellSize = props.CellSize
	local children = deepCopy(props[Roact.Children])

	if children then
		children["UIGridLayout"] = Roact.createElement("UIGridLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
			CellPadding = UDim2.new(0, 0, 0, 0),
			CellSize = cellSize,
			FillDirectionMaxCells = 3,
		})
	end

	return Roact.createElement(Pane, {
		Size = size,
		LayoutOrder = layoutOrder,
	}, {
		ScrollingFrame = Roact.createElement(ScrollingFrame, {
			LayoutOrder = layoutOrder,
			Size = UDim2.new(1, 0, 1, 0),
			AutomaticCanvasSize = Enum.AutomaticSize.XY,
		}, children),
	})
end

return ScrollableGrid