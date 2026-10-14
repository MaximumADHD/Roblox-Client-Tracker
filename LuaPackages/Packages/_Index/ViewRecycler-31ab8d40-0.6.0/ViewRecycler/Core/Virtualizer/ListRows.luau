-- Owns the mounted rows of one list: range rows in index order, then sticky
-- rows retained outside the range, then pinned rows. Each row is its own
-- Slot binding and keeps one immutable View state. Rows track their own staleness,
-- so an apply reads only the keys, payloads, and layouts that may have moved.
local Src = script:FindFirstAncestor("ViewRecycler")

local DataSource = require(Src.Core.DataSource)
local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local Diagnostics = require(Src.Core.Diagnostics)
local Layout = require(Src.Core.Layout)
local Placement = require(Src.Core.Placement.PlacementTypes)
local ShallowTable = require(Src.Internal.ShallowTable)
local Types = require(Src.Core.Types)
local createSlotBinder = require(Src.Core.Recycling.SlotBinder)

local cloneFrozen = ShallowTable.cloneFrozen
local containsEqual = ShallowTable.containsEqual
local optionalContainsEqual = ShallowTable.optionalContainsEqual

local ITEM_LAYOUT_KEYS = Types.ITEM_LAYOUT_KEYS
local ITEM_PLACEMENT_KEYS = Placement.ITEM_PLACEMENT_KEYS
local EMPTY_RANGE = table.freeze({ firstIndex = 1, lastIndex = 0 })
local EMPTY_PLACEMENT = table.freeze({})
local EMPTY_LIST = table.freeze({})
local EMPTY_PLAN: Placement.Plan = table.freeze({
	retainedItems = EMPTY_LIST,
	additionalItems = EMPTY_LIST,
	placements = EMPTY_PLACEMENT,
	hasViewportRelativePlacements = false,
}) :: any

export type Assignment<T> = createSlotBinder.Assignment<T>

export type ViewState<T> = {
	assignment: Assignment<T>,
	index: number?,
	pinnedPosition: Placement.PinnedPosition?,
	itemLayout: Types.ItemLayout,
	canvasPlacement: Placement.ItemPlacement,
	viewportPlacement: Placement.ItemPlacement?,
	contentStartOffset: number,
}

export type MountedView<ItemView, T> = {
	itemView: ItemView,
	state: ViewState<T>,
}

export type Measurement<ItemView, T> = {
	itemView: ItemView,
	state: ViewState<T>,
	length: number,
}

export type AcceptedMeasurement = {
	index: number?,
	key: string,
	pinnedPosition: Placement.PinnedPosition?,
	pinnedRevision: number?,
	length: number,
}

-- Entered Views are newly bound to their key; updated Views keep their key
-- and publish a new state; departed Views were released.
export type Changes<ItemView, T> = {
	entered: { MountedView<ItemView, T> },
	updated: { MountedView<ItemView, T> },
	departed: { ItemView },
}

export type Frame<T> = {
	dataSource: DataSource.DataSource<T>,
	layout: Layout.Runtime,
	mountedRange: Types.IndexRange,
	scrollOffset: number,
	contentStartOffset: number,
	plan: Placement.Plan?,
}

export type PinnedItem<T, ItemViewType> = {
	key: string,
	value: T,
	itemViewType: ItemViewType,
}

export type Options<ItemView, T, ItemViewType> = {
	slotBinder: createSlotBinder.SlotBinder<ItemView, T, ItemViewType>,
	getItemViewType: (item: T, index: number) -> ItemViewType,
	getPinnedItem: (position: Placement.PinnedPosition) -> PinnedItem<T, ItemViewType>?,
}

export type ListRows<ItemView, T, ItemViewType> = {
	noteDataChange: (changeBatch: Types.DataSourceChangeBatch) -> (),
	invalidateKeys: () -> (),
	invalidatePayloads: () -> (),
	invalidateLayout: () -> (),
	apply: (frame: Frame<T>) -> (Changes<ItemView, T>?, Diagnostics.Event?),
	release: () -> { ItemView },
	destroy: () -> (),
	isApplied: () -> boolean,
	getMountedViews: () -> { MountedView<ItemView, T> },
	validate: (measurements: { Measurement<ItemView, T> }) -> ({ AcceptedMeasurement }, number),
}

