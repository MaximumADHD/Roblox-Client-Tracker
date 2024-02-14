--!nocheck
local Responsive = script.Parent
local UIBlox = Responsive.Parent.Parent.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local ResponsiveLayoutContext = require(Responsive.ResponsiveLayoutContext)
local ResponsiveLayoutConfigReader = require(Responsive.ResponsiveLayoutConfigReader)

local ResponsiveBaseRow = Roact.PureComponent:extend("ResponsiveBaseRow")

local function multilineScrollingValidator(props)
	if props.multiLine and props.scrollable then
		return false, "multiLine can't be scrollable"
	end
	return true
end

ResponsiveBaseRow.validateProps = t.strictInterface({
	-- The type of row, determines which column count and spacing values to select from config
	kind = t.optional(t.string),
	-- Order of the row in its container
	layoutOrder = t.optional(t.integer),
	-- ZIndex of the row
	zIndex = t.optional(t.number),
	-- \[Experimental\] Enables scrolling in the row.
	-- Requires `relativeHeight`, disallows `multiLine`.
	scrollable = t.optional(t.boolean),
	-- Optionally disable descendant clipping
	clipsDescendants = t.optional(t.boolean),
	selectable = t.optional(t.boolean),
	pages = t.optional(t.numberPositive),
	-- Enables multi line mode in the row, wrapping extra contents, and allowing cells to have multi-row height.
	-- Requires `relativeHeight`, disallows `scrollable`.
	multiLine = t.optional(t.boolean),
	-- Total height in lines when row is multi line.
	-- Ignored if `multiLine` is false. If not provided, `AutomaticSize` will be used.
	lines = t.optional(t.intersection(t.integer, t.numberMin(0))),
	-- Top padding in lines when row is multi line.
	-- This can be used to reserve empty unrendered space (e.g. inside a scrolling view).
	-- Ignored if `multiLine` is false. If not provided, no vertical padding will be added.
	paddingTopLines = t.optional(t.intersection(t.integer, t.numberMin(0))),
	-- Height of each cell, relative to its width.
	-- If not provided, `AutomaticSize` will be used.
	relativeHeight = t.optional(t.UDim),
	-- Ref pointing to scrolling frame
	scrollingFrameRef = t.optional(t.table),
	[Roact.Children] = t.optional(t.table),
	gridBasicRowRef = t.optional(t.union(t.table, t.callback)),
})

ResponsiveBaseRow.defaultProps = {
	kind = "default",
	scrollable = false,
	selectable = false,
	clipsDescendants = true,
	multiLine = false,
}

function ResponsiveBaseRow:renderChildrenWithPadding(margin, verticalGutter)
	local lines = self.props.lines or 1
	local paddingTopLines = self.props.paddingTopLines or 0
	return Object.assign({
		_uiblox_grid_padding_ = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, margin),
			PaddingRight = UDim.new(0, margin),
			PaddingTop = if self.props.multiLine
					and paddingTopLines > 0
					and lines > 0
				then UDim.new(paddingTopLines / lines, paddingTopLines / lines * verticalGutter)
				else nil,
		}),
	}, self.props[Roact.Children])
end

function ResponsiveBaseRow:renderChildrenMultiline(columns, margin, gutter, verticalGutter)
	local lines = self.props.lines or 1
	if self.props.paddingTopLines then
		lines -= self.props.paddingTopLines
	end
	lines = math.max(lines, 1)
	return Object.assign({
		_uiblox_grid_layout_ = Roact.createElement("UIGridLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirectionMaxCells = columns,
			CellSize = UDim2.new(
				1 / columns,
				math.floor((1 - columns) / columns * gutter),
				1 / lines,
				math.floor((1 - lines) / lines * verticalGutter)
			),
			CellPadding = UDim2.fromOffset(gutter, verticalGutter),
		}),
	}, self:renderChildrenWithPadding(margin, verticalGutter))
end

function ResponsiveBaseRow:renderChildren(scrollable, margin, gutter, verticalGutter)
	local children = Object.assign({
		_uiblox_grid_layout_ = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, gutter),
		}),
	}, self:renderChildrenWithPadding(margin, verticalGutter))
	if scrollable then
		-- width in number of pages (ie total cells / columns per screen)
		local canvasWidth = self.props.pages or 1
		return {
			ResponsiveRowScroller = Roact.createElement("ScrollingFrame", {
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
				Selectable = self.props.selectable,
				ClipsDescendants = self.props.clipsDescendants,
				[Roact.Ref] = if UIBloxConfig.responsiveBaseRowScrollingFrameRef
					then self.props.scrollingFrameRef
					else nil,
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
function ResponsiveBaseRow:getSize(relativeHeight, gutter, verticalGutter, margin, columns)
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
			if self.props.lines == 0 then
				return UDim2.fromScale(1, 0)
			end
			heightScale *= self.props.lines
			heightOffset *= self.props.lines
			-- add n-1 gutter for n lines
			heightOffset += (self.props.lines - 1) * verticalGutter
		end
		return UDim2.new(1, 0, heightScale, heightOffset)
	end
end

function ResponsiveBaseRow:render()
	assert(multilineScrollingValidator(self.props))
	local relativeHeight = self.props.relativeHeight
	local scrollable = self.props.scrollable
	local multiLine = self.props.multiLine
	local rowName = if self.props.layoutOrder
		then string.format("ResponsiveRow%02d", self.props.layoutOrder)
		else "ResponsiveRow"
	return Roact.createElement(ResponsiveLayoutContext.Consumer, {
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
				relativeHeight = ResponsiveLayoutConfigReader.getValue(context, "relativeHeight")
				context.relativeHeight = relativeHeight
			end
			local width = ResponsiveLayoutConfigReader.getValue(context, "width")
			local gutter = ResponsiveLayoutConfigReader.getValue(context, "gutter") or 0
			local verticalGutter = ResponsiveLayoutConfigReader.getValue(context, "verticalGutter") or gutter
			local margin = ResponsiveLayoutConfigReader.getValue(context, "margin") or 0
			local columns = ResponsiveLayoutConfigReader.getValue(context, "columns") or 1
			local hasHeight = relativeHeight and if multiLine then self.props.lines else true
			local frameSize = self:getSize(relativeHeight, gutter, verticalGutter, margin, columns)
			return Roact.createElement(ResponsiveLayoutContext.Provider, {
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
						ZIndex = self.props.zIndex,
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
							then self:renderChildrenMultiline(columns, margin, gutter, verticalGutter)
							else self:renderChildren(scrollable, margin, gutter, verticalGutter)
					)
				),
			})
		end,
	})
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(
		ResponsiveBaseRow,
		Object.assign({}, props, {
			gridBasicRowRef = ref,
		})
	)
end)
