--!nocheck
local Responsive = script.Parent
local UIBlox = Responsive.Parent.Parent.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local ResponsiveLayoutContext = require(Responsive.ResponsiveLayoutContext)
local ResponsiveLayoutConfigReader = require(Responsive.ResponsiveLayoutConfigReader)

local ResponsiveCell = Roact.PureComponent:extend("ResponsiveCell")

ResponsiveCell.validateProps = t.interface({
	-- Order of the row in its container
	layoutOrder = t.optional(t.integer),
	-- Width in columns of the item's cell.
	-- Values for multiple breakpoint can be returned as table, see format above.
	colspan = t.optional(t.union(t.integer, t.table)),
	-- Height in rows of the item's cell. Only used if `multiLine`.
	-- Values for multiple breakpoint can be returned as table, see format above.
	rowspan = t.optional(t.union(t.integer, t.table)),
	-- Relative order of this item in the row.
	-- Values for multiple breakpoint can be returned as table, see format above.
	order = t.optional(t.union(t.integer, t.table)),
	-- Also allows props of the forms colspan_*/rowspan_*/order_*
	[Roact.Children] = t.optional(t.table),
	gridCellRef = t.optional(t.union(t.table, t.callback)),
})

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

function ResponsiveCell:getColspan(breakpoint)
	local value = findProp(self.props, "colspan", breakpoint)
	return if value ~= nil then value else 1
end

function ResponsiveCell:getRowspan(breakpoint)
	local value = findProp(self.props, "rowspan", breakpoint)
	return if value ~= nil then value else 1
end

function ResponsiveCell:getOrder(breakpoint)
	if self.props.layoutOrder then
		return self.props.layoutOrder
	end
	return findProp(self.props, "order", breakpoint)
end

-- shares unusable sub-pixel offset values between row's cells
-- FIXME this modifies non-react state (mutates context) during render and reads it - potentially unsafe
local function round(offset, context)
	local base = math.floor(offset)
	context.subPixelOffset += offset - base
	local added = math.floor(context.subPixelOffset + 0.5)
	context.subPixelOffset -= added
	return base + added
end

-- this could potentially be optimized in the future using a cache system
function ResponsiveCell:getSize(colspan, rowspan, context)
	local gutter = ResponsiveLayoutConfigReader.getValue(context, "gutter") or 0
	if context.multiLine then
		local verticalGutter = ResponsiveLayoutConfigReader.getValue(context, "verticalGutter") or gutter
		-- size relative to grid cell
		return UDim2.new(colspan, (colspan - 1) * gutter, rowspan, (rowspan - 1) * verticalGutter)
	else
		local columns = ResponsiveLayoutConfigReader.getValue(context, "columns") or 1
		if context.scrollable then
			columns *= math.max(context.pages, 1)
		end
		--[[
			split last gutter between cols = colspan * (columns - 1) / columns * gutter
			add gutters to multi column cells = (colspan - 1) * gutter
		]]
		return UDim2.new(colspan / columns, round((colspan / columns - 1) * gutter, context), 1, 0)
	end
end

function ResponsiveCell:render()
	return Roact.createElement(ResponsiveLayoutContext.Consumer, {
		render = function(context)
			local colspan = self:getColspan(context.breakpoint)
			local rowspan = if context.multiLine then self:getRowspan(context.breakpoint) else 1
			if colspan > 0 and rowspan > 0 then
				local order = self:getOrder(context.breakpoint)
				local cellName = if order then string.format("ResponsiveCell%02d", order) else "ResponsiveCell"
				local cellSpans = context.multiLine and (colspan > 1 or rowspan > 1)
				local cell = Roact.createElement("Frame", {
					Name = if cellSpans then nil else cellName,
					Size = self:getSize(colspan, rowspan, context),
					AutomaticSize = if context.relativeHeight then Enum.AutomaticSize.None else Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					LayoutOrder = order,
					[Roact.Ref] = self.props.gridCellRef,
				}, self.props[Roact.Children])
				-- wrap multiline cell to allow row/colspan
				if cellSpans then
					return Roact.createElement("Frame", {
						Name = cellName,
						BackgroundTransparency = 1,
						LayoutOrder = order,
					}, {
						ResponsiveCellInner = cell,
					})
				else
					return cell
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
		ResponsiveCell,
		Object.assign({}, props, {
			gridCellRef = ref,
		})
	)
end)
