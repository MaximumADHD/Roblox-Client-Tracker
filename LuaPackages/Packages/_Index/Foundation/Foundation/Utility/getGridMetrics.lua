local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local Types = require(Foundation.Components.Types)
local Breakpoint = require(Foundation.Enums.Breakpoint)
local ResponsiveContext = require(Foundation.Providers.Responsive.ResponsiveContext)

type ResponsiveConfig = ResponsiveContext.ResponsiveConfig
type Breakpoint = Breakpoint.Breakpoint
type ResponsiveValue<T> = Types.ResponsiveValue<T>

export type ColumnMetrics = {
	colCount: number,
	gutterCount: number,
}

export type GridMetrics = {
	full: ColumnMetrics,
	margin: number,
	colWidth: number,
	gapHeight: number,
	gutterWidth: number,
	gridWidth: number,
	cellSize: UDim2,
	cellWidth: number,
} & ColumnMetrics

local function getColumnMetrics(
	responsiveConfig: ResponsiveConfig,
	breakpoint: Breakpoint,
	size: (number | ResponsiveValue<number>)?
): ColumnMetrics
	local totalColCount = responsiveConfig.grid.columns[breakpoint]
	local colCount = totalColCount

	if size then
		if type(size) == "table" then
			size = size[responsiveConfig.breakpoint.shortNames[breakpoint]] or totalColCount
		end

		colCount = math.clamp(size :: number, 0, totalColCount)
	end

	local gutterCount = math.max(0, colCount - 1)

	return {
		colCount = colCount,
		gutterCount = gutterCount,
	}
end

local function getGridMetrics(
	responsiveConfig: ResponsiveConfig,
	breakpoint: Breakpoint,
	containerWidth: number,
	size: (number | ResponsiveValue<number>)?
): GridMetrics
	local fullMetrics = getColumnMetrics(responsiveConfig, breakpoint)
	local sizeMetrics = if size then getColumnMetrics(responsiveConfig, breakpoint, size) else fullMetrics
	local gridConfig = responsiveConfig.grid
	local gapHeight: number = gridConfig.gaps[breakpoint]
	local gutterWidth: number = gridConfig.gutters[breakpoint]
	local margin: number = gridConfig.margins[breakpoint]

	local gridWidth = math.max(0, containerWidth - margin * 2)

	local totalGutterWidth = fullMetrics.gutterCount * gutterWidth
	local colOffset = sizeMetrics.gutterCount * gutterWidth
	local colWidth = math.max(0, (gridWidth - totalGutterWidth) / fullMetrics.colCount)

	local cellWidth = if gridWidth > totalGutterWidth
		then math.floor(colWidth * sizeMetrics.colCount + colOffset)
		else 0
	local cellSize = UDim2.fromOffset(cellWidth, 0)

	return Dash.assign({
		full = Dash.assign(fullMetrics, { margin = margin }),
		margin = margin,
		colWidth = colWidth,
		gapHeight = gapHeight,
		gutterWidth = gutterWidth,
		gridWidth = gridWidth,
		cellSize = cellSize,
		cellWidth = cellWidth,
	}, sizeMetrics)
end

return getGridMetrics
