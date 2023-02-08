local Grid = script.Parent
local UIBlox = Grid.Parent.Parent.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local GridContext = require(Grid.GridContext)
local GridConfigReader = require(Grid.GridConfigReader)

local GridBasicRow = Roact.PureComponent:extend("GridBasicRow")

GridBasicRow.validateProps = t.intersection(
	t.strictInterface({
		kind = t.optional(t.string),
		layoutOrder = t.optional(t.integer),
		scrollable = t.optional(t.boolean),
		pages = t.optional(t.numberPositive),
		multiLine = t.optional(t.boolean),
		lines = t.optional(t.intersection(t.integer, t.numberPositive)),
		relativeHeight = t.optional(t.UDim),
		[Roact.Children] = t.optional(t.table),
		gridBasicRowRef = t.optional(t.table),
	}),
	function(props)
		if props.multiLine and props.scrollable then
			return false, "multiLine can't be scrollable"
		end
		return true
	end
)

GridBasicRow.defaultProps = {
	kind = "default",
	scrollable = false,
	multiLine = false,
}

function GridBasicRow:renderChildrenWithPadding(margin)
	return Object.assign({
		_uiblox_grid_padding_ = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, margin),
			PaddingRight = UDim.new(0, margin),
		}),
	}, self.props[Roact.Children])
end

function GridBasicRow:renderChildrenMultiline(columns, margin, gutter)
	local lines = self.props.lines or 1
	return Object.assign({
		_uiblox_grid_layout_ = Roact.createElement("UIGridLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirectionMaxCells = columns,
			CellSize = UDim2.new(
				1 / columns,
				math.floor((1 - columns) / columns * gutter),
				1 / lines,
				math.floor((1 - lines) / lines * gutter)
			),
			CellPadding = UDim2.fromOffset(gutter, gutter),
		}),
	}, self:renderChildrenWithPadding(margin))
end

function GridBasicRow:renderChildren(scrollable, margin, gutter)
	local children = Object.assign({
		_uiblox_grid_layout_ = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, gutter),
		}),
	}, self:renderChildrenWithPadding(margin))
	if scrollable then
		-- width in number of pages (ie total cells / columns per screen)
		local canvasWidth = self.props.pages or 1
		return {
			GridRowScroller = Roact.createElement("ScrollingFrame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				ScrollingDirection = Enum.ScrollingDirection.X,
				ScrollBarThickness = 0,
				--[[
					two extra margins per page: - 2 * canvasWidth * margin
					add first and last margin: + 2 * margin
					add gutters between pages: + (canvasWidth - 1) * gutter
				]]
				CanvasSize = UDim2.new(canvasWidth, (canvasWidth - 1) * (gutter - 2 * margin), 1, 0),
				AutomaticCanvasSize = self.props.pages and Enum.AutomaticSize.None or Enum.AutomaticSize.X,
			}, children),
		}
	else
		return children
	end
end

local function applyUDim(udim, length)
	return udim.Scale * length + udim.Offset
end

-- this could potentially be optimized in the future using a cache system
function GridBasicRow:getSize(relativeHeight, gutter, margin, columns)
	if relativeHeight == nil then
		return UDim2.fromScale(1, 0)
	else
		local heightScale = relativeHeight.Scale / columns
		--[[
			split two margins between cols: - (margin * 2) / columns
			split n-1 gutter for n columns: - (columns - 1) / columns * gutter
		]]
		local offsetPerColumn = (gutter - 2 * margin) / columns - gutter
		local heightOffset = applyUDim(relativeHeight, offsetPerColumn)
		if self.props.multiLine and self.props.lines then
			heightScale *= self.props.lines
			heightOffset *= self.props.lines
			-- add n-1 gutter for n lines
			heightOffset += (self.props.lines - 1) * gutter
		end
		return UDim2.new(1, 0, heightScale, heightOffset)
	end
end

function GridBasicRow:render()
	local relativeHeight = self.props.relativeHeight
	local scrollable = self.props.scrollable
	local multiLine = self.props.multiLine
	local rowName = if self.props.layoutOrder then string.format("GridRow%02d", self.props.layoutOrder) else "GridRow"
	return Roact.createElement(GridContext.Consumer, {
		render = function(parentContext)
			local context = Object.assign({}, parentContext, {
				kind = self.props.kind or Object.None,
				scrollable = scrollable,
				pages = self.props.pages or 1,
				multiLine = multiLine,
				relativeHeight = relativeHeight,
				-- special variable shared between cells to work around UDim limitations
				subPixelOffset = 0,
			})
			if not relativeHeight then
				relativeHeight = GridConfigReader.getValue(context, "relativeHeight")
				context.relativeHeight = relativeHeight
			end
			local width = GridConfigReader.getValue(context, "width")
			local gutter = GridConfigReader.getValue(context, "gutter") or 0
			local margin = GridConfigReader.getValue(context, "margin") or 0
			local columns = GridConfigReader.getValue(context, "columns") or 1
			local hasHeight = relativeHeight and if multiLine then self.props.lines else true
			local frameSize = self:getSize(relativeHeight, gutter, margin, columns)
			return Roact.createElement(GridContext.Provider, {
				value = context,
			}, {
				[rowName] = Roact.createElement(
					"Frame",
					{
						Size = frameSize,
						SizeConstraint = Enum.SizeConstraint.RelativeXX,
						AutomaticSize = if hasHeight then Enum.AutomaticSize.None else Enum.AutomaticSize.Y,
						BackgroundTransparency = 1,
						LayoutOrder = self.props.layoutOrder,
						[Roact.Ref] = self.props.gridBasicRowRef,
					},
					Object.assign(
						{
							_uiblox_grid_maxwidth_ = if width
								then Roact.createElement("UISizeConstraint", {
									MaxSize = Vector2.new(
										width,
										if relativeHeight then applyUDim(frameSize.Y, width) else math.huge
									),
								})
								else nil,
						},
						if multiLine
							then self:renderChildrenMultiline(columns, margin, gutter)
							else self:renderChildren(scrollable, margin, gutter)
					)
				),
			})
		end,
	})
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(
		GridBasicRow,
		Object.assign({}, props, {
			gridBasicRowRef = ref,
		})
	)
end)
