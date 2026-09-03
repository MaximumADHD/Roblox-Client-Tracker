local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local DataSource = require(Src.Core.DataSource)
local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local Layout = require(Src.Core.Layout)
local createItemRevisionTracker = require(Src.Core.Virtualizer.ItemRevisionTracker)
local createPinnedItemPlanner = require(Src.Core.PinnedItems.createPinnedItemPlanner)
local createVirtualizerSnapshotStore = require(Src.Core.Virtualizer.VirtualizerSnapshotStore)

local function values(count: number)
	local result = {}
	for index = 1, count do
		result[index] = {
			id = `item-{index}`,
			kind = "row",
		}
	end
	return result
end

local function entryForKey(snapshot, key)
	for _, entry in snapshot.entries do
		if entry.key == key then
			return entry
		end
	end
	return nil
end

local function scrollState(offset: number, viewportLength: number, contentLength: number)
	local distanceFromEnd = math.max(0, contentLength - viewportLength - offset)
	return {
		scrollOffset = offset,
		viewportLength = viewportLength,
		contentLength = contentLength,
		distanceFromEnd = distanceFromEnd,
		atStart = offset <= 0,
		atEnd = distanceFromEnd <= 0,
	}
end

local function createHarness(items, pinnedOptions)
	local dataSource = DataSource.sequence(items, function(item)
		return item.id
	end)
	local layout = Layout.uniform({ itemLength = 10 })
	local itemRevisions = createItemRevisionTracker()
	local planner = createPinnedItemPlanner(dataSource, pinnedOptions or {})
	local keys = {}
	for index = 1, dataSource.getItemCount() do
		keys[index] = dataSource.getItemKey(index)
	end
	local reset = { type = DataSourceChangeType.Reset, keys = keys }
	layout.applyDataSourceChange(reset)
	itemRevisions.applyChange(reset)
	local store = createVirtualizerSnapshotStore({
		planner = planner,
		itemRevisions = itemRevisions,
		getRecyclableViewType = function(item)
			return item.kind
		end,
		initialScrollState = scrollState(0, 0, 0),
		initialRequiresItemMeasurement = false,
	})
	local revisions = {
		identity = 1,
		layoutGeometry = 1,
		placementGeometry = 1,
		range = 1,
		scroll = 1,
	}
	local hasViewportPlacements = pinnedOptions ~= nil
		and (
			pinnedOptions.isItemStickyHeader ~= nil
			or pinnedOptions.pinnedStartItem ~= nil
			or pinnedOptions.pinnedEndItem ~= nil
		)
	local state: createVirtualizerSnapshotStore.VirtualizerState<{ kind: string }> = {
		dataSource = dataSource,
		layout = layout,
		visibleRange = { firstIndex = 1, lastIndex = 0 },
		mountedRange = { firstIndex = 1, lastIndex = 0 },
		scrollState = scrollState(0, 0, 0),
		contentStartOffset = 0,
		contentLength = 0,
		requiresItemMeasurement = layout.requiresItemMeasurement(),
		hasViewportPlacements = hasViewportPlacements,
		revisions = revisions,
	}

	local function commit(offset, firstIndex, lastIndex, viewportLength)
		local contentLength = layout.getContentLength()
		state.visibleRange = { firstIndex = firstIndex, lastIndex = lastIndex }
		state.mountedRange = { firstIndex = firstIndex, lastIndex = lastIndex }
		state.scrollState = scrollState(offset, viewportLength or 20, contentLength)
		state.contentLength = contentLength
		return store.commit(state)
	end

	return {
		commit = commit,
		dataSource = dataSource,
		itemRevisions = itemRevisions,
		store = store,
		revisions = revisions,
	}
end

