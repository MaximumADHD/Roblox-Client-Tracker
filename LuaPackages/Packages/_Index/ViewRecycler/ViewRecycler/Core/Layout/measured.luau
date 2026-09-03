-- Measured layout: items size themselves; the host records rendered
-- measurements. Until an item is measured it occupies an
-- estimated length (a running average seeded by estimatedItemLength).
--
-- Viewport tracking and scroll correction live in the
-- VirtualizerEngine (which reads the anchor item's offset before/after a
-- measurement and fires its own scroll-correction event — that also
-- corrects shifts caused by updated estimates).
--
-- Identity: active measured sizes persist exactly by key. Removed sizes move
-- to a detached LRU and can be restored on re-insertion while retained. The
-- index → key map is maintained incrementally from DataSourceChange deltas;
-- `reset` and `reorder` each pay one O(n) rebuild.
--
-- Stale-measurement defense: a measurement whose key no longer sits at the given
-- index (the data changed between render and measurement settling) is
-- dropped instead of corrupting a neighbor's size.
local Src = script:FindFirstAncestor("ViewRecycler")

local AveragePropagation = require(Src.Core.Layout.Policies.AveragePropagation)
local CollapsedEstimatedTree = require(Src.Core.Layout.SizeTree.CollapsedEstimatedTree)
local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local DetachedMeasurementCache = require(Src.Core.Layout.Policies.DetachedMeasurementCache)
local LayoutRuntime = require(Src.Core.Layout.LayoutRuntime)
local Types = require(Src.Core.Types)
local createDebugLogger = require(Src.Internal.createDebugLogger)
local staticParts = require(Src.Core.Layout.staticParts)

local log = createDebugLogger("Layout.measured")

export type EstimationPolicy = {
	-- Record a measurement and decide whether the latest average should
	-- become the global estimate for unmeasured items.
	recordMeasurementAndShouldUpdateEstimates: (currentAverage: number) -> boolean,
}

export type MeasuredOptions = {
	estimatedItemLength: number?,
	estimationPolicy: EstimationPolicy?,
	detachedMeasurementCapacity: DetachedMeasurementCache.Capacity?,
}

local DEFAULT_ESTIMATED_ITEM_LENGTH = 50

