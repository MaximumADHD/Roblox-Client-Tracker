-- Public custom-geometry factory. The application supplies only item
-- geometry; this wrapper owns the stateful runtime protocol.
--
-- Item layouts must be monotonic and non-overlapping along the main
-- axis so intersecting ranges can be found with binary search.
local Src = script:FindFirstAncestor("ViewRecycler")

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local LayoutRuntime = require(Src.Core.Layout.LayoutRuntime)
local Types = require(Src.Core.Types)
local staticParts = require(Src.Core.Layout.staticParts)

export type CreateOptions = {
	getItemLayout: (index: number) -> Types.ItemLayout,
}

local function create(options: CreateOptions): LayoutRuntime.Runtime
	local getItemLayout = options.getItemLayout
	local itemCount = 0

	local function getItemCount(): number
		return itemCount
	end

	local function getContentLength(): number
		if itemCount == 0 then
			return 0
		end
		local lastItemLayout = getItemLayout(itemCount)
		return lastItemLayout.startOffset + lastItemLayout.length
	end

	local function getIntersectingIndexRange(startOffset: number, endOffsetExclusive: number): Types.IndexRange
		if itemCount == 0 or endOffsetExclusive <= startOffset then
			return Types.EMPTY_INDEX_RANGE
		end

		-- First item whose end extends past the inclusive start.
		local low, high = 1, itemCount
		while low < high do
			local middle = (low + high) // 2
			local itemLayout = getItemLayout(middle)
			if itemLayout.startOffset + itemLayout.length > startOffset then
				high = middle
			else
				low = middle + 1
			end
		end
		local firstIndex = low
		local firstItemLayout = getItemLayout(firstIndex)
		if firstItemLayout.startOffset + firstItemLayout.length <= startOffset then
			return Types.EMPTY_INDEX_RANGE
		end

		-- Last item whose start is strictly before the exclusive end.
		low, high = 1, itemCount
		while low < high do
			local middle = (low + high + 1) // 2
			if getItemLayout(middle).startOffset < endOffsetExclusive then
				low = middle
			else
				high = middle - 1
			end
		end
		local lastIndex = low
		if getItemLayout(lastIndex).startOffset >= endOffsetExclusive or lastIndex < firstIndex then
			return Types.EMPTY_INDEX_RANGE
		end

		return { firstIndex = firstIndex, lastIndex = lastIndex }
	end

	local function applyDataSourceChange(change: Types.DataSourceChange): boolean
		if change.type == DataSourceChangeType.Reset then
			itemCount = #(change :: Types.ResetDataSourceChange).keys
		elseif change.type == DataSourceChangeType.Insert then
			itemCount += #(change :: Types.InsertDataSourceChange).keys
		elseif change.type == DataSourceChangeType.Remove then
			itemCount -= #(change :: Types.RemoveDataSourceChange).keys
		end
		-- The supplied geometry callback may close over item values, so every
		-- DataSource notification can change geometry even when count is stable.
		return true
	end

	return {
		getItemCount = getItemCount,
		getContentLength = getContentLength,
		getIntersectingIndexRange = getIntersectingIndexRange,
		expandIndexRange = function(range, before, after)
			return staticParts.expandItemRange(range, before, after or before, itemCount)
		end,
		getItemLayout = getItemLayout,
		updateItemMeasurement = staticParts.updateItemMeasurementNoop,
		requiresItemMeasurement = staticParts.requiresItemMeasurementFalse,
		applyDataSourceChange = applyDataSourceChange,
		setViewportCrossAxisLength = staticParts.geometryUnchanged,
		destroy = staticParts.noop,
	}
end

return create
