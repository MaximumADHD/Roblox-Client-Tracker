-- Known-size masonry layout. Items are assigned in source order to the
-- currently shortest cross-axis column, with stable lowest-column tie breaks.
--
-- The public render-window contract is a contiguous IndexRange, while masonry
-- visibility is naturally sparse. Intersection queries therefore return the
-- smallest source-index envelope containing every intersecting item.
local Src = script:FindFirstAncestor("ViewRecycler")

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local LayoutRuntime = require(Src.Core.Layout.LayoutRuntime)
local Types = require(Src.Core.Types)
local staticParts = require(Src.Core.Layout.staticParts)

export type MasonryOptions = {
	getItemLength: (index: number) -> number,
	spacing: number?,
	crossAxisSpacing: number?,

	-- Exactly one of:
	crossAxisCount: number?,
	crossAxisItemLength: number?,

	paddingBefore: number?,
	paddingAfter: number?,
}

local function validateNonNegative(name: string, value: number)
	if value < 0 or value >= math.huge then
		assert(false, `Layout.masonry: {name} must be finite and non-negative`)
	end
end

local function masonry(options: MasonryOptions): LayoutRuntime.Runtime
	assert(type(options.getItemLength) == "function", "Layout.masonry: getItemLength must be a function")
	assert(
		(options.crossAxisCount ~= nil) ~= (options.crossAxisItemLength ~= nil),
		"Layout.masonry: provide exactly one of crossAxisCount or crossAxisItemLength"
	)
	if options.crossAxisCount ~= nil then
		assert(
			options.crossAxisCount > 0 and options.crossAxisCount % 1 == 0,
			"Layout.masonry: crossAxisCount must be a positive integer"
		)
	end
	if options.crossAxisItemLength ~= nil then
		assert(
			options.crossAxisItemLength > 0 and options.crossAxisItemLength < math.huge,
			"Layout.masonry: crossAxisItemLength must be finite and positive"
		)
	end

	local getItemLength = options.getItemLength
	local spacing = options.spacing or 0
	local crossAxisSpacing = options.crossAxisSpacing or 0
	local paddingBefore = options.paddingBefore or 0
	local paddingAfter = options.paddingAfter or 0
	validateNonNegative("spacing", spacing)
	validateNonNegative("crossAxisSpacing", crossAxisSpacing)
	validateNonNegative("paddingBefore", paddingBefore)
	validateNonNegative("paddingAfter", paddingAfter)

	local crossAxisCount = options.crossAxisCount or 1
	local keys: { string } = {}
	local placements: { Types.ItemLayout } = {}
	local columnItems: { { number } } = {}
	local contentLength = 0
	local geometryDirty = true

	local function markGeometryDirty()
		geometryDirty = true
	end

	local function rebuildGeometry()
		if not geometryDirty then
			return
		end
		table.clear(placements)
		table.clear(columnItems)

		local columnEnds = table.create(crossAxisCount, paddingBefore)
		for column = 1, crossAxisCount do
			columnEnds[column] = paddingBefore
			columnItems[column] = {}
		end

		for index = 1, #keys do
			local length = getItemLength(index)
			if type(length) ~= "number" or length <= 0 or length >= math.huge then
				assert(false, `Layout.masonry: getItemLength({index}) must return a finite positive number`)
			end

			local targetColumn = 1
			local shortestEnd = columnEnds[1]
			for column = 2, crossAxisCount do
				local candidateEnd = columnEnds[column]
				if candidateEnd < shortestEnd then
					targetColumn = column
					shortestEnd = candidateEnd
				end
			end

			placements[index] = {
				startOffset = shortestEnd,
				length = length,
				crossAxisIndex = targetColumn,
				crossAxisCount = crossAxisCount,
				crossAxisSpacing = crossAxisSpacing,
			}
			table.insert(columnItems[targetColumn], index)
			columnEnds[targetColumn] = shortestEnd + length + spacing
		end

		if #keys == 0 then
			contentLength = 0
			geometryDirty = false
			return
		end
		local longestEnd = paddingBefore
		for column = 1, crossAxisCount do
			longestEnd = math.max(longestEnd, columnEnds[column])
		end
		contentLength = longestEnd - spacing + paddingAfter
		geometryDirty = false
	end

	local function getItemCount(): number
		return #keys
	end

	local function getContentLength(): number
		rebuildGeometry()
		return contentLength
	end

	local function getItemLayout(index: number): Types.ItemLayout
		rebuildGeometry()
		local placement = placements[index]
		if placement == nil then
			assert(false, `Layout.masonry: item index {index} is out of bounds`)
		end
		return placement
	end

	local function firstIntersectingInColumn(
		indices: { number },
		startOffset: number,
		endOffsetExclusive: number
	): (number?, number?)
		if #indices == 0 then
			return nil, nil
		end

		local low = 1
		local high = #indices
		while low < high do
			local middle = (low + high) // 2
			local placement = placements[indices[middle]]
			if placement.startOffset + placement.length > startOffset then
				high = middle
			else
				low = middle + 1
			end
		end
		local firstPosition = low
		local firstPlacement = placements[indices[firstPosition]]
		if
			firstPlacement.startOffset + firstPlacement.length <= startOffset
			or firstPlacement.startOffset >= endOffsetExclusive
		then
			return nil, nil
		end

		low = firstPosition
		high = #indices
		while low < high do
			local middle = (low + high + 1) // 2
			if placements[indices[middle]].startOffset < endOffsetExclusive then
				low = middle
			else
				high = middle - 1
			end
		end
		return indices[firstPosition], indices[low]
	end

	local function getIntersectingIndexRange(startOffset: number, endOffsetExclusive: number): Types.IndexRange
		rebuildGeometry()
		if #keys == 0 or endOffsetExclusive <= startOffset then
			return Types.EMPTY_INDEX_RANGE
		end

		local firstIndex: number? = nil
		local lastIndex: number? = nil
		for column = 1, crossAxisCount do
			local columnFirst, columnLast =
				firstIntersectingInColumn(columnItems[column], startOffset, endOffsetExclusive)
			if columnFirst ~= nil then
				firstIndex = if firstIndex == nil then columnFirst else math.min(firstIndex, columnFirst)
				lastIndex = if lastIndex == nil then columnLast else math.max(lastIndex, columnLast :: number)
			end
		end
		if firstIndex == nil then
			return Types.EMPTY_INDEX_RANGE
		end
		return {
			firstIndex = firstIndex,
			lastIndex = lastIndex :: number,
		}
	end

	local function applyDataSourceChange(change: Types.DataSourceChange): boolean
		if change.type == DataSourceChangeType.Reset then
			keys = table.clone((change :: Types.ResetDataSourceChange).keys)
		elseif change.type == DataSourceChangeType.Insert then
			local insertChange = change :: Types.InsertDataSourceChange
			for offset, key in insertChange.keys do
				table.insert(keys, insertChange.index + offset - 1, key)
			end
		elseif change.type == DataSourceChangeType.Remove then
			local removeChange = change :: Types.RemoveDataSourceChange
			for _, expectedKey in removeChange.keys do
				assert(
					keys[removeChange.index] == expectedKey,
					"Layout.masonry: remove keys do not match current order"
				)
				table.remove(keys, removeChange.index)
			end
		elseif change.type == DataSourceChangeType.Move then
			local moveChange = change :: Types.MoveDataSourceChange
			assert(
				keys[moveChange.fromIndex] == moveChange.key,
				"Layout.masonry: move key does not match current order"
			)
			table.remove(keys, moveChange.fromIndex)
			table.insert(keys, moveChange.toIndex, moveChange.key)
		elseif change.type == DataSourceChangeType.Reorder then
			keys = table.clone((change :: Types.ReorderDataSourceChange).keys)
		end
		markGeometryDirty()
		return true
	end

	local function setViewportCrossAxisLength(crossAxisLength: number): boolean
		if options.crossAxisItemLength == nil then
			return false
		end
		local itemLength = options.crossAxisItemLength
		local newCount = math.max(1, (crossAxisLength + crossAxisSpacing) // (itemLength + crossAxisSpacing))
		if newCount ~= crossAxisCount then
			crossAxisCount = newCount
			markGeometryDirty()
			return true
		end
		return false
	end

	return {
		getItemCount = getItemCount,
		getContentLength = getContentLength,
		getIntersectingIndexRange = getIntersectingIndexRange,
		expandIndexRange = function(range, before, after)
			return staticParts.expandItemRange(range, before, after or before, #keys)
		end,
		getItemLayout = getItemLayout,
		updateItemMeasurement = staticParts.updateItemMeasurementNoop,
		requiresItemMeasurement = staticParts.requiresItemMeasurementFalse,
		applyDataSourceChange = applyDataSourceChange,
		setViewportCrossAxisLength = setViewportCrossAxisLength,
		destroy = staticParts.noop,
	}
end

return masonry
