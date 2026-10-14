-- Keeps one item steady while geometry changes: either a viewport position
-- the user reached or a Programmatic item target. `preserve` wraps one
-- geometry mutation and returns the correction that restores the anchor.
local Src = script:FindFirstAncestor("ViewRecycler")

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local Diagnostics = require(Src.Core.Diagnostics)
local ItemSequence = require(Src.Core.Virtualizer.ItemSequence)
local ScrollAlignment = require(Src.Core.Enums.ScrollAlignment)
local Types = require(Src.Core.Types)
local createViewport = require(Src.Core.Virtualizer.Viewport)

export type Correction = {
	delta: number,
	source: Diagnostics.ScrollCorrectionSource,
}

export type Snapshot = {
	anchorKey: string?,
	anchorIndex: number?,
	offsetWithinItem: number,
	fallbackScrollOffset: number,
}

-- The Item whose `alignment` edge Anchor correction keeps still.
export type AnchoredItem = {
	index: number,
	alignment: ScrollAlignment.ScrollAlignment,
}

export type Change = {
	source: Diagnostics.ScrollCorrectionSource,
	dataSourceChange: Types.DataSourceChangeBatch?,
	startInsetDelta: number?,
	preserveStartAnchor: boolean?,
}

export type Options = {
	viewport: createViewport.Viewport,
	getItemSequence: () -> ItemSequence.ItemSequence,
	shouldPreserveUserPosition: () -> boolean,
}

export type ScrollAnchor = {
	setItemTarget: (index: number, alignment: ScrollAlignment.ScrollAlignment?) -> (),
	setViewport: (offset: number) -> (),
	observeHost: (offset: number) -> (),
	restore: (snapshot: Snapshot, offset: number) -> (),
	snapshotOffset: (snapshot: Snapshot) -> number,
	preserve: (change: Change, mutate: () -> ()) -> Correction?,
	allowsPolicyOffset: () -> boolean,
	getAnchoredItem: () -> AnchoredItem?,
	reset: () -> (),
}

type ItemTarget = {
	kind: "itemTarget",
	key: string,
	indexHint: number?,
	alignment: ScrollAlignment.ScrollAlignment,
}

type ViewportAnchor = {
	kind: "viewport",
	key: string,
	indexHint: number?,
	viewportCoordinate: number,
	itemLength: number,
	scrollOffset: number,
	viewportLength: number,
}

type Anchor = ItemTarget | ViewportAnchor

type Evidence = {
	scrollOffset: number,
	viewportLength: number,
	items: { { key: string, viewportCoordinate: number, itemLength: number } },
}

local function projectIndex(index: number?, change: Types.DataSourceChange): number?
	if index == nil or change.type == DataSourceChangeType.Reset or change.type == DataSourceChangeType.Reorder then
		return nil
	elseif change.type == DataSourceChangeType.Insert then
		local insert = change :: Types.InsertDataSourceChange
		return if insert.index <= index then index + #insert.keys else index
	elseif change.type == DataSourceChangeType.Remove then
		local remove = change :: Types.RemoveDataSourceChange
		if index < remove.index then
			return index
		elseif index >= remove.index + #remove.keys then
			return index - #remove.keys
		end
		return nil
	elseif change.type == DataSourceChangeType.Move then
		local move = change :: Types.MoveDataSourceChange
		if index == move.fromIndex then
			return move.toIndex
		elseif move.fromIndex < index and index <= move.toIndex then
			return index - 1
		elseif move.toIndex <= index and index < move.fromIndex then
			return index + 1
		end
	end
	return index
end

