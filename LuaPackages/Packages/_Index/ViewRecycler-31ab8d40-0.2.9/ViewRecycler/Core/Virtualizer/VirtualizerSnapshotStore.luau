local Src = script:FindFirstAncestor("ViewRecycler")

local DataSource = require(Src.Core.DataSource)
local Layout = require(Src.Core.Layout)
local Placement = require(Src.Core.Placement.PlacementTypes)
local ShallowTable = require(Src.Internal.ShallowTable)
local Types = require(Src.Core.Types)
local VirtualizerSnapshot = require(Src.Core.Virtualizer.VirtualizerSnapshot)
local createItemRevisionTracker = require(Src.Core.Virtualizer.ItemRevisionTracker)
local createPinnedItemPlanner = require(Src.Core.PinnedItems.createPinnedItemPlanner)

local cloneFrozen = ShallowTable.cloneFrozen
local containsEqual = ShallowTable.containsEqual
local optionalContainsEqual = ShallowTable.optionalContainsEqual

export type Revisions = {
	identity: number,
	layoutGeometry: number,
	placementGeometry: number,
	range: number,
	scroll: number,
}

-- VirtualizerState is borrowed for one synchronous commit. The store reads it but
-- never retains or mutates it, so its private caller may reuse the record.
export type VirtualizerState<T> = {
	dataSource: DataSource.DataSource<T>,
	layout: Layout.Runtime,
	visibleRange: Types.IndexRange,
	mountedRange: Types.IndexRange,
	scrollState: Types.ScrollState,
	contentStartOffset: number,
	contentLength: number,
	requiresItemMeasurement: boolean,
	hasViewportPlacements: boolean,
	revisions: Revisions,
}

export type Options<T, RecyclableViewType> = {
	planner: createPinnedItemPlanner.Planner<T, RecyclableViewType>,
	itemRevisions: createItemRevisionTracker.ItemRevisionTracker,
	getRecyclableViewType: (item: T, index: number) -> RecyclableViewType,
	initialScrollState: Types.ScrollState,
	initialRequiresItemMeasurement: boolean,
}

export type Commit<T, RecyclableViewType> = {
	snapshot: VirtualizerSnapshot.Snapshot<T, RecyclableViewType>,
	presentation: VirtualizerSnapshot.PresentationChange,
}

export type VirtualizerSnapshotStore<T, RecyclableViewType> = {
	commit: (state: VirtualizerState<T>) -> Commit<T, RecyclableViewType>,
	getSnapshot: () -> VirtualizerSnapshot.Snapshot<T, RecyclableViewType>,
}

local EMPTY_RANGE = table.freeze({ firstIndex = 1, lastIndex = 0 })
local EMPTY_PLACEMENT = table.freeze({})
local EMPTY_PLAN = table.freeze({
	retainedItems = table.freeze({}),
	additionalAssignments = table.freeze({}),
	placements = table.freeze({}),
	hasViewportRelativePlacements = false,
})
local NO_PRESENTATION_CHANGE = table.freeze({
	assignmentsChanged = false,
	placementChanged = false,
})
local ITEM_LAYOUT_KEYS = Types.ITEM_LAYOUT_KEYS
local ITEM_PLACEMENT_KEYS = Placement.ITEM_PLACEMENT_KEYS
local ENTRY_ASSIGNMENT_KEYS = table.freeze({ "key" })
local IDENTITY_REVISION_KEYS = table.freeze({ "revision" })

local function sameRange(left: Types.IndexRange, right: Types.IndexRange): boolean
	return left.firstIndex == right.firstIndex and left.lastIndex == right.lastIndex
end

local function createVirtualizerSnapshotStore<T, RecyclableViewType>(
	options: Options<T, RecyclableViewType>
): VirtualizerSnapshotStore<
	T,
	RecyclableViewType
