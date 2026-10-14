-- Grid layout: items fill cross-axis columns left-to-right (or top-to-bottom),
-- then wrap to the next row. O(1) for all queries.
--
-- Pass a fixed column count or derive it from the viewport's cross-axis
-- length. A derived recount changes every item's layout, so it invalidates
-- geometry.
local Src = script:FindFirstAncestor("ViewRecycler")

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local LayoutRuntime = require(Src.Core.Layout.LayoutRuntime)
local Types = require(Src.Core.Types)
local staticParts = require(Src.Core.Layout.staticParts)

export type GridOptions = {
	itemLength: number,
	spacing: number?,

	-- Exactly one of:
	crossAxisCount: number?,
	crossAxisItemLength: number?,

	paddingBefore: number?,
	paddingAfter: number?,
}

local function grid(options: GridOptions): LayoutRuntime.Runtime
	assert(options.itemLength > 0, "Layout.grid: itemLength must be positive")
	assert(
		(options.crossAxisCount ~= nil) ~= (options.crossAxisItemLength ~= nil),
		"Layout.grid: provide exactly one of crossAxisCount or crossAxisItemLength"
	)

	local itemLength = options.itemLength
	local spacing = options.spacing or 0
	local paddingBefore = options.paddingBefore or 0
	local paddingAfter = options.paddingAfter or 0
	local step = itemLength + spacing

	local crossAxisCount = options.crossAxisCount or 1
	local itemCount = 0

	local function rowCount(): number
		return math.ceil(itemCount / crossAxisCount)
	end

	local function getItemCount(): number
		return itemCount
	end

	local function getContentLength(): number
		local rows = rowCount()
		if rows == 0 then
			return 0
		end
		return paddingBefore + rows * itemLength + (rows - 1) * spacing + paddingAfter
	end

	local function getItemLayout(index: number): Types.ItemLayout
		local row = (index - 1) // crossAxisCount + 1
		return {
			startOffset = paddingBefore + (row - 1) * step,
			length = itemLength,
			crossAxisIndex = (index - 1) % crossAxisCount + 1,
			crossAxisCount = crossAxisCount,
		}
	end

	local function getIntersectingIndexRange(startOffset: number, endOffsetExclusive: number): Types.IndexRange
		if itemCount == 0 or endOffsetExclusive <= startOffset then
			return Types.EMPTY_INDEX_RANGE
		end

		local firstRow = 1
		local relativeStart = startOffset - paddingBefore
		if relativeStart > 0 then
			firstRow = relativeStart // step + 1
			local rowEnd = paddingBefore + (firstRow - 1) * step + itemLength
			if rowEnd <= startOffset then
				firstRow += 1
			end
		end

		local relativeEnd = endOffsetExclusive - paddingBefore
		if relativeEnd <= 0 then
			return Types.EMPTY_INDEX_RANGE
		end
		local lastRow = relativeEnd // step + 1
		if paddingBefore + (lastRow - 1) * step >= endOffsetExclusive then
			lastRow -= 1
		end

		firstRow = math.max(1, firstRow)
		lastRow = math.min(rowCount(), lastRow)
		if lastRow < firstRow then
			return Types.EMPTY_INDEX_RANGE
		end

		return {
			firstIndex = (firstRow - 1) * crossAxisCount + 1,
			lastIndex = math.min(itemCount, lastRow * crossAxisCount),
		}
	end

	local function expandIndexRange(range: Types.IndexRange, before: number, after: number?): Types.IndexRange
		local resolvedAfter = after or before
		local firstRow = (range.firstIndex - 1) // crossAxisCount + 1
		local lastRow = (range.lastIndex - 1) // crossAxisCount + 1
		firstRow = math.max(1, firstRow - before)
		lastRow = math.min(rowCount(), lastRow + resolvedAfter)
		return {
			firstIndex = (firstRow - 1) * crossAxisCount + 1,
			lastIndex = math.min(itemCount, lastRow * crossAxisCount),
		}
	end

	local function applyDataSourceChange(change: Types.DataSourceChange): boolean
		local previousItemCount = itemCount
		if change.type == DataSourceChangeType.Reset then
			itemCount = #(change :: Types.ResetDataSourceChange).keys
		elseif change.type == DataSourceChangeType.Insert then
			itemCount += #(change :: Types.InsertDataSourceChange).keys
		elseif change.type == DataSourceChangeType.Remove then
			itemCount -= #(change :: Types.RemoveDataSourceChange).keys
		end
		return itemCount ~= previousItemCount
	end

	local function setViewportCrossAxisLength(crossAxisLength: number): boolean
		if options.crossAxisItemLength == nil then
			return false
		end
		local newCount = math.max(1, crossAxisLength // options.crossAxisItemLength)
		if newCount ~= crossAxisCount then
			crossAxisCount = newCount
			return true
		end
		return false
	end

	return {
		getItemCount = getItemCount,
		getContentLength = getContentLength,
		getIntersectingIndexRange = getIntersectingIndexRange,
		expandIndexRange = expandIndexRange,
		getItemLayout = getItemLayout,
		updateItemMeasurement = staticParts.updateItemMeasurementNoop,
		requiresItemMeasurement = staticParts.requiresItemMeasurementFalse,
		applyDataSourceChange = applyDataSourceChange,
		setViewportCrossAxisLength = setViewportCrossAxisLength,
		destroy = staticParts.noop,
	}
end

return grid