describe("VirtualizerSnapshotStore", function()
	it("commits one immutable snapshot and reuses it for a no-op VirtualizerState", function()
		local harness = createHarness(values(4))
		local before = harness.store.getSnapshot()

		local initial = harness.commit(0, 1, 2)
		local noOp = harness.commit(0, 1, 2)

		expect(before.entries).toHaveLength(0)
		expect(table.isfrozen(before)).toBe(true)
		expect(initial.snapshot.entries).toHaveLength(2)
		expect(initial.presentation.assignmentsChanged).toBe(true)
		expect(table.isfrozen(initial.snapshot)).toBe(true)
		expect(table.isfrozen(initial.snapshot.entries)).toBe(true)
		expect(table.isfrozen(initial.snapshot.entries[1])).toBe(true)
		expect(noOp.snapshot).toBe(initial.snapshot)
		expect(noOp.presentation.assignmentsChanged).toBe(false)
		expect(noOp.presentation.placementChanged).toBe(false)
	end)

	it("commits a scroll-only shell while retaining the complete entry graph", function()
		local harness = createHarness(values(4))
		local previous = harness.commit(0, 1, 2).snapshot
		harness.revisions.scroll += 1

		local update = harness.commit(1, 1, 2)

		expect(update.snapshot).never.toBe(previous)
		expect(update.snapshot.entries).toBe(previous.entries)
		expect(update.snapshot.entries[1]).toBe(previous.entries[1])
		expect(update.snapshot.scrollState.scrollOffset).toBe(1)
		expect(update.presentation.assignmentsChanged).toBe(false)
		expect(update.presentation.placementChanged).toBe(false)
	end)

	it("reuses overlapping entries when the Mounted range changes", function()
		local harness = createHarness(values(5))
		local previous = harness.commit(0, 1, 3).snapshot
		local overlap = entryForKey(previous, "item-2")
		harness.revisions.range += 1
		harness.revisions.scroll += 1

		local update = harness.commit(10, 2, 4)

		expect(update.snapshot.entries).never.toBe(previous.entries)
		expect(entryForKey(update.snapshot, "item-2")).toBe(overlap)
		expect(entryForKey(update.snapshot, "item-1")).toBeNil()
		expect(entryForKey(update.snapshot, "item-4")).never.toBeNil()
		expect(update.presentation.assignmentsChanged).toBe(true)
		expect(update.presentation.placementChanged).toBe(true)
	end)

	it("materializes identity changes while sharing unchanged Layout geometry", function()
		local harness = createHarness(values(4))
		local previous = harness.commit(0, 1, 2).snapshot
		local previousEntry = previous.entries[1]
		local changeBatch
		harness.dataSource.subscribe(function(batch)
			changeBatch = batch
		end)

		harness.dataSource.setItem(1, { id = "item-1", kind = "row", label = "updated" })
		for _, change in changeBatch.changes do
			harness.itemRevisions.applyChange(change)
		end
		harness.revisions.identity += 1

		local update = harness.commit(0, 1, 2)
		local nextEntry = update.snapshot.entries[1]

		expect(nextEntry).never.toBe(previousEntry)
		expect(nextEntry.value.label).toBe("updated")
		expect(nextEntry.itemLayout).toBe(previousEntry.itemLayout)
		expect(nextEntry.identity).never.toBe(previousEntry.identity)
		expect(update.presentation.assignmentsChanged).toBe(true)
		expect(update.presentation.placementChanged).toBe(true)
	end)

	it("rebuilds sticky placement while sharing unaffected entries", function()
		local items = {
			{ id = "header-a", kind = "header" },
			{ id = "row-a", kind = "row" },
			{ id = "header-b", kind = "header" },
			{ id = "row-b", kind = "row" },
		}
		local harness = createHarness(items, {
			isItemStickyHeader = function(item)
				return item.kind == "header"
			end,
		})
		local previous = harness.commit(11, 1, 4, 10).snapshot
		local previousHeader = entryForKey(previous, "header-a")
		local previousRow = entryForKey(previous, "row-a")
		harness.revisions.scroll += 1

		local update = harness.commit(12, 1, 4, 10)
		local nextHeader = entryForKey(update.snapshot, "header-a")

		expect(update.snapshot.entries).never.toBe(previous.entries)
		expect(nextHeader).never.toBe(previousHeader)
		expect(entryForKey(update.snapshot, "row-a")).toBe(previousRow)
		expect(nextHeader.canvasPlacement.mainAxisOffset).toBe(10)
		expect(nextHeader.viewportPlacement.mainAxisOffset).toBe(-2)
		expect(update.presentation.assignmentsChanged).toBe(false)
		expect(update.presentation.placementChanged).toBe(true)
	end)

	it("updates pinned Canvas placement while sharing its viewport placement", function()
		local harness = createHarness(values(4), {
			pinnedStartItem = {
				key = "$start",
				value = { id = "$start", kind = "pin" },
				itemViewType = "pin",
			},
		})
		local previous = harness.commit(0, 1, 4).snapshot
		local previousPinned = entryForKey(previous, "$start")
		local previousData = entryForKey(previous, "item-1")
		harness.revisions.scroll += 1

		local update = harness.commit(1, 1, 4)
		local nextPinned = entryForKey(update.snapshot, "$start")

		expect(entryForKey(update.snapshot, "item-1")).toBe(previousData)
		expect(nextPinned).never.toBe(previousPinned)
		expect(nextPinned.viewportPlacement).toBe(previousPinned.viewportPlacement)
		expect(nextPinned.canvasPlacement.mainAxisOffset).toBe(1)
		expect(update.presentation.assignmentsChanged).toBe(false)
		expect(update.presentation.placementChanged).toBe(true)
	end)

	it("preserves duplicate pinned-key rejection at the projection seam", function()
		local harness = createHarness(values(2), {
			pinnedStartItem = {
				key = "item-1",
				value = { id = "item-1", kind = "pin" },
				itemViewType = "pin",
			},
		})

		expect(function()
			harness.commit(0, 1, 2)
		end).toThrow(`Virtualizer: duplicate snapshot key "item-1"`)
	end)
end)
