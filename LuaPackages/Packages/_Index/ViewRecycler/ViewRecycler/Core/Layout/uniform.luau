-- Uniform layout: every item has the same main-axis length. O(1) for all
-- queries. Spacing and before/after padding are parameters, not wrapper
-- types — there is no invalid combination to reject.
--
-- Item layout for a given index depends only on the index and
-- construction-time options.
local Src = script:FindFirstAncestor("ViewRecycler")

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local LayoutRuntime = require(Src.Core.Layout.LayoutRuntime)
local Types = require(Src.Core.Types)
local staticParts = require(Src.Core.Layout.staticParts)

export type UniformOptions = {
	itemLength: number,
	spacing: number?,
	paddingBefore: number?,
	paddingAfter: number?,
}

local function uniform(options: UniformOptions): LayoutRuntime.Runtime
	assert(options.itemLength > 0, "Layout.uniform: itemLength must be positive")

	local itemLength = options.itemLength
	local spacing = options.spacing or 0
	local paddingBefore = options.paddingBefore or 0
	local paddingAfter = options.paddingAfter or 0
	local step = itemLength + spacing

	local itemCount = 0

	local function getItemCount(): number
		return itemCount
	end

	local function getContentLength(): number
		if itemCount == 0 then
			return 0
		end
		return paddingBefore + itemCount * itemLength + (itemCount - 1) * spacing + paddingAfter
	end

	local function getItemLayout(index: number): Types.ItemLayout
		return {
			startOffset = paddingBefore + (index - 1) * step,
			length = itemLength,
		}
	end

	local function getIntersectingIndexRange(startOffset: number, endOffsetExclusive: number): Types.IndexRange
		if itemCount == 0 or endOffsetExclusive <= startOffset then
			return Types.EMPTY_INDEX_RANGE
		end

		-- First index whose span extends past startOffset. The candidate
		-- slot may end inside its trailing
		-- spacing gap, in which case the first visible item is the next.
		local firstIndex = 1
		local relativeStart = startOffset - paddingBefore
		if relativeStart > 0 then
			firstIndex = relativeStart // step + 1
			local candidateEnd = paddingBefore + (firstIndex - 1) * step + itemLength
			if candidateEnd <= startOffset then
				firstIndex += 1
			end
		end

		-- Last index whose offset is strictly before the exclusive end.
		local relativeEnd = endOffsetExclusive - paddingBefore
		if relativeEnd <= 0 then
			return Types.EMPTY_INDEX_RANGE
		end
		local lastIndex = relativeEnd // step + 1
		if paddingBefore + (lastIndex - 1) * step >= endOffsetExclusive then
			lastIndex -= 1
		end

		firstIndex = math.max(1, firstIndex)
		lastIndex = math.min(itemCount, lastIndex)
		if lastIndex < firstIndex then
			return Types.EMPTY_INDEX_RANGE
		end
		return { firstIndex = firstIndex, lastIndex = lastIndex }
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
		-- Updates change values, not geometry.
		return itemCount ~= previousItemCount
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

return uniform