>
	local planner = options.planner
	local itemRevisions = options.itemRevisions
	local getRecyclableViewType = options.getRecyclableViewType
	local materialized = {
		entryIdentity = 0,
		entryLayoutGeometry = 0,
		entryPlacementGeometry = 0,
		entryRange = 0,
		entryScroll = 0,
		snapshotLayoutGeometry = 0,
		snapshotRange = 0,
		snapshotScroll = 0,
	}
	local snapshot: VirtualizerSnapshot.Snapshot<T, RecyclableViewType> = table.freeze({
		version = 0,
		entries = table.freeze({}),
		visibleRange = EMPTY_RANGE,
		mountedRange = EMPTY_RANGE,
		scrollState = cloneFrozen(options.initialScrollState),
		contentStartOffset = 0,
		contentLength = 0,
		requiresItemMeasurement = options.initialRequiresItemMeasurement,
	})

	local function recordEntryMaterialization(revisions: Revisions)
		materialized.entryIdentity = revisions.identity
		materialized.entryLayoutGeometry = revisions.layoutGeometry
		materialized.entryPlacementGeometry = revisions.placementGeometry
		materialized.entryRange = revisions.range
		materialized.entryScroll = revisions.scroll
	end

	local function resolvePlacement(
		key: string,
		plan: Placement.Plan<T, RecyclableViewType>,
		scrollOffset: number
	): (Placement.ItemPlacement, Placement.ItemPlacement?)
		local placement = plan.placements[key]
		if placement == nil then
			return EMPTY_PLACEMENT, nil
		elseif placement.viewportRelative then
			return table.freeze({
				mainAxisOffset = scrollOffset + (placement.mainAxisOffset or 0),
				mainAxisLength = placement.mainAxisLength,
				zIndex = placement.zIndex,
			}),
				table.freeze({
					mainAxisOffset = placement.mainAxisOffset,
					mainAxisLength = placement.mainAxisLength,
					viewportRelative = true,
					zIndex = placement.zIndex,
				})
		end
		return table.freeze({
			mainAxisOffset = placement.mainAxisOffset,
			mainAxisLength = placement.mainAxisLength,
			zIndex = placement.zIndex,
		}),
			nil
	end

	local function makeEntry(
		state: VirtualizerState<T>,
		key: string,
		index: number?,
		value: T,
		viewType: RecyclableViewType,
		revision: number,
		pinnedPosition: Placement.PinnedPosition?,
		plan: Placement.Plan<T, RecyclableViewType>,
		previous: VirtualizerSnapshot.Entry<T, RecyclableViewType>?,
		knownLayout: Types.ItemLayout?
	): VirtualizerSnapshot.Entry<T, RecyclableViewType>
		local itemLayout = if index == nil
			then {
				startOffset = 0,
				length = plan.placements[key].mainAxisLength or 0,
			}
			else knownLayout or state.layout.getItemLayout(index)
		local canvasPlacement: Placement.ItemPlacement = EMPTY_PLACEMENT
		local viewportPlacement: Placement.ItemPlacement? = nil
		if state.hasViewportPlacements then
			canvasPlacement, viewportPlacement = resolvePlacement(key, plan, state.scrollState.scrollOffset)
		end
		if previous ~= nil and containsEqual(previous.canvasPlacement, canvasPlacement, ITEM_PLACEMENT_KEYS) then
			canvasPlacement = previous.canvasPlacement
		end
		if
			previous ~= nil
			and optionalContainsEqual(previous.viewportPlacement, viewportPlacement, ITEM_PLACEMENT_KEYS)
		then
			viewportPlacement = previous.viewportPlacement
		end
		if previous ~= nil and containsEqual(previous.itemLayout, itemLayout, ITEM_LAYOUT_KEYS) then
			itemLayout = previous.itemLayout
		end
		if
			previous ~= nil
			and previous.index == index
			and previous.value == value
			and previous.recyclableViewType == viewType
			and previous.identity.revision == revision
			and containsEqual(previous.itemLayout, itemLayout, ITEM_LAYOUT_KEYS)
			and containsEqual(previous.canvasPlacement, canvasPlacement, ITEM_PLACEMENT_KEYS)
			and optionalContainsEqual(previous.viewportPlacement, viewportPlacement, ITEM_PLACEMENT_KEYS)
		then
			return previous
		end
		local identityUnchanged = previous ~= nil
			and previous.index == index
			and previous.identity.revision == revision
			and (previous.identity.kind == Placement.IdentityKind.Pinned) == (pinnedPosition ~= nil)
		local identity = if identityUnchanged
			then (previous :: VirtualizerSnapshot.Entry<T, RecyclableViewType>).identity
			elseif pinnedPosition == nil then table.freeze({
				kind = Placement.IdentityKind.Data,
				index = index :: number,
				revision = revision,
			})
			else table.freeze({
				kind = Placement.IdentityKind.Pinned,
				position = pinnedPosition,
				revision = revision,
			})
		local measurementIdentity = if identityUnchanged
			then (previous :: VirtualizerSnapshot.Entry<T, RecyclableViewType>).measurementIdentity
			else table.freeze({
				itemIndex = index,
				itemKey = key,
				itemRevision = revision,
				pinnedPosition = pinnedPosition,
			})
		return table.freeze({
			key = key,
			index = index,
			value = value,
			recyclableViewType = viewType,
			identity = identity,
			itemLayout = if table.isfrozen(itemLayout)
				then itemLayout
				elseif knownLayout ~= nil then table.freeze(itemLayout)
				else cloneFrozen(itemLayout),
			canvasPlacement = canvasPlacement,
			viewportPlacement = viewportPlacement,
			measurementIdentity = measurementIdentity,
		})
	end

	local function materializeEntries(state: VirtualizerState<T>): (boolean, boolean)
		local revisions = state.revisions
		local mountedRange = state.mountedRange
		local membershipChanged = materialized.entryRange ~= revisions.range
			and not sameRange(snapshot.mountedRange, mountedRange)
		local identityChanged = materialized.entryIdentity ~= revisions.identity
		local layoutGeometryChanged = materialized.entryLayoutGeometry ~= revisions.layoutGeometry
		local placementGeometryChanged = materialized.entryPlacementGeometry ~= revisions.placementGeometry
		local scrollPlacementChanged = state.hasViewportPlacements and materialized.entryScroll ~= revisions.scroll
		if
			not membershipChanged
			and not identityChanged
			and not layoutGeometryChanged
			and not placementGeometryChanged
			and not scrollPlacementChanged
		then
			materialized.entryRange = revisions.range
			materialized.entryScroll = revisions.scroll
			return false, false
		end
		local plan = if state.hasViewportPlacements
			then planner.update({
				dataSource = state.dataSource,
				layout = state.layout,
				scrollOffset = state.scrollState.scrollOffset,
				viewportLength = state.scrollState.viewportLength,
				contentStartOffset = state.contentStartOffset,
			})
			else EMPTY_PLAN :: Placement.Plan<T, RecyclableViewType>
		if
			membershipChanged
			and not state.hasViewportPlacements
			and not identityChanged
			and not layoutGeometryChanged
		then
			local count = if Types.isIndexRangeEmpty(mountedRange)
				then 0
				else mountedRange.lastIndex - mountedRange.firstIndex + 1
			local entries = table.create(count)
			local itemLayouts = {}
			if count > 0 and state.layout.getItemLayouts ~= nil then
				(state.layout.getItemLayouts :: (number, number, { Types.ItemLayout }) -> ())(
					mountedRange.firstIndex,
					mountedRange.lastIndex,
					itemLayouts
				)
			end
			for index = mountedRange.firstIndex, mountedRange.lastIndex do
				local previousIndex = index - snapshot.mountedRange.firstIndex + 1
				local previous = snapshot.entries[previousIndex]
				if previous ~= nil and previous.index == index then
					table.insert(entries, previous)
				else
					local key = state.dataSource.getItemKey(index)
					local value = state.dataSource.getItem(index)
					table.insert(
						entries,
						makeEntry(
							state,
							key,
							index,
							value,
							getRecyclableViewType(value, index),
							itemRevisions.get(key),
							nil,
							plan,
							nil,
							itemLayouts[index - mountedRange.firstIndex + 1]
						)
					)
				end
			end
			table.freeze(entries)
			snapshot = table.freeze({
				version = snapshot.version,
				entries = entries,
				visibleRange = snapshot.visibleRange,
				mountedRange = snapshot.mountedRange,
				scrollState = snapshot.scrollState,
				contentStartOffset = snapshot.contentStartOffset,
				contentLength = snapshot.contentLength,
				requiresItemMeasurement = snapshot.requiresItemMeasurement,
			})
			recordEntryMaterialization(revisions)
			return true, true
		end
		if
			not membershipChanged
			and not state.hasViewportPlacements
			and not identityChanged
			and layoutGeometryChanged
		then
			local itemLayouts = {}
			if #snapshot.entries > 0 and state.layout.getItemLayouts ~= nil then
				(state.layout.getItemLayouts :: (number, number, { Types.ItemLayout }) -> ())(
					mountedRange.firstIndex,
					mountedRange.lastIndex,
					itemLayouts
				)
			end
			local entries = table.create(#snapshot.entries)
			local entriesChanged = false
			for entryIndex, previous in snapshot.entries do
				local entry = makeEntry(
					state,
					previous.key,
					previous.index,
					previous.value,
					previous.recyclableViewType,
					previous.identity.revision,
					nil,
					plan,
					previous,
					itemLayouts[entryIndex]
				)
				entries[entryIndex] = entry
				entriesChanged = entriesChanged or entry ~= previous
			end
			if entriesChanged then
				table.freeze(entries)
				snapshot = table.freeze({
					version = snapshot.version,
					entries = entries,
					visibleRange = snapshot.visibleRange,
					mountedRange = snapshot.mountedRange,
					scrollState = snapshot.scrollState,
					contentStartOffset = snapshot.contentStartOffset,
					contentLength = snapshot.contentLength,
					requiresItemMeasurement = snapshot.requiresItemMeasurement,
				})
			end
			recordEntryMaterialization(revisions)
			return false, entriesChanged
		end
		local previousByKey = {}
		for _, entry in snapshot.entries do
			previousByKey[entry.key] = entry
		end
		local entries = {}
		local included = {}
		local itemLayouts = {}
		if
			layoutGeometryChanged
			and not Types.isIndexRangeEmpty(mountedRange)
			and state.layout.getItemLayouts ~= nil
		then
			(state.layout.getItemLayouts :: (number, number, { Types.ItemLayout }) -> ())(
				mountedRange.firstIndex,
				mountedRange.lastIndex,
				itemLayouts
			)
		end
		if not Types.isIndexRangeEmpty(mountedRange) then
			for index = mountedRange.firstIndex, mountedRange.lastIndex do
				local key = state.dataSource.getItemKey(index)
				local previous = previousByKey[key]
				if
					not state.hasViewportPlacements
					and membershipChanged
					and not identityChanged
					and not layoutGeometryChanged
					and previous ~= nil
					and previous.index == index
				then
					table.insert(entries, previous)
				else
					local value = if not identityChanged
							and previous ~= nil
							and previous.index == index
						then previous.value
						else state.dataSource.getItem(index)
					local revision = if not identityChanged
							and previous ~= nil
							and previous.index == index
						then previous.identity.revision
						else itemRevisions.get(key)
					local viewType = if not identityChanged
							and previous ~= nil
							and previous.index == index
						then previous.recyclableViewType
						else getRecyclableViewType(value, index)
					table.insert(
						entries,
						makeEntry(
							state,
							key,
							index,
							value,
							viewType,
							revision,
							nil,
							plan,
							previous,
							itemLayouts[index - mountedRange.firstIndex + 1]
						)
					)
				end
				included[key] = true
			end
		end
		for _, retained in plan.retainedItems do
			if not included[retained.key] then
				local value = state.dataSource.getItem(retained.index)
				local revision = itemRevisions.get(retained.key)
				local previous = previousByKey[retained.key]
				local viewType = if previous ~= nil
					then previous.recyclableViewType
					else getRecyclableViewType(value, retained.index)
				table.insert(
					entries,
					makeEntry(state, retained.key, retained.index, value, viewType, revision, nil, plan, previous, nil)
				)
				included[retained.key] = true
			end
		end
		for _, additional in plan.additionalAssignments do
			assert(not included[additional.key], `Virtualizer: duplicate snapshot key "{additional.key}"`)
			table.insert(
				entries,
				makeEntry(
					state,
					additional.key,
					nil,
					additional.value,
					additional.itemViewType,
					additional.identity.revision,
					additional.identity.position,
					plan,
					previousByKey[additional.key],
					nil
				)
			)
		end
		local assignmentsChanged = #entries ~= #snapshot.entries
		local entriesChanged = assignmentsChanged
		if not entriesChanged then
			for index, entry in entries do
				if entry ~= snapshot.entries[index] then
					entriesChanged = true
					if
						not containsEqual(entry, snapshot.entries[index], ENTRY_ASSIGNMENT_KEYS)
						or not containsEqual(entry.identity, snapshot.entries[index].identity, IDENTITY_REVISION_KEYS)
					then
						assignmentsChanged = true
					end
				end
			end
		end
		if entriesChanged then
			table.freeze(entries)
			snapshot = table.freeze({
				version = snapshot.version,
				entries = entries,
				visibleRange = snapshot.visibleRange,
				mountedRange = snapshot.mountedRange,
				scrollState = snapshot.scrollState,
				contentStartOffset = snapshot.contentStartOffset,
				contentLength = snapshot.contentLength,
				requiresItemMeasurement = snapshot.requiresItemMeasurement,
			})
		end
		recordEntryMaterialization(revisions)
		return assignmentsChanged, entriesChanged
	end

	local function commit(state: VirtualizerState<T>): Commit<T, RecyclableViewType>
		local revisions = state.revisions
		local assignmentsChanged, entriesChanged = materializeEntries(state)
		local rangeChanged = materialized.snapshotRange ~= revisions.range
		local scrollChanged = materialized.snapshotScroll ~= revisions.scroll
		local layoutGeometryChanged = materialized.snapshotLayoutGeometry ~= revisions.layoutGeometry
		local visibleChanged = rangeChanged and not sameRange(snapshot.visibleRange, state.visibleRange)
		local mountedChanged = rangeChanged and not sameRange(snapshot.mountedRange, state.mountedRange)
		local shellChanged = entriesChanged
			or visibleChanged
			or mountedChanged
			or scrollChanged
			or (
				layoutGeometryChanged
				and (
					snapshot.contentStartOffset ~= state.contentStartOffset
					or snapshot.contentLength ~= state.contentLength
					or snapshot.requiresItemMeasurement ~= state.requiresItemMeasurement
				)
			)
		if shellChanged then
			snapshot = table.freeze({
				version = snapshot.version + 1,
				entries = snapshot.entries,
				visibleRange = if visibleChanged then cloneFrozen(state.visibleRange) else snapshot.visibleRange,
				mountedRange = if mountedChanged then cloneFrozen(state.mountedRange) else snapshot.mountedRange,
				scrollState = if scrollChanged then cloneFrozen(state.scrollState) else snapshot.scrollState,
				contentStartOffset = state.contentStartOffset,
				contentLength = state.contentLength,
				requiresItemMeasurement = state.requiresItemMeasurement,
			})
		end
		materialized.snapshotLayoutGeometry = revisions.layoutGeometry
		materialized.snapshotRange = revisions.range
		materialized.snapshotScroll = revisions.scroll
		local presentation = if assignmentsChanged or entriesChanged
			then table.freeze({
				assignmentsChanged = assignmentsChanged,
				placementChanged = entriesChanged,
			})
			else NO_PRESENTATION_CHANGE
		return {
			snapshot = snapshot,
			presentation = presentation,
		}
	end

	return {
		commit = commit,
		getSnapshot = function()
			return snapshot
		end,
	}
end

return createVirtualizerSnapshotStore
