local Root = script:FindFirstAncestor("Markdown")

local Packages = Root.Parent
local Dash = require(Packages.Dash)
local InlineLayoutPackage = require(Packages.InlineLayout)

local getRowContext = require(script.Parent.getRowContext)
local mergeContexts = require(Root.Utils.mergeContexts)
local Types = require(Root.Types)

local HardBreakElement = InlineLayoutPackage.Components.InlineLayoutElements.HardBreakElement
local isInlineElement = InlineLayoutPackage.Utils.isInlineElement

type InlineElement = InlineLayoutPackage.InlineElement

export type WidthCache = {
	styleKey: string,
	cellWidths: { [string]: number },
}

local MIN_COLUMN_CONTENT_WIDTH = 80

local function measureUnwrappedWidth(elements: { InlineElement }): number
	local widest = 0
	local lineWidth = 0

	for _, element in elements do
		if element == HardBreakElement then
			lineWidth = 0
		else
			lineWidth += element:getWidth()
			widest = math.max(widest, lineWidth)
		end
	end

	return math.ceil(widest)
end

local function createWidthCache(): WidthCache
	return {
		styleKey = "",
		cellWidths = {},
	}
end

local function getStyleKey(context: Types.Context): string
	return Dash.pretty({
		textStyles = context.textStyles,
		codeStyles = context.codeStyles,
		linkStyles = context.linkStyles,
		imageStyles = context.imageStyles,
	}, {
		depth = 4,
	})
end

local function getContentKey(node: Types.Node): string
	local text = node.text or ""
	local key = `{node.name}:{#text}:{text}`

	if node.attributes then
		key ..= Dash.pretty(node.attributes)
	end

	for _, child in node.children do
		key ..= `({getContentKey(child)})`
	end

	return key
end

local function measureColumnContentWidths(node: Types.Node, context: Types.Context, cache: WidthCache): { number }
	local styleKey = getStyleKey(context)
	local previousCellWidths = if cache.styleKey == styleKey then cache.cellWidths else {}
	local cellWidths = {}
	local widths = {}

	for _, row in node.children do
		local rowContext = mergeContexts(getRowContext(row, context), {
			isInline = true,
		})

		for columnIndex, cell in row.children do
			local key = row.name .. getContentKey(cell)
			local width = cellWidths[key] or previousCellWidths[key]
			if not width then
				local elements = Dash.filter(rowContext.processChildren(cell, rowContext), isInlineElement)
				width = measureUnwrappedWidth(elements)
			end

			cellWidths[key] = width
			widths[columnIndex] = math.max(widths[columnIndex] or 0, width)
		end
	end

	cache.styleKey = styleKey
	cache.cellWidths = cellWidths

	return widths
end

local function computeColumnWidths(contentWidths: { number }, availableWidth: number, cellPadding: number): { number }
	local naturalWidths = {}
	local minimumWidths = {}
	local naturalTotal = 0
	local minimumTotal = 0

	for columnIndex, contentWidth in contentWidths do
		naturalWidths[columnIndex] = contentWidth + cellPadding
		minimumWidths[columnIndex] = math.min(contentWidth, MIN_COLUMN_CONTENT_WIDTH) + cellPadding
		naturalTotal += naturalWidths[columnIndex]
		minimumTotal += minimumWidths[columnIndex]
	end

	if naturalTotal <= availableWidth then
		return naturalWidths
	elseif minimumTotal >= availableWidth then
		return minimumWidths
	end

	local shrinkRatio = (availableWidth - minimumTotal) / (naturalTotal - minimumTotal)

	return Dash.map(minimumWidths, function(minimumWidth, columnIndex)
		return math.floor(minimumWidth + (naturalWidths[columnIndex] - minimumWidth) * shrinkRatio)
	end)
end

local function fillUnmeasuredColumns(contentWidths: { number }, columnCount: number): { number }
	if #contentWidths >= columnCount then
		return contentWidths
	end

	local filled = table.clone(contentWidths)
	for columnIndex = #contentWidths + 1, columnCount do
		filled[columnIndex] = MIN_COLUMN_CONTENT_WIDTH
	end

	return filled
end

return {
	MIN_COLUMN_CONTENT_WIDTH = MIN_COLUMN_CONTENT_WIDTH,
	createWidthCache = createWidthCache,
	measureColumnContentWidths = measureColumnContentWidths,
	computeColumnWidths = computeColumnWidths,
	fillUnmeasuredColumns = fillUnmeasuredColumns,
}