-- A row is its own Slot binding: the binder adopts an entering row and owns
-- its `view` and `assignment`, and rewrites `value` on payload updates.
type Row<ItemView, T, ItemViewType> = {
	key: string,
	value: T,
	viewType: ItemViewType,
	view: ItemView,
	assignment: Assignment<T>,
	index: number?,
	pinnedPosition: Placement.PinnedPosition?,
	pinnedRevision: number?,
	side: boolean,
	epoch: number,
	entered: boolean,
	changed: boolean,
	state: ViewState<T>,
	record: MountedView<ItemView, T>,
}

local function sameRange(left: Types.IndexRange, right: Types.IndexRange): boolean
	return left.firstIndex == right.firstIndex and left.lastIndex == right.lastIndex
end

-- A measured length depends on the content and the cross-axis slot that
-- sized it, not on where the row sits along the main axis.
local function measuresSameContent(current: ViewState<any>, measured: ViewState<any>): boolean
	if current == measured then
		return true
	end
	local currentLayout = current.itemLayout
	local measuredLayout = measured.itemLayout
	return current.assignment == measured.assignment
		and current.pinnedPosition == measured.pinnedPosition
		and currentLayout.crossAxisIndex == measuredLayout.crossAxisIndex
		and currentLayout.crossAxisCount == measuredLayout.crossAxisCount
		and currentLayout.crossAxisSpacing == measuredLayout.crossAxisSpacing
end

local function resolveLayout(
	itemLayout: Types.ItemLayout,
	previous: Types.ItemLayout?,
	fresh: boolean?
): Types.ItemLayout
	if previous ~= nil and containsEqual(previous, itemLayout, ITEM_LAYOUT_KEYS) then
		return previous
	end
	if table.isfrozen(itemLayout) then
		return itemLayout
	end
	return if fresh then table.freeze(itemLayout) else cloneFrozen(itemLayout)
end

local function resolvePlacement(
	placement: Placement.ItemPlacement?,
	scrollOffset: number,
	previous: ViewState<any>?
): (Placement.ItemPlacement, Placement.ItemPlacement?)
	local canvasPlacement: Placement.ItemPlacement = EMPTY_PLACEMENT
	local viewportPlacement: Placement.ItemPlacement? = nil
	if placement ~= nil and placement.viewportRelative then
		local endLimit = placement.mainAxisEndLimit
		canvasPlacement = {
			mainAxisOffset = scrollOffset + (placement.mainAxisOffset or 0),
			mainAxisLength = placement.mainAxisLength,
			mainAxisEndLimit = if endLimit == nil then nil else scrollOffset + endLimit,
			zIndex = placement.zIndex,
		}
		viewportPlacement = {
			mainAxisOffset = placement.mainAxisOffset,
			mainAxisLength = placement.mainAxisLength,
			mainAxisEndLimit = endLimit,
			viewportRelative = true,
			zIndex = placement.zIndex,
		}
	elseif placement ~= nil then
		canvasPlacement = {
			mainAxisOffset = placement.mainAxisOffset,
			mainAxisLength = placement.mainAxisLength,
			mainAxisEndLimit = placement.mainAxisEndLimit,
			zIndex = placement.zIndex,
		}
	end
	if previous ~= nil and containsEqual(previous.canvasPlacement, canvasPlacement, ITEM_PLACEMENT_KEYS) then
		canvasPlacement = previous.canvasPlacement
	elseif canvasPlacement ~= EMPTY_PLACEMENT then
		table.freeze(canvasPlacement)
	end
	if
		previous ~= nil and optionalContainsEqual(previous.viewportPlacement, viewportPlacement, ITEM_PLACEMENT_KEYS)
	then
		viewportPlacement = previous.viewportPlacement
	elseif viewportPlacement ~= nil then
		table.freeze(viewportPlacement)
	end
	return canvasPlacement, viewportPlacement
