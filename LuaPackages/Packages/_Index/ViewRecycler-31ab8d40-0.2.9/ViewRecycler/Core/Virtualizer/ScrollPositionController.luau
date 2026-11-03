local Src = script:FindFirstAncestor("ViewRecycler")

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local Diagnostics = require(Src.Core.Diagnostics)
local ScrollAlignment = require(Src.Core.Enums.ScrollAlignment)
local Types = require(Src.Core.Types)

export type Correction = {
	delta: number,
	source: Diagnostics.ScrollCorrectionSource,
}

export type ScrollAnchorSnapshot = {
	anchorKey: string?,
	anchorIndex: number?,
	offsetWithinItem: number,
	fallbackScrollOffset: number,
}

export type AnchorEvidenceItem = {
	key: string,
	viewportCoordinate: number,
	itemLength: number,
}

export type AnchorEvidence = {
	scrollOffset: number,
	viewportLength: number,
	visibleItems: { AnchorEvidenceItem },
}

export type GeometryChange = {
	source: Diagnostics.ScrollCorrectionSource,
	dataSourceChange: Types.DataSourceChangeBatch?,
	anchorEvidence: AnchorEvidence?,
	startInsetDelta: number?,
	preserveStartAnchor: boolean?,
}

export type Options = {
	shouldPreserveUserPosition: () -> boolean,
	getItemCount: () -> number,
	getItemKey: (index: number) -> string,
	getScrollOffset: () -> number,
	clampScrollOffset: (offset: number) -> number,
	getViewportLength: () -> number,
	getVisibleRange: (startOffset: number, endOffset: number) -> Types.IndexRange,
	getItemLayout: (index: number) -> Types.ItemLayout,
	getScrollOffsetForItem: (index: number, alignment: ScrollAlignment.ScrollAlignment?) -> number,
}

export type Controller = {
	setItemAnchor: (index: number, alignment: ScrollAlignment.ScrollAlignment?) -> (),
	-- The coherent range hint is read only when the retained anchor rotates.
	setViewportAnchor: (offset: number, getIndexHint: (() -> number?)?) -> (),
	restoreSnapshotAnchor: (snapshot: ScrollAnchorSnapshot, offset: number) -> (),
	reconcileHostOffset: (offset: number) -> (),
	applyGeometryChange: (change: GeometryChange, mutate: () -> ()) -> Correction?,
	allowsExternalPositionApplication: () -> boolean,
	reset: () -> (),
	captureSnapshot: () -> ScrollAnchorSnapshot,
	getSnapshotOffset: (snapshot: ScrollAnchorSnapshot) -> number,
	destroy: () -> (),
}

type ItemAlignmentAnchor = {
	kind: "itemAlignment",
	key: string,
	indexHint: number?,
	alignment: ScrollAlignment.ScrollAlignment,
}

type ViewportPositionAnchor = {
	kind: "viewportPosition",
	key: string,
	indexHint: number?,
	viewportCoordinate: number,
	itemLength: number,
	scrollOffset: number,
	viewportLength: number,
}

type ActiveAnchor = ItemAlignmentAnchor | ViewportPositionAnchor