local function measured(options: MeasuredOptions?): LayoutRuntime.Runtime
	local opts: MeasuredOptions = options or {}
	local seed = opts.estimatedItemLength or DEFAULT_ESTIMATED_ITEM_LENGTH
	local estimationPolicy: EstimationPolicy = opts.estimationPolicy
		or AveragePropagation.new({ initialAverage = seed })
	local detachedMeasurements = DetachedMeasurementCache.new(opts.detachedMeasurementCapacity)

	local tree = CollapsedEstimatedTree.new(seed)
	local activeMeasurements: { [string]: number } = {}
	local activeKeys: { [string]: boolean } = {}
	local indexToKey: { string } = {}
	local sum = 0
	local measuredCount = 0
	local cachedIntersectionIndex: number? = nil
	local cachedIntersectionStart = 0
	local cachedIntersectionLength = 0

	local function average(): number
		return if measuredCount > 0 then sum / measuredCount else seed
	end

	local function addActiveMeasurement(itemKey: string, length: number)
		activeMeasurements[itemKey] = length
		sum += length
		measuredCount += 1
	end

	local function restoreActiveMeasurement(itemKey: string)
		local length = detachedMeasurements.take(itemKey)
		if length ~= nil then
			addActiveMeasurement(itemKey, length)
		end
	end

	local function detachActiveMeasurement(itemKey: string)
		local length = activeMeasurements[itemKey]
		if length == nil then
			return
		end
		activeMeasurements[itemKey] = nil
		sum -= length
		measuredCount -= 1
		detachedMeasurements.put(itemKey, length)
	end

	local function getItemCount(): number
		return tree.length()
	end

	local function getContentLength(): number
		return tree.totalSum()
	end

	local function getItemLayout(index: number): Types.ItemLayout
		if cachedIntersectionIndex == index then
			return {
				startOffset = cachedIntersectionStart,
				length = cachedIntersectionLength,
			}
		end
		return {
			startOffset = tree.prefixSum(index),
			length = tree.getSize(index),
		}
	end

	local function getItemLayouts(firstIndex: number, lastIndex: number, output: { Types.ItemLayout })
		tree.fillRange(firstIndex, lastIndex, output :: any)
	end

	local function getIntersectingIndexRange(startOffset: number, endOffsetExclusive: number): Types.IndexRange
		local n = tree.length()
		if n == 0 or endOffsetExclusive <= startOffset then
			cachedIntersectionIndex = nil
			return Types.EMPTY_INDEX_RANGE
		end
		local resolvedFirstIndex, firstStart, firstLength = tree.entryAtPrefixSum(startOffset)
		local firstIndex = math.clamp(resolvedFirstIndex, 1, n)
		if resolvedFirstIndex == firstIndex then
			cachedIntersectionIndex = firstIndex
			cachedIntersectionStart = firstStart
			cachedIntersectionLength = firstLength
		else
			cachedIntersectionIndex = nil
		end
		local lastIndex = math.clamp(tree.indexAtPrefixSum(endOffsetExclusive), firstIndex, n)
		-- indexAtPrefixSum resolves exact boundaries to the item on the
		-- right. The query end is exclusive, so exclude that item.
		if tree.prefixSum(lastIndex) >= endOffsetExclusive then
			lastIndex -= 1
		end
		if lastIndex < firstIndex then
			return Types.EMPTY_INDEX_RANGE
		end
		return { firstIndex = firstIndex, lastIndex = lastIndex }
	end

	local function updateItemMeasurement(measurement: Types.ItemLayoutMeasurement): LayoutRuntime.MeasurementUpdate
		local index = measurement.itemIndex
		local itemKey = measurement.itemKey
		local length = measurement.length
		if indexToKey[index] ~= itemKey then
			log("measurement DROPPED key=%s index=%d (index now holds %s)", itemKey, index, tostring(indexToKey[index]))
			return {
				accepted = false,
				geometryChanged = false,
			}
		end

		local previous = activeMeasurements[itemKey]
		if previous == length then
			return {
				accepted = true,
				geometryChanged = false,
			}
		end
		cachedIntersectionIndex = nil

		if previous == nil then
			addActiveMeasurement(itemKey, length)
		else
			sum += length - previous
			activeMeasurements[itemKey] = length
		end

		local geometryChanged = false
		if tree.getSize(index) ~= length then
			geometryChanged = true
		end
		tree.update(index, length)

		if estimationPolicy.recordMeasurementAndShouldUpdateEstimates(average()) then
			geometryChanged = tree.setEstimatedItemLength(average()) or geometryChanged
		end

		log(
			"measurement key=%s index=%d length=%.1f (avg=%.2f, changed=%s)",
			itemKey,
			index,
			length,
			average(),
			tostring(geometryChanged)
		)

		return {
			accepted = true,
			geometryChanged = geometryChanged,
		}
	end

	local function requiresItemMeasurement(): boolean
		return true
	end

	local function rebuildFromKeys(newIndexToKey: { string })
		indexToKey = newIndexToKey
		tree.buildFromMeasurements(#newIndexToKey, function(index)
			return activeMeasurements[newIndexToKey[index]]
		end)
	end

	local function applyReset(keys: { string })
		local n = #keys
		local newIndexToKey = table.create(n)
		local newActiveKeys: { [string]: boolean } = {}
		for i = 1, n do
			local key = keys[i]
			if newActiveKeys[key] ~= nil then
				error(`Layout.measured: duplicate key "{key}"`, 2)
			end
			newIndexToKey[i] = key
			newActiveKeys[key] = true
		end

		-- Restore returning keys before newly removed keys can consume cache
		-- capacity. Keys that stayed active never enter the detached cache.
		for key in newActiveKeys do
			if activeKeys[key] == nil then
				restoreActiveMeasurement(key)
			end
		end
		for _, key in indexToKey do
			if newActiveKeys[key] == nil then
				detachActiveMeasurement(key)
			end
		end
		activeKeys = newActiveKeys
		rebuildFromKeys(newIndexToKey)
	end

	local function applyInsert(index: number, insertedKeys: { string })
		local insertCount = #insertedKeys
		local seen: { [string]: boolean } = {}
		for offset = 0, insertCount - 1 do
			local key = insertedKeys[offset + 1]
			if activeKeys[key] ~= nil or seen[key] ~= nil then
				error(`Layout.measured: duplicate key "{key}"`, 2)
			end
			seen[key] = true
		end
		for _, key in insertedKeys do
			restoreActiveMeasurement(key)
			activeKeys[key] = true
		end

		if tree.prefersIncremental(insertCount) then
			for offset, key in insertedKeys do
				local i = index + offset - 1
				table.insert(indexToKey, i, key)
				tree.insert(i, activeMeasurements[key])
			end
			return
		end

		-- Large insert: splice the key array (no user key calls for
		-- existing items) and rebuild the tree in O(n).
		local oldN = #indexToKey
		local newIndexToKey = table.create(oldN + insertCount)
		table.move(indexToKey, 1, index - 1, 1, newIndexToKey)
		for offset, key in insertedKeys do
			newIndexToKey[index + offset - 1] = key
		end
		table.move(indexToKey, index, oldN, index + insertCount, newIndexToKey)
		rebuildFromKeys(newIndexToKey)
	end

	local function applyRemove(index: number, removedKeys: { string })
		local removeCount = #removedKeys
		for i = index, index + removeCount - 1 do
			local key = indexToKey[i]
			assert(key == removedKeys[i - index + 1], "Layout.measured: remove keys do not match current order")
			activeKeys[key] = nil
			detachActiveMeasurement(key)
		end

		if tree.prefersIncremental(removeCount) then
			for _ = 1, removeCount do
				table.remove(indexToKey, index)
				tree.remove(index)
			end
			return
		end

		local oldN = #indexToKey
		local newIndexToKey = table.create(oldN - removeCount)
		table.move(indexToKey, 1, index - 1, 1, newIndexToKey)
		table.move(indexToKey, index + removeCount, oldN, index, newIndexToKey)
		rebuildFromKeys(newIndexToKey)
	end

	local function applyMove(fromIndex: number, toIndex: number, key: string)
		assert(indexToKey[fromIndex] == key, "Layout.measured: move key does not match current order")
		table.remove(indexToKey, fromIndex)
		tree.remove(fromIndex)
		table.insert(indexToKey, toIndex, key)
		tree.insert(toIndex, activeMeasurements[key])
	end

	local function applyReorder(keys: { string })
		assert(#keys == #indexToKey, "Layout.measured: reorder must contain every active key")
		local seen: { [string]: boolean } = {}
		for _, key in keys do
			assert(
				activeKeys[key] == true and seen[key] == nil,
				"Layout.measured: reorder must contain every active key once"
			)
			seen[key] = true
		end
		rebuildFromKeys(table.clone(keys))
	end

	local function applyDataSourceChange(change: Types.DataSourceChange): boolean
		cachedIntersectionIndex = nil
		local geometryChanged = true
		if change.type == DataSourceChangeType.Reset then
			applyReset((change :: Types.ResetDataSourceChange).keys)
		elseif change.type == DataSourceChangeType.Insert then
			local insertChange = change :: Types.InsertDataSourceChange
			applyInsert(insertChange.index, insertChange.keys)
		elseif change.type == DataSourceChangeType.Remove then
			local removeChange = change :: Types.RemoveDataSourceChange
			applyRemove(removeChange.index, removeChange.keys)
		elseif change.type == DataSourceChangeType.Update then
			geometryChanged = false
		elseif change.type == DataSourceChangeType.Move then
			local moveChange = change :: Types.MoveDataSourceChange
			applyMove(moveChange.fromIndex, moveChange.toIndex, moveChange.key)
		elseif change.type == DataSourceChangeType.Reorder then
			applyReorder((change :: Types.ReorderDataSourceChange).keys)
		end
		return geometryChanged
	end

	return {
		getItemCount = getItemCount,
		getContentLength = getContentLength,
		getIntersectingIndexRange = getIntersectingIndexRange,
		expandIndexRange = function(range, before, after)
			return staticParts.expandItemRange(range, before, after or before, tree.length())
		end,
		getItemLayout = getItemLayout,
		getItemLayouts = getItemLayouts,
		updateItemMeasurement = updateItemMeasurement,
		requiresItemMeasurement = requiresItemMeasurement,
		applyDataSourceChange = applyDataSourceChange,
		setViewportCrossAxisLength = staticParts.geometryUnchanged,
		destroy = function() end,
	}
end

return measured