end

local function createListRows<ItemView, T, ItemViewType>(options: Options<ItemView, T, ItemViewType>): ListRows<ItemView, T, ItemViewType>
	local binder = options.slotBinder
	local destroyed = false
	-- Range rows cover `appliedRange` exactly while `contiguous` holds.
	local rows: { Row<ItemView, T, ItemViewType> } = {}
	local sideRows: { Row<ItemView, T, ItemViewType> } = {}
	local contiguous = true
	local rowsByKey: { [string]: Row<ItemView, T, ItemViewType> } = {}
	local rowsByView: { [ItemView]: Row<ItemView, T, ItemViewType> } = {}
	local applied = false
	local appliedRange: Types.IndexRange = EMPTY_RANGE
	local appliedContentStartOffset = 0
	local appliedLayout: Layout.Runtime? = nil
	local appliedPlan: Placement.Plan = EMPTY_PLAN
	local epoch = 0
	local mountedViews: { MountedView<ItemView, T> } = EMPTY_LIST :: any

	-- Staleness since the last apply. Keys at known indices may have moved;
	-- payloads may need a reread; item layouts may have moved.
	local keysDirty = false
	local payloadsDirty = false
	local layoutDirty = false
	local updatedKeys: { [string]: boolean } = {}

	-- Keys of the last released range stay valid for reactivation until a
	-- data change moves keys inside that range.
	local releasedKeys: { string }? = nil
	local releasedRange: Types.IndexRange = EMPTY_RANGE

	local function knownRange(): Types.IndexRange
		if applied then
			return appliedRange
		end
		return if releasedKeys == nil then EMPTY_RANGE else releasedRange
	end

	local function noteDataChange(changeBatch: Types.DataSourceChangeBatch)
		for _, change in changeBatch.changes do
			local kind = change.type
			if kind == DataSourceChangeType.Reset then
				keysDirty = true
				payloadsDirty = true
			elseif kind == DataSourceChangeType.Reorder then
				keysDirty = true
			elseif kind == DataSourceChangeType.Update then
				for _, key in (change :: Types.UpdateDataSourceChange).keys do
					updatedKeys[key] = true
				end
			elseif kind == DataSourceChangeType.Insert then
				local insert = change :: Types.InsertDataSourceChange
				for _, key in insert.keys do
					updatedKeys[key] = true
				end
				local known = knownRange()
				if not keysDirty and not Types.isIndexRangeEmpty(known) and insert.index <= known.lastIndex then
					keysDirty = true
				end
			elseif kind == DataSourceChangeType.Remove then
				local known = knownRange()
				if
					not keysDirty
					and not Types.isIndexRangeEmpty(known)
					and (change :: Types.RemoveDataSourceChange).index <= known.lastIndex
				then
					keysDirty = true
				end
			elseif kind == DataSourceChangeType.Move then
				local move = change :: Types.MoveDataSourceChange
				local known = knownRange()
				if
					not keysDirty
					and not Types.isIndexRangeEmpty(known)
					and math.min(move.fromIndex, move.toIndex) <= known.lastIndex
					and math.max(move.fromIndex, move.toIndex) >= known.firstIndex
				then
					keysDirty = true
				end
			end
		end
	end

	local function publish(
		row: Row<ItemView, T, ItemViewType>,
		itemLayout: Types.ItemLayout,
		canvasPlacement: Placement.ItemPlacement,
		viewportPlacement: Placement.ItemPlacement?,
		contentStartOffset: number
	): boolean
		local state = row.state
		local assignment = row.assignment
		if
			state ~= nil
			and state.assignment == assignment
			and state.index == row.index
			and state.pinnedPosition == row.pinnedPosition
			and state.itemLayout == itemLayout
			and state.canvasPlacement == canvasPlacement
			and state.viewportPlacement == viewportPlacement
			and state.contentStartOffset == contentStartOffset
			and row.record.itemView == row.view
		then
			return false
		end
		local nextState = table.freeze({
			assignment = assignment,
			index = row.index,
			pinnedPosition = row.pinnedPosition,
			itemLayout = itemLayout,
			canvasPlacement = canvasPlacement,
			viewportPlacement = viewportPlacement,
			contentStartOffset = contentStartOffset,
		})
		row.state = nextState
		row.record = table.freeze({ itemView = row.view, state = nextState })
		return true
	end

	-- Per-pass state shared by the row helpers below; valid during `apply`.
	local currentEpoch = 0
	local dataSource: DataSource.DataSource<T> = nil :: any
	local layout: Layout.Runtime = nil :: any
	local scrollOffset = 0
	local contentStartOffset = 0
	local layoutChanged = false
	local first = 0
	local last = 0
	local slots: { createSlotBinder.Slot<T, ItemViewType> } = {}
	local departs: { string } = {}
	local enteredCount = 0
	local entered: { MountedView<ItemView, T> } = EMPTY_LIST :: any
	local updated: { MountedView<ItemView, T> } = EMPTY_LIST :: any
	local layoutRange: { Types.ItemLayout }? = nil
	local placements: { [string]: Placement.ItemPlacement } = {}

	local function enter(key: string, index: number?, value: T, viewType: ItemViewType): Row<ItemView, T, ItemViewType>
		local row: Row<ItemView, T, ItemViewType> = {
			key = key,
			value = value,
			viewType = viewType,
			index = index,
			side = false,
			epoch = currentEpoch,
			entered = true,
			changed = true,
		} :: any
		enteredCount += 1
		table.insert(slots, row :: any)
		return row
	end

	-- A retained key whose view type changed departs its row; a new row
	-- enters with the same key.
	local function replace(row: Row<ItemView, T, ItemViewType>, value: T, viewType: ItemViewType)
		table.insert(departs, row.key)
		local replacement = enter(row.key, row.index, value, viewType)
		replacement.side = row.side
		return replacement
	end

	local function claim(row: Row<ItemView, T, ItemViewType>, key: string)
		assert(row.epoch ~= currentEpoch, `Virtualizer: duplicate key "{key}"`)
		row.epoch = currentEpoch
		row.entered = false
		row.changed = false
	end

	local function enterIndex(index: number): Row<ItemView, T, ItemViewType>
		local key = dataSource.getItemKey(index)
		local existing = rowsByKey[key]
		if existing ~= nil then
			claim(existing, key)
			existing.index = index
			existing.side = false
			return existing
		end
		local value = dataSource.getItem(index)
		return enter(key, index, value, options.getItemViewType(value, index))
	end

	-- Payload rereads for retained rows.
	local function reread(row: Row<ItemView, T, ItemViewType>, changed: boolean): Row<ItemView, T, ItemViewType>?
		local index = row.index
		if index == nil or row.entered then
			return nil
		end
		local value = dataSource.getItem(index)
		local viewType = options.getItemViewType(value, index)
		if viewType ~= row.viewType then
			return replace(row, value, viewType)
		end
		table.insert(slots, {
			key = row.key,
			value = value,
			viewType = viewType,
			changed = changed,
		})
		return nil
	end

	local function restate(row: Row<ItemView, T, ItemViewType>)
		local state = row.state
		local previousLayout = if state == nil then nil else state.itemLayout
		local itemLayout
		local placement = placements[row.key]
		local index = row.index
		if index == nil then
			itemLayout = resolveLayout({
				startOffset = 0,
				length = if placement == nil then 0 else placement.mainAxisLength or 0,
			}, previousLayout, true)
		elseif previousLayout ~= nil and not layoutChanged and state.index == index then
			itemLayout = previousLayout
		elseif layoutRange ~= nil and index >= first and index <= last then
			itemLayout = resolveLayout(layoutRange[index - first + 1], previousLayout, true)
		else
			itemLayout = resolveLayout(layout.getItemLayout(index), previousLayout)
		end
		local canvasPlacement: Placement.ItemPlacement = EMPTY_PLACEMENT
		local viewportPlacement: Placement.ItemPlacement? = nil
		if placement ~= nil or (state ~= nil and state.canvasPlacement ~= EMPTY_PLACEMENT) then
			canvasPlacement, viewportPlacement = resolvePlacement(placement, scrollOffset, state)
		end
		if publish(row, itemLayout, canvasPlacement, viewportPlacement, contentStartOffset) then
			if row.entered then
				entered = if table.isfrozen(entered) then {} else entered
				table.insert(entered, row.record)
			else
				updated = if table.isfrozen(updated) then {} else updated
				table.insert(updated, row.record)
			end
		end
	end

	local function apply(frame: Frame<T>): (Changes<ItemView, T>?, Diagnostics.Event?)
		if destroyed then
			return nil, nil
		end
		dataSource = frame.dataSource
		layout = frame.layout
		local plan = frame.plan or EMPTY_PLAN
		local range = frame.mountedRange
		scrollOffset = frame.scrollOffset
		contentStartOffset = frame.contentStartOffset
		layoutChanged = layoutDirty or layout ~= appliedLayout
		local insetChanged = contentStartOffset ~= appliedContentStartOffset
		local rangeChanged = not sameRange(range, appliedRange)
		local hasUpdates = next(updatedKeys) ~= nil
		if
			applied
			and not keysDirty
			and not payloadsDirty
			and not layoutChanged
			and not insetChanged
			and not rangeChanged
			and not hasUpdates
			and plan == appliedPlan
		then
			return nil, nil
		end

		epoch += 1
		currentEpoch = epoch
		local itemCount = dataSource.getItemCount()
		first = range.firstIndex
		last = math.min(range.lastIndex, itemCount)
		local count = math.max(0, last - first + 1)
		local nextRows: { Row<ItemView, T, ItemViewType> } = table.create(count)
		local nextSide: { Row<ItemView, T, ItemViewType> } = {}
		table.clear(slots)
		local leaving: { Row<ItemView, T, ItemViewType> } = {}
		table.clear(departs)
		enteredCount = 0
		local fullPass = not applied or not contiguous or keysDirty
		local restateAll = fullPass or layoutChanged or insetChanged

		if not fullPass then
			-- Keys at retained indices are unchanged: only the range edges read
			-- data, and the overlap moves as one block.
			local previousFirst = appliedRange.firstIndex
			local previousLast = appliedRange.lastIndex
			local overlapStart = math.max(previousFirst, first)
			local overlapEnd = math.min(previousLast, last)
			for index = previousFirst, math.min(previousLast, first - 1) do
				table.insert(leaving, rows[index - previousFirst + 1])
			end
			for index = math.max(previousFirst, last + 1), previousLast do
				table.insert(leaving, rows[index - previousFirst + 1])
			end
			for _, row in sideRows do
				table.insert(leaving, row)
			end
			if overlapStart <= overlapEnd then
				table.move(
					rows,
					overlapStart - previousFirst + 1,
					overlapEnd - previousFirst + 1,
					overlapStart - first + 1,
					nextRows
				)
				for position = overlapStart - first + 1, overlapEnd - first + 1 do
					local row = nextRows[position]
					row.epoch = currentEpoch
					row.entered = false
					row.changed = false
				end
			end
			for index = first, math.min(last, overlapStart - 1) do
				nextRows[index - first + 1] = enterIndex(index)
			end
			for index = math.max(first, overlapEnd + 1), last do
				nextRows[index - first + 1] = enterIndex(index)
			end
		else
			local known = if keysDirty or applied then nil else releasedKeys
			for index = first, last do
				local key
				if known ~= nil and index >= releasedRange.firstIndex and index <= releasedRange.lastIndex then
					key = known[index - releasedRange.firstIndex + 1]
				else
					key = dataSource.getItemKey(index)
				end
				local existing = rowsByKey[key]
				if existing ~= nil then
					claim(existing, key)
					existing.index = index
					existing.side = false
					nextRows[index - first + 1] = existing
				else
					local value = dataSource.getItem(index)
					nextRows[index - first + 1] = enter(key, index, value, options.getItemViewType(value, index))
				end
			end
			for _, row in rowsByKey do
				if row.epoch ~= currentEpoch then
					table.insert(leaving, row)
				end
			end
		end

		-- Sticky rows outside the range, then pinned rows.
		for _, item in plan.retainedItems do
			if item.index < first or item.index > last then
				local existing = rowsByKey[item.key]
				if existing ~= nil then
					claim(existing, item.key)
					existing.index = item.index
					existing.side = true
					table.insert(nextSide, existing)
				else
					local value = dataSource.getItem(item.index)
					local row = enter(item.key, item.index, value, options.getItemViewType(value, item.index))
					row.side = true
					table.insert(nextSide, row)
				end
			end
		end
		for _, item in plan.additionalItems do
			local position = item.identity.position
			local pinned = options.getPinnedItem(position)
			if pinned ~= nil and pinned.key == item.key then
				local existing = rowsByKey[item.key]
				local row
				if existing ~= nil then
					claim(existing, item.key)
					row = existing
					if row.viewType ~= pinned.itemViewType then
						row = replace(existing, pinned.value, pinned.itemViewType)
					elseif row.value ~= pinned.value then
						table.insert(slots, { key = item.key, value = pinned.value, viewType = pinned.itemViewType })
					end
				else
					row = enter(item.key, nil, pinned.value, pinned.itemViewType)
				end
				row.index = nil
				row.side = true
				row.pinnedPosition = position
				row.pinnedRevision = item.identity.revision
				table.insert(nextSide, row)
			end
		end

		if payloadsDirty then
			for position, row in nextRows do
				nextRows[position] = reread(row, false) or row
			end
			for position, row in nextSide do
				nextSide[position] = reread(row, false) or row
			end
		elseif hasUpdates then
			for key in updatedKeys do
				local row = rowsByKey[key]
				if row ~= nil and row.epoch == currentEpoch then
					local replacement = reread(row, true)
					if replacement ~= nil then
						if row.side then
							nextSide[table.find(nextSide, row) :: number] = replacement
						else
							nextRows[(row.index :: number) - first + 1] = replacement
						end
					end
				end
			end
		end

		for _, row in leaving do
			if row.epoch ~= currentEpoch then
				table.insert(departs, row.key)
			end
		end

		local changes = binder.apply(departs, slots)

		for _, key in departs do
			local row = rowsByKey[key] :: Row<ItemView, T, ItemViewType>
			rowsByKey[key] = nil
			rowsByView[row.view] = nil
		end
		for _, binding in changes.entered do
			local row = binding :: any
			rowsByKey[row.key] = row
			rowsByView[row.view] = row
		end
		for _, binding in changes.updated do
			(binding :: any).changed = true
		end
		local reassigned = #departs - #changes.departed

		entered = EMPTY_LIST :: any
		updated = EMPTY_LIST :: any
		-- Batch-filled layouts are fresh tables this pass owns.
		layoutRange = nil
		if
			count > 1
			and layout.getItemLayouts ~= nil
			and ((restateAll and (layoutChanged or not applied)) or enteredCount * 2 > count)
		then
			local layouts = table.create(count)
			layout.getItemLayouts(first, last, layouts)
			layoutRange = layouts
		end
		placements = plan.placements
		local previousPlacements = appliedPlan.placements

		if restateAll then
			for _, row in nextRows do
				restate(row)
			end
		else
			for _, row in nextRows do
				if row.entered or row.changed then
					restate(row)
				end
			end
			for key in placements do
				local row = rowsByKey[key]
				if row ~= nil and not row.side and not row.entered and not row.changed then
					restate(row)
				end
			end
			for key in previousPlacements do
				local row = rowsByKey[key]
				if row ~= nil and placements[key] == nil and not row.side and not row.entered and not row.changed then
					restate(row)
				end
			end
		end
		for _, row in nextSide do
			restate(row)
		end

		local orderChanged = #nextRows ~= #rows or #nextSide ~= #sideRows or rangeChanged
		if not orderChanged and fullPass then
			for position, row in nextRows do
				if rows[position] ~= row then
					orderChanged = true
					break
				end
			end
		end
		if not orderChanged then
			for position, row in nextSide do
				if sideRows[position] ~= row then
					orderChanged = true
					break
				end
			end
		end
		rows = nextRows
		sideRows = nextSide
		contiguous = count == math.max(0, range.lastIndex - range.firstIndex + 1)
		applied = true
		appliedRange = range
		appliedContentStartOffset = contentStartOffset
		appliedLayout = layout
		appliedPlan = plan
		keysDirty = false
		payloadsDirty = false
		layoutDirty = false
		if hasUpdates then
			table.clear(updatedKeys)
		end
		releasedKeys = nil

		local departed = changes.departed
		if not orderChanged and #entered == 0 and #updated == 0 and #departed == 0 then
			return nil, nil
		end
		local views = table.create(#rows + #sideRows)
		for position, row in rows do
			views[position] = row.record
		end
		local offset = #rows
		for position, row in sideRows do
			views[offset + position] = row.record
		end
		mountedViews = table.freeze(views)
		local touched = #entered + #updated + #departed
		return {
			entered = entered,
			updated = updated,
			departed = departed,
		},
			if touched == 0
				then nil
				else {
					kind = Diagnostics.EventKind.ItemViewsSynchronized,
					retained = #views - #entered - #updated,
					reassigned = reassigned,
					acquired = #entered - reassigned,
					released = #departed,
					touched = touched,
				}
	end

	local function release(): { ItemView }
		if not applied then
			return EMPTY_LIST :: any
		end
		if contiguous and #rows > 0 and not keysDirty then
			local keys = table.create(#rows)
			for position, row in rows do
				keys[position] = row.key
			end
			releasedKeys = keys
			releasedRange = appliedRange
		else
			releasedKeys = nil
		end
		keysDirty = false
		local views = binder.releaseAll()
		rows = {}
		sideRows = {}
		contiguous = true
		rowsByKey = {}
		rowsByView = {}
		applied = false
		appliedRange = EMPTY_RANGE
		appliedPlan = EMPTY_PLAN
		appliedLayout = nil
		mountedViews = EMPTY_LIST :: any
		return views
	end

	return {
		noteDataChange = noteDataChange,
		invalidateKeys = function()
			keysDirty = true
		end,
		invalidatePayloads = function()
			payloadsDirty = true
		end,
		invalidateLayout = function()
			layoutDirty = true
		end,
		apply = apply,
		release = release,
		destroy = function()
			if destroyed then
				return
			end
			release()
			releasedKeys = nil
			binder.destroy()
			destroyed = true
		end,
		isApplied = function()
			return applied
		end,
		getMountedViews = function()
			return mountedViews
		end,
		validate = function(measurements)
			local accepted = {}
			local dropped = 0
			for _, measurement in measurements do
				local row = rowsByView[measurement.itemView]
				local state = measurement.state
				if row ~= nil and measuresSameContent(row.state, state) then
					table.insert(accepted, {
						index = row.index,
						key = row.key,
						pinnedPosition = row.pinnedPosition,
						pinnedRevision = row.pinnedRevision,
						length = measurement.length,
					})
				elseif
					state.index ~= nil
					and state.pinnedPosition == nil
					and rowsByKey[state.assignment.key] == nil
				then
					-- A row on screen for one frame departs before its first
					-- measurement arrives; the Layout still checks the key at
					-- the index.
					table.insert(accepted, {
						index = state.index,
						key = state.assignment.key,
						length = measurement.length,
					})
				else
					dropped += 1
				end
			end
			return accepted, dropped
		end,
	}
end

return createListRows