local function createScrollPositionController(options: Options): Controller
	local activeAnchor: ActiveAnchor? = nil

	local function findKeyIndex(key: string, candidate: number?): number?
		local itemCount = options.getItemCount()
		if candidate ~= nil and candidate >= 1 and candidate <= itemCount and options.getItemKey(candidate) == key then
			return candidate
		end
		for index = 1, itemCount do
			if options.getItemKey(index) == key then
				return index
			end
		end
		return nil
	end

	local function projectIndex(index: number?, change: Types.DataSourceChange): number?
		if index == nil or change.type == DataSourceChangeType.Reset or change.type == DataSourceChangeType.Reorder then
			return nil
		elseif change.type == DataSourceChangeType.Insert then
			local insertChange = change :: Types.InsertDataSourceChange
			return if insertChange.index <= index then index + #insertChange.keys else index
		elseif change.type == DataSourceChangeType.Remove then
			local removeChange = change :: Types.RemoveDataSourceChange
			if index < removeChange.index then
				return index
			elseif index >= removeChange.index + #removeChange.keys then
				return index - #removeChange.keys
			end
			return nil
		elseif change.type == DataSourceChangeType.Move then
			local moveChange = change :: Types.MoveDataSourceChange
			if index == moveChange.fromIndex then
				return moveChange.toIndex
			elseif moveChange.fromIndex < index and index <= moveChange.toIndex then
				return index - 1
			elseif moveChange.toIndex <= index and index < moveChange.fromIndex then
				return index + 1
			end
		end
		return index
	end

	local function captureViewportAnchor(offset: number, indexHint: number?): ViewportPositionAnchor?
		local itemCount = options.getItemCount()
		local viewportLength = options.getViewportLength()
		if itemCount == 0 or viewportLength <= 0 then
			return nil
		end
		local index: number
		if indexHint == nil then
			local visible = options.getVisibleRange(offset, offset + viewportLength)
			if Types.isIndexRangeEmpty(visible) then
				return nil
			end
			index = visible.firstIndex
		else
			index = indexHint
		end
		index = math.clamp(index, 1, itemCount)
		local itemLayout = options.getItemLayout(index)
		return {
			kind = "viewportPosition",
			key = options.getItemKey(index),
			indexHint = index,
			viewportCoordinate = itemLayout.startOffset - offset,
			itemLength = itemLayout.length,
			scrollOffset = offset,
			viewportLength = viewportLength,
		}
	end

	local function prepareDataChange(changeBatch: Types.DataSourceChangeBatch, evidence: AnchorEvidence?)
		local anchor = activeAnchor
		if anchor == nil then
			return
		end
		local projectedIndex = anchor.indexHint
		for _, change in changeBatch.changes do
			projectedIndex = projectIndex(projectedIndex, change)
		end
		if anchor.kind == "itemAlignment" then
			activeAnchor = {
				kind = "itemAlignment",
				key = anchor.key,
				indexHint = projectedIndex,
				alignment = anchor.alignment,
			}
		else
			activeAnchor = {
				kind = "viewportPosition",
				key = anchor.key,
				indexHint = projectedIndex,
				viewportCoordinate = anchor.viewportCoordinate,
				itemLength = anchor.itemLength,
				scrollOffset = anchor.scrollOffset,
				viewportLength = anchor.viewportLength,
			}
		end
		anchor = activeAnchor :: ActiveAnchor
		if findKeyIndex(anchor.key, anchor.indexHint) ~= nil or anchor.kind == "itemAlignment" then
			return
		end

		-- If the anchored key was removed, replace it with one visible survivor
		-- captured by the owning Geometry transaction before mutation.
		if evidence == nil or evidence.viewportLength <= 0 then
			activeAnchor = nil
			return
		end
		for _, item in evidence.visibleItems do
			local nextIndex = findKeyIndex(item.key, nil)
			if nextIndex ~= nil then
				activeAnchor = {
					kind = "viewportPosition",
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
		activeAnchor = nil
	end

	local function resolve(change: GeometryChange): Correction?
		local anchor = activeAnchor
		if anchor == nil then
			activeAnchor = captureViewportAnchor(options.getScrollOffset(), nil)
			return nil
		end

		local index = findKeyIndex(anchor.key, anchor.indexHint)
		if index == nil then
			activeAnchor = captureViewportAnchor(options.getScrollOffset(), nil)
			return nil
		end

		local source = change.source
		local delta
		if anchor.kind == "itemAlignment" then
			anchor.indexHint = index
			source = Diagnostics.ScrollCorrectionSource.ProgrammaticScroll
			delta = options.getScrollOffsetForItem(index, anchor.alignment) - options.getScrollOffset()
		elseif not options.shouldPreserveUserPosition() then
			activeAnchor = captureViewportAnchor(options.getScrollOffset(), nil)
			return nil
		else
			anchor.indexHint = index
			local coordinate = options.getItemLayout(index).startOffset - options.getScrollOffset()
			local startInsetDelta = change.startInsetDelta or 0
			delta = coordinate - anchor.viewportCoordinate - startInsetDelta
			if change.preserveStartAnchor and options.getScrollOffset() > 0 then
				delta += startInsetDelta
			end
		end

		local currentOffset = options.getScrollOffset()
		delta = options.clampScrollOffset(currentOffset + delta) - currentOffset
		if anchor.kind == "viewportPosition" then
			local appliedDelta = if math.abs(delta) < 1 then 0 else delta
			local itemLayout = options.getItemLayout(index)
			local nextOffset = currentOffset + appliedDelta
			local coordinate = itemLayout.startOffset - nextOffset
			local viewportLength = options.getViewportLength()
			if coordinate < viewportLength and coordinate + itemLayout.length > 0 then
				activeAnchor = {
					kind = "viewportPosition",
					key = anchor.key,
					indexHint = index,
					viewportCoordinate = coordinate,
					itemLength = itemLayout.length,
					scrollOffset = nextOffset,
					viewportLength = viewportLength,
				}
			else
				activeAnchor = captureViewportAnchor(nextOffset, nil)
			end
		end
		return if math.abs(delta) < 1
			then nil
			else {
				delta = delta,
				source = source,
			}
	end

	local function applyGeometryChange(change: GeometryChange, mutate: () -> ()): Correction?
		if change.dataSourceChange ~= nil then
			prepareDataChange(change.dataSourceChange, change.anchorEvidence)
		end
		mutate()
		return resolve(change)
	end

	local function setViewportAnchor(offset: number, getIndexHint: (() -> number?)?)
		local anchor = activeAnchor
		if anchor ~= nil and anchor.kind == "viewportPosition" then
			local coordinate = anchor.viewportCoordinate - (offset - anchor.scrollOffset)
			if coordinate < anchor.viewportLength and coordinate + anchor.itemLength > 0 then
				anchor.viewportCoordinate = coordinate
				anchor.scrollOffset = offset
				return
			end
		end
		activeAnchor = captureViewportAnchor(offset, if getIndexHint == nil then nil else getIndexHint())
	end

	local function captureSnapshot(): ScrollAnchorSnapshot
		local scrollOffset = options.getScrollOffset()
		local anchor = activeAnchor
		if
			anchor ~= nil
			and anchor.kind == "viewportPosition"
			and math.abs(anchor.scrollOffset - scrollOffset) < 0.5
		then
			return {
				anchorKey = anchor.key,
				anchorIndex = anchor.indexHint,
				offsetWithinItem = -anchor.viewportCoordinate,
				fallbackScrollOffset = scrollOffset,
			}
		end
		local viewportLength = options.getViewportLength()
		if viewportLength > 0 then
			local visible = options.getVisibleRange(scrollOffset, scrollOffset + viewportLength)
			if not Types.isIndexRangeEmpty(visible) then
				local index = visible.firstIndex
				return {
					anchorKey = options.getItemKey(index),
					anchorIndex = index,
					offsetWithinItem = scrollOffset - options.getItemLayout(index).startOffset,
					fallbackScrollOffset = scrollOffset,
				}
			end
		end
		return {
			anchorKey = nil,
			anchorIndex = nil,
			offsetWithinItem = 0,
			fallbackScrollOffset = scrollOffset,
		}
	end

	local function getSnapshotOffset(snapshot: ScrollAnchorSnapshot): number
		if snapshot.anchorKey ~= nil then
			local index = findKeyIndex(snapshot.anchorKey, snapshot.anchorIndex)
			if index ~= nil then
				return options.getItemLayout(index).startOffset + snapshot.offsetWithinItem
			end
		end
		return snapshot.fallbackScrollOffset
	end

	return {
		setItemAnchor = function(index, alignment)
			local itemCount = options.getItemCount()
			if itemCount == 0 then
				activeAnchor = nil
				return
			end
			local targetIndex = math.clamp(index, 1, itemCount)
			activeAnchor = {
				kind = "itemAlignment",
				key = options.getItemKey(targetIndex),
				indexHint = targetIndex,
				alignment = alignment or ScrollAlignment.Start,
			}
		end,
		setViewportAnchor = setViewportAnchor,
		restoreSnapshotAnchor = function(snapshot, offset)
			local index = if snapshot.anchorKey == nil
				then nil
				else findKeyIndex(snapshot.anchorKey, snapshot.anchorIndex)
			activeAnchor = captureViewportAnchor(offset, index)
		end,
		reconcileHostOffset = function(offset)
			if activeAnchor == nil or activeAnchor.kind == "viewportPosition" then
				setViewportAnchor(offset)
			end
		end,
		applyGeometryChange = applyGeometryChange,
		allowsExternalPositionApplication = function()
			return activeAnchor == nil or activeAnchor.kind == "viewportPosition"
		end,
		reset = function()
			activeAnchor = nil
		end,
		captureSnapshot = captureSnapshot,
		getSnapshotOffset = getSnapshotOffset,
		destroy = function()
			activeAnchor = nil
		end,
	}
end

return createScrollPositionController
