local Grid = script.Parent
local UIBlox = Grid.Parent.Parent.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local GridContext = require(Grid.GridContext)
local GridConfigReader = require(Grid.GridConfigReader)

local GridCell = Roact.PureComponent:extend("GridCell")

GridCell.validateProps = t.interface({
	layoutOrder = t.optional(t.integer),
	colspan = t.optional(t.union(t.integer, t.table)),
	rowspan = t.optional(t.union(t.integer, t.table)),
	order = t.optional(t.union(t.integer, t.table)),
	-- also allows props of the forms colspan_*/rowspan_*/order_*
	[Roact.Children] = t.optional(t.table),
	gridCellRef = t.optional(t.table),
})

local function widthName(name, element)
	return Roact.createFragment({
		[name] = element,
	})
end

local function findProp(props, name, breakpoint)
	if breakpoint == nil then
		breakpoint = "default"
	end
	if props[name .. "_" .. breakpoint] ~= nil then
		return props[name .. "_" .. breakpoint]
	end
	if props[name] ~= nil then
		if type(props[name]) == "table" then
			if props[name][breakpoint] ~= nil then
				return props[name][breakpoint]
			else
				return props[name].default
			end
		else
			return props[name]
		end
	end
	return nil
end

function GridCell:getColspan(breakpoint)
	local value = findProp(self.props, "colspan", breakpoint)
	return value ~= nil and value or 1
end

function GridCell:getRowspan(breakpoint)
	local value = findProp(self.props, "rowspan", breakpoint)
	return value ~= nil and value or 1
end

function GridCell:getOrder(breakpoint)
	if self.props.layoutOrder then
		return self.props.layoutOrder
	end
	return findProp(self.props, "order", breakpoint)
end

-- shares unusable sub-pixel offset values between row's cells
local function round(offset, context)
	local base = math.floor(offset)
	context.subPixelOffset += offset - base
	local added = math.floor(context.subPixelOffset + 0.5)
	context.subPixelOffset -= added
	return base + added
end

-- this could potentially be optimized in the future using a cache system
function GridCell:getSize(colspan, rowspan, context)
	local gutter = GridConfigReader.getValue(context, "gutter") or 0
	if context.multiLine then
		-- size relative to grid cell
		return UDim2.new(colspan, (colspan - 1) * gutter, rowspan, (rowspan - 1) * gutter)
	else
		local columns = GridConfigReader.getValue(context, "columns") or 1
		if context.scrollable then
			columns *= context.pages
		end
		--[[
			split last gutter between cols = colspan * (columns - 1) / columns * gutter
			add gutters to multi column cells = (colspan - 1) * gutter
		]]
		return UDim2.new(colspan / columns, round((colspan / columns - 1) * gutter, context), 1, 0)
	end
end

function GridCell:render()
	return Roact.createElement(GridContext.Consumer, {
		render = function(context)
			local colspan = self:getColspan(context.breakpoint)
			local rowspan = if context.multiLine then self:getRowspan(context.breakpoint) else 1
			if colspan > 0 and rowspan > 0 then
				local order = self:getOrder(context.breakpoint)
				local cellName = if order then string.format("GridCell%02d", order) else "GridCell"
				local cell = Roact.createElement("Frame", {
					Size = self:getSize(colspan, rowspan, context),
					AutomaticSize = if context.relativeHeight then Enum.AutomaticSize.None else Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					LayoutOrder = order,
					[Roact.Ref] = self.props.gridCellRef,
				}, self.props[Roact.Children])
				-- wrap multiline cell to allow row/colspan
				if context.multiLine then
					return widthName(
						cellName,
						Roact.createElement("Frame", {
							BackgroundTransparency = 1,
							LayoutOrder = order,
						}, {
							GridCellInner = cell,
						})
					)
				else
					return widthName(cellName, cell)
				end
			else
				-- skip hidden child (its :render() may still be called)
				return nil
			end
		end,
	})
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(
		GridCell,
		Object.assign({}, props, {
			gridCellRef = ref,
		})
	)
end)