local function createScrollAnchor(options: Options): ScrollAnchor
	local viewport = options.viewport
	local anchor: Anchor? = nil

	local function findKeyIndex(key: string, candidate: number?): number?
		local sequence = options.getItemSequence()
		local itemCount = sequence.getItemCount()
		if candidate ~= nil and candidate >= 1 and candidate <= itemCount and sequence.getItemKey(candidate) == key then
			return candidate
		end
		for index = 1, itemCount do
			if sequence.getItemKey(index) == key then
				return index
			end
		end
		return nil
	end

	local function captureViewport(offset: number, indexHint: number?): ViewportAnchor?
		local sequence = options.getItemSequence()
		local itemCount = sequence.getItemCount()
		local viewportLength = viewport.getLength()
		if itemCount == 0 or viewportLength <= 0 then
			return nil
		end
		local index = indexHint
		if index == nil then
			local visible = viewport.visibleRangeAt(offset, offset + viewportLength)
			if Types.isIndexRangeEmpty(visible) then
				return nil
			end
			index = visible.firstIndex
			-- An estimated Item's measurement would move every Item after it,
			-- so anchor the first visible Item whose length is final.
			local isItemMeasured = viewport.getLayout().isItemMeasured
			if isItemMeasured ~= nil then
				for candidate = visible.firstIndex, math.min(visible.lastIndex, itemCount) do
					if isItemMeasured(candidate) then
						index = candidate
						break
					end
				end
			end
		end
		local clamped = math.clamp(index :: number, 1, itemCount)
		local itemLayout = viewport.placedItemLayout(clamped)
		return {
			kind = "viewport",
			key = sequence.getItemKey(clamped),
			indexHint = clamped,
			viewportCoordinate = itemLayout.startOffset - offset,
			itemLength = itemLayout.length,
			scrollOffset = offset,
			viewportLength = viewportLength,
		}
	end

	-- The DataSource has already committed the batch, so evidence records the
	-- keys now at the previously visible indices with their prior geometry.
	local function captureEvidence(): Evidence?
		local offset = viewport.getScrollOffset()
		local viewportLength = viewport.getLength()
		local visible = viewport.getVisibleRange()
		if Types.isIndexRangeEmpty(visible) then
			return nil
		end
		local sequence = options.getItemSequence()
		local itemCount = sequence.getItemCount()
		local items = {}
		for index = visible.firstIndex, math.min(visible.lastIndex, itemCount) do
			local itemLayout = viewport.placedItemLayout(index)
			table.insert(items, {
				key = sequence.getItemKey(index),
				viewportCoordinate = itemLayout.startOffset - offset,
				itemLength = itemLayout.length,
			})
		end
		return { scrollOffset = offset, viewportLength = viewportLength, items = items }
	end

	local function prepareDataChange(changeBatch: Types.DataSourceChangeBatch, evidence: Evidence?)
		local current = anchor
		if current == nil then
			return
		end
		local projected = current.indexHint
		for _, change in changeBatch.changes do
			projected = projectIndex(projected, change)
		end
		current.indexHint = projected
		if current.kind == "itemTarget" or findKeyIndex(current.key, projected) ~= nil then
			return
		end
		-- The anchored key was removed: continue from the first visible
		-- survivor captured before the mutation.
		if evidence ~= nil and evidence.viewportLength > 0 then
			for _, item in evidence.items do
				local nextIndex = findKeyIndex(item.key, nil)
				if nextIndex ~= nil then
					anchor = {
						kind = "viewport",
						key = item.key,
						indexHint = nextIndex,
						viewportCoordinate = item.viewportCoordinate,
						itemLength = item.itemLength,
						scrollOffset = evidence.scrollOffset,
						viewportLength = evidence.viewportLength,
					}
					return
				end
			end
		end
		anchor = nil
	end

	local function resolve(change: Change): Correction?
		local current = anchor
		if current == nil then
			anchor = captureViewport(viewport.getScrollOffset(), nil)
			return nil
		end
		local index = findKeyIndex(current.key, current.indexHint)
		if index == nil then
			anchor = captureViewport(viewport.getScrollOffset(), nil)
			return nil
		end
		local source = change.source
		local offset = viewport.getScrollOffset()
		local delta
		if current.kind == "itemTarget" then
			current.indexHint = index
			source = Diagnostics.ScrollCorrectionSource.ProgrammaticScroll
			delta = viewport.offsetForItem(index, current.alignment) - offset
		elseif not options.shouldPreserveUserPosition() then
			anchor = captureViewport(offset, nil)
			return nil
		else
			current.indexHint = index
			local coordinate = viewport.placedItemLayout(index).startOffset - offset
			local startInsetDelta = change.startInsetDelta or 0
			delta = coordinate - current.viewportCoordinate - startInsetDelta
			if change.preserveStartAnchor and offset > 0 then
				delta += startInsetDelta
			end
		end
		delta = viewport.clamp(offset + delta) - offset
		if current.kind == "viewport" then
			local nextOffset = offset + (if math.abs(delta) < 1 then 0 else delta)
			local itemLayout = viewport.placedItemLayout(index)
			local coordinate = itemLayout.startOffset - nextOffset
			local viewportLength = viewport.getLength()
			if coordinate < viewportLength and coordinate + itemLayout.length > 0 then
				anchor = {
					kind = "viewport",
					key = current.key,
					indexHint = index,
					viewportCoordinate = coordinate,
					itemLength = itemLayout.length,
					scrollOffset = nextOffset,
					viewportLength = viewportLength,
				}
			else
				anchor = captureViewport(nextOffset, nil)
			end
		end
		return if math.abs(delta) < 1 then nil else { delta = delta, source = source }
	end

	local function setViewport(offset: number)
		local current = anchor
		if current ~= nil and current.kind == "viewport" then
			local coordinate = current.viewportCoordinate - (offset - current.scrollOffset)
			if coordinate < current.viewportLength and coordinate + current.itemLength > 0 then
				current.viewportCoordinate = coordinate
				current.scrollOffset = offset
				return
			end
		end
		anchor = captureViewport(offset, nil)
	end

	return {
		setItemTarget = function(index, alignment)
			local sequence = options.getItemSequence()
			local itemCount = sequence.getItemCount()
			if itemCount == 0 then
				anchor = nil
				return
			end
			local target = math.clamp(index, 1, itemCount)
			anchor = {
				kind = "itemTarget",
				key = sequence.getItemKey(target),
				indexHint = target,
				alignment = alignment or ScrollAlignment.Start,
			}
		end,
		setViewport = setViewport,
		observeHost = function(offset)
			if anchor == nil or (anchor :: Anchor).kind == "viewport" then
				setViewport(offset)
			end
		end,
		restore = function(snapshot, offset)
			local index = if snapshot.anchorKey == nil
				then nil
				else findKeyIndex(snapshot.anchorKey, snapshot.anchorIndex)
			anchor = captureViewport(offset, index)
		end,
		snapshotOffset = function(snapshot)
			if snapshot.anchorKey ~= nil then
				local index = findKeyIndex(snapshot.anchorKey, snapshot.anchorIndex)
				if index ~= nil then
					return viewport.placedItemLayout(index).startOffset + snapshot.offsetWithinItem
				end
			end
			return snapshot.fallbackScrollOffset
		end,
		preserve = function(change, mutate)
			if change.dataSourceChange ~= nil then
				prepareDataChange(change.dataSourceChange, captureEvidence())
			end
			mutate()
			return resolve(change)
		end,
		allowsPolicyOffset = function()
			return anchor == nil or (anchor :: Anchor).kind == "viewport"
		end,
		getAnchoredItem = function()
			local current = anchor
			if current == nil or (current.kind == "viewport" and not options.shouldPreserveUserPosition()) then
				return nil
			end
			-- The index hint follows data changes without reading keys, which
			-- is close enough for placement until the anchor next resolves.
			local index = current.indexHint
			if index == nil then
				return nil
			end
			return table.freeze({
				index = index,
				alignment = if current.kind == "itemTarget" then current.alignment else ScrollAlignment.Start,
			})
		end,
		reset = function()
			anchor = nil
		end,
	}
end

return createScrollAnchor
