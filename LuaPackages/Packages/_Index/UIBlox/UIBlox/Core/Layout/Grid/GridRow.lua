local Grid = script.Parent
local UIBlox = Grid.Parent.Parent.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local Array = LuauPolyfill.Array

local GridContext = require(Grid.GridContext)
local GridConfigReader = require(Grid.GridConfigReader)
local GridBasicRow = require(Grid.GridBasicRow)
local GridCell = require(Grid.GridCell)

local GridRow = Roact.PureComponent:extend("GridRow")

GridRow.validateProps = t.strictInterface({
	kind = t.optional(t.string),
	layoutOrder = t.optional(t.integer),
	scrollable = t.optional(t.boolean),
	multiLine = t.optional(t.boolean),
	relativeHeight = t.optional(t.UDim),
	data = t.optional(t.any),
	getItem = t.optional(t.callback),
	getItemCount = t.optional(t.callback),
	renderItem = t.optional(t.callback),
	keyExtractor = t.optional(t.callback),
	getCellColspan = t.optional(t.callback),
	getCellRowspan = t.optional(t.callback),
	getCellOrder = t.optional(t.callback),
	forwardedRef = t.optional(t.table),
})

GridRow.defaultProps = {
	kind = "default",
	multiLine = false,
	data = {},
	getItem = function(data, index)
		if type(data) == "table" then
			return data[index]
		else
			return nil
		end
	end,
	renderItem = function(item, context)
		return item
	end,
	getCellColspan = function(item, context)
		return nil
	end,
	getCellRowspan = function(item, context)
		return nil
	end,
	getCellOrder = function(item, context)
		return nil
	end,
}

local function countItems(props, context)
	if props.getItemCount then
		return props.getItemCount(props.data, context)
	elseif props.getItem == GridRow.defaultProps.getItem then
		return #props.data
	else
		for i = 1, context.columns do
			if props.getItem(props.data, i, context) == nil then
				return i - 1
			end
		end
		return context.columns
	end
end

local function resolveCellProp(getter, item, context, default)
	if getter then
		local value = getter(item, context)
		if value ~= nil then
			if type(value) == table then
				local breakpoint = context.breakpoint or "default"
				if value[breakpoint] ~= nil then
					return value[breakpoint]
				elseif value.default ~= nil then
					return value.default
				end
			else
				return value
			end
		end
	end
	return default
end

local function addPaddingCells(children, context)
	local skipCells = {}
	local function shouldSkip(order)
		local y = math.floor(order / context.columns)
		local x = order - y * context.columns
		return skipCells[string.format("%d,%d", x, y)]
	end
	local function setSkip(order, colspan, rowspan)
		local y = math.floor(order / context.columns)
		local x = order - y * context.columns
		for i = x, x + colspan - 1 do
			for j = y, y + rowspan - 1 do
				skipCells[string.format("%d,%d", i, j)] = true
			end
		end
	end
	return Array.reduce(children, function(current, child)
		-- add padding elements to allow row/colspan
		while shouldSkip(#current) do
			table.insert(current, {
				order = #current + 1,
			})
		end
		if child.colspan > 1 or child.rowspan > 1 then
			setSkip(#current, child.colspan, child.rowspan)
		end
		table.insert(
			current,
			Object.assign(child, {
				order = #current + 1,
			})
		)
		return current
	end, {})
end

function GridRow:init()
	self.itemCache = {}
end

function GridRow:renderChildren(context)
	local children = {}
	local newCache = {}
	local lines = 1
	local pages = 1
	for i = 1, countItems(self.props, context) do
		local item = self.props.getItem(self.props.data, i, context)
		local key = nil
		local cell = nil
		if self.props.keyExtractor then
			key = self.props.keyExtractor(item, i, context)
		end
		if key and self.itemCache[key] then
			cell = self.itemCache[key]
		end
		if not cell then
			cell = self.props.renderItem(item, context)
		end
		if key then
			newCache[key] = cell
		end
		table.insert(children, {
			colspan = resolveCellProp(self.props.getCellColspan, item, context, 1),
			rowspan = resolveCellProp(self.props.getCellRowspan, item, context, 1),
			order = resolveCellProp(self.props.getCellOrder, item, context, i),
			cell = cell,
		})
	end
	self.itemCache = newCache
	if self.props.multiLine then
		Array.sort(children, function(first, second)
			return first.order - second.order
		end)
		children = addPaddingCells(children, context)
		lines = math.ceil(#children / context.columns)
	elseif self.props.scrollable then
		pages = Array.reduce(children, function(sum, child)
			return sum + child.colspan
		end, 0) / context.columns
	end
	return Array.map(children, function(child, index)
		return Roact.createElement(GridCell, {
			key = tostring(index),
			colspan = child.colspan,
			rowspan = child.rowspan,
			order = child.order,
		}, {
			GridItem = child.cell,
		})
	end),
		pages,
		lines
end

function GridRow:render()
	return Roact.createElement(GridContext.Consumer, {
		render = function(parentContext)
			local context = Object.assign({}, parentContext, {
				kind = self.props.kind or Object.None,
			})
			local children, pages, lines = self:renderChildren({
				breakpoint = context.breakpoint,
				kind = context.kind,
				width = GridConfigReader.getValue(context, "width") or 1,
				columns = GridConfigReader.getValue(context, "columns") or 1,
				margin = GridConfigReader.getValue(context, "margin") or 1,
				gutter = GridConfigReader.getValue(context, "gutter") or 1,
			})
			return Roact.createElement(GridBasicRow, {
				kind = self.props.kind,
				layoutOrder = self.props.layoutOrder,
				scrollable = self.props.scrollable,
				pages = pages,
				multiLine = self.props.multiLine,
				lines = lines,
				relativeHeight = self.props.relativeHeight,
				gridBasicRowRef = self.props.forwardedRef,
			}, children)
		end,
	})
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(
		GridRow,
		Object.assign({}, props, {
			forwardedRef = ref,
		})
	)
end)
