local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local DataSource = require(Src.Core.DataSource)
local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local Layout = require(Src.Core.Layout)
local PinnedPosition = require(Src.Core.Enums.PinnedPosition)
local ScrollAlignment = require(Src.Core.Enums.ScrollAlignment)
local ScrollDirection = require(Src.Core.Enums.ScrollDirection)
local ScrollObservationKind = require(Src.Core.Enums.ScrollObservationKind)
local VirtualizerCommandTypes = require(Src.Core.Enums.VirtualizerCommandType)
local VirtualizerCommandType = VirtualizerCommandTypes.External
local InternalVirtualizerCommandType = VirtualizerCommandTypes.Internal
local VirtualizerEffectType = require(Src.Core.Enums.VirtualizerEffectType)
local VirtualizerQueryType = require(Src.Core.Enums.VirtualizerQueryType)
local createVirtualizerEngine = require(Src.Core.Virtualizer.VirtualizerEngine)

local function values(count: number)
	local result = {}
	for index = 1, count do
		result[index] = { id = `item-{index}`, kind = "row" }
	end
	return result
end

local function source(items)
	return DataSource.snapshot(items, function(item)
		return item.id
	end)
end

local function createEngine(items, options)
	options = options or {}
	return createVirtualizerEngine({
		dataSource = options.dataSource or source(items),
		layout = options.layout or Layout.uniform({ itemLength = 10 }),
		getRecyclableViewType = function(item)
			return item.kind
		end,
		overscan = options.overscan,
		overscanPolicy = options.overscanPolicy,
		contentAlignment = options.contentAlignment,
		contentInsetStart = options.contentInsetStart,
		contentInsetEnd = options.contentInsetEnd,
		diagnostics = options.diagnostics,
		isItemStickyHeader = options.isItemStickyHeader,
		pinnedStartItem = options.pinnedStartItem,
		pinnedEndItem = options.pinnedEndItem,
	})
end

local function activate(engine, viewportLength)
	engine.dispatch({ type = VirtualizerCommandType.Activate })
	return engine.dispatch({
		type = VirtualizerCommandType.SetViewportSize,
		scrollAxisLength = viewportLength or 20,
		crossAxisLength = 100,
	})
end

local function policy(overscan, overscanPolicy)
	return {
		overscan = overscan,
		overscanPolicy = overscanPolicy,
		dataPrefetch = nil,
		contentAlignment = nil,
		endThreshold = nil,
		pinnedItems = {},
		preserveScrollPositionOnChange = true,
	}
end

local function entryForKey(snapshot, key)
	for _, entry in snapshot.entries do
		if entry.key == key then
			return entry
		end
	end
	return nil
end

local function effectOfType(update, effectType)
	for _, effect in update.effects do
		if effect.type == effectType then
			return effect
		end
	end
	return nil
end

local function measuredLayout()
	return Layout.measured({
		estimatedItemLength = 10,
		estimationPolicy = {
			recordMeasurementAndShouldUpdateEstimates = function()
				return false
			end,
		},
	})
end

local function measure(engine, index, length)
	local entry = entryForKey(engine.getSnapshot(), `item-{index}`)
	return engine.dispatch({
		type = InternalVirtualizerCommandType.SubmitLogicalMeasurements,
		measurements = {
			{
				itemIndex = index,
				itemKey = entry.key,
				itemRevision = entry.identity.revision,
				length = length,
			},
		},
	})
end

describe("VirtualizerEngine behavioral parity", function()
	it("publishes a complete empty immutable snapshot", function()
		local engine = createEngine({}, { overscan = 0 })
		local update = activate(engine)

		expect(update.snapshot.entries).toEqual({})
		expect(update.snapshot.visibleRange).toEqual({ firstIndex = 1, lastIndex = 0 })
		expect(update.snapshot.mountedRange).toEqual({ firstIndex = 1, lastIndex = 0 })
		expect(update.snapshot.contentLength).toBe(0)
		expect(update.snapshot.scrollState).toEqual({
			scrollOffset = 0,
			viewportLength = 20,
			contentLength = 0,
			distanceFromEnd = 0,
			atStart = true,
			atEnd = true,
		})
		expect(table.isfrozen(update.snapshot)).toBe(true)
		expect(table.isfrozen(update.snapshot.entries)).toBe(true)
	end)

	it("clamps absolute and relative commands and reports complete scroll state", function()
		local engine = createEngine(values(5), { overscan = 0 })
		activate(engine)

		local high = engine.dispatch({ type = VirtualizerCommandType.ScrollToOffset, offset = 100 })
		expect(high.result).toBe(30)
		expect(high.snapshot.scrollState).toEqual({
			scrollOffset = 30,
			viewportLength = 20,
			contentLength = 50,
			distanceFromEnd = 0,
			atStart = false,
			atEnd = true,
		})
		local low = engine.dispatch({ type = VirtualizerCommandType.ScrollBy, delta = -100 })
		expect(low.result).toBe(0)
		expect(low.snapshot.scrollState).toEqual({
			scrollOffset = 0,
			viewportLength = 20,
			contentLength = 50,
			distanceFromEnd = 30,
			atStart = true,
			atEnd = false,
		})
	end)

	it("restores a surviving key after reorder and clamps removed-key fallback", function()
		local sequence = DataSource.sequence(values(6), function(item)
			return item.id
		end)
		local batch
		sequence.subscribe(function(nextBatch)
			batch = nextBatch
		end)
		local engine = createEngine({}, { dataSource = sequence, overscan = 0 })
		activate(engine)
		engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 15 })
		local captured = engine.query({ type = VirtualizerQueryType.CaptureScrollAnchorSnapshot })

		sequence.reorder({ "item-1", "item-3", "item-4", "item-5", "item-2", "item-6" })
		engine.dispatch({ type = InternalVirtualizerCommandType.ApplyDataSourceChange, changeBatch = batch })
		local restored = engine.dispatch({
			type = VirtualizerCommandType.RestoreScrollAnchorSnapshot,
			snapshot = captured,
		})
		expect(restored.result).toBe(40)

		sequence.remove(5)
		engine.dispatch({ type = InternalVirtualizerCommandType.ApplyDataSourceChange, changeBatch = batch })
		local fallback = engine.dispatch({
			type = VirtualizerCommandType.RestoreScrollAnchorSnapshot,
			snapshot = {
				anchorKey = "item-2",
				anchorIndex = 5,
				offsetWithinItem = 5,
				fallbackScrollOffset = 999,
			},
		})
		expect(fallback.result).toBe(30)
	end)

	it("transitions runtime overscan through zero, two, and the default", function()
		local engine = createEngine(values(10), { overscan = 0 })
		activate(engine)
		expect(engine.getSnapshot().mountedRange).toEqual({ firstIndex = 1, lastIndex = 2 })

		engine.dispatch({ type = VirtualizerCommandType.SetPolicy, policy = policy(2, nil) })
		expect(engine.getSnapshot().mountedRange).toEqual({ firstIndex = 1, lastIndex = 4 })

		engine.dispatch({ type = VirtualizerCommandType.SetPolicy, policy = policy(nil, nil) })
		expect(engine.getSnapshot().mountedRange).toEqual({ firstIndex = 1, lastIndex = 3 })
	end)

	it("passes complete offset-derived context to custom overscan policy", function()
		local contexts = {}
		local engine = createEngine(values(10), {
			overscanPolicy = {
				compute = function(context)
					table.insert(contexts, table.clone(context))
					return { before = 0, after = 0 }
				end,
			},
		})
		activate(engine)
		engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 15 })

		expect(contexts[#contexts]).toEqual({
			visibleRange = { firstIndex = 2, lastIndex = 4 },
			scrollOffset = 15,
			viewportLength = 20,
			scrollDirection = ScrollDirection.Forward,
			itemCount = 10,
		})
	end)

	it("clamps fixed overscan at both boundaries and across the whole list", function()
		local engine = createEngine(values(5), { overscan = 2 })
		activate(engine)
		expect(engine.getSnapshot().mountedRange).toEqual({ firstIndex = 1, lastIndex = 4 })
		engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 30 })
		expect(engine.getSnapshot().mountedRange).toEqual({ firstIndex = 2, lastIndex = 5 })

		engine.dispatch({ type = VirtualizerCommandType.SetPolicy, policy = policy(100, nil) })
		expect(engine.getSnapshot().mountedRange).toEqual({ firstIndex = 1, lastIndex = 5 })
	end)

	it("expands measured variable-size ranges by item count", function()
		local engine = createEngine(values(8), { layout = measuredLayout(), overscan = 1 })
		activate(engine)
		measure(engine, 1, 30)
		expect(engine.getSnapshot().visibleRange).toEqual({ firstIndex = 1, lastIndex = 1 })
		expect(engine.getSnapshot().mountedRange).toEqual({ firstIndex = 1, lastIndex = 2 })
	end)

	it("rejects fractional construction and runtime overscan without committing", function()
		expect(function()
			createEngine(values(5), { overscan = 1.5 })
		end).toThrow()

		local engine = createEngine(values(5), { overscan = 0 })
		activate(engine)
		local before = engine.getSnapshot()
		expect(function()
			engine.dispatch({ type = VirtualizerCommandType.SetPolicy, policy = policy(1.5, nil) })
		end).toThrow()
		expect(engine.getSnapshot()).toBe(before)
	end)

	it("answers the item-offset query matrix", function()
		local engine = createEngine(values(5), { overscan = 0 })
		activate(engine)
		expect(engine.query({
			type = VirtualizerQueryType.GetScrollOffsetForItem,
			index = 3,
			alignment = ScrollAlignment.Start,
		})).toBe(20)
		expect(engine.query({
			type = VirtualizerQueryType.GetScrollOffsetForItem,
			index = 3,
			alignment = ScrollAlignment.Center,
		})).toBe(15)
		expect(engine.query({
			type = VirtualizerQueryType.GetScrollOffsetForItem,
			index = 3,
			alignment = ScrollAlignment.End,
		})).toBe(10)
		expect(engine.query({
			type = VirtualizerQueryType.GetScrollOffsetForItem,
			index = 1,
			alignment = ScrollAlignment.End,
		})).toBe(0)
		expect(engine.query({ type = VirtualizerQueryType.GetScrollOffsetForItem, index = -10 })).toBe(0)
		expect(engine.query({ type = VirtualizerQueryType.GetScrollOffsetForItem, index = 99 })).toBe(30)

		local empty = createEngine({}, { overscan = 0 })
		activate(empty)
		expect(empty.query({ type = VirtualizerQueryType.GetScrollOffsetForItem, index = 1 })).toBe(0)
	end)

	it("targets complete grid rows and refines measured target offsets", function()
		local grid = createEngine(values(9), {
			overscan = 0,
			layout = Layout.grid({ itemLength = 10, crossAxisCount = 3 }),
		})
		activate(grid, 10)
		expect(grid.query({ type = VirtualizerQueryType.GetScrollOffsetForItem, index = 5 })).toBe(10)

		local measured = createEngine(values(6), { overscan = 6, layout = measuredLayout() })
		activate(measured)
		expect(measured.query({ type = VirtualizerQueryType.GetScrollOffsetForItem, index = 5 })).toBe(40)
		measure(measured, 1, 20)
		expect(measured.query({ type = VirtualizerQueryType.GetScrollOffsetForItem, index = 5 })).toBe(50)
	end)

	it("swaps DataSources and Layouts as coherent resets", function()
		local engine = createEngine(values(3), { overscan = 0 })
		activate(engine)
		local before = engine.getSnapshot()
		local nextSource = source({
			{ id = "next-1", kind = "row" },
			{ id = "next-2", kind = "row" },
			{ id = "next-3", kind = "row" },
			{ id = "next-4", kind = "row" },
		})
		local update = engine.dispatch({
			type = VirtualizerCommandType.SetDataSourceAndLayout,
			dataSource = nextSource,
			layout = Layout.uniform({ itemLength = 20 }),
		})

		expect(update.snapshot.version).toBe(before.version + 1)
		expect(update.snapshot.contentLength).toBe(80)
		expect(update.snapshot.visibleRange).toEqual({ firstIndex = 1, lastIndex = 1 })
		expect(update.snapshot.entries[1].key).toBe("next-1")
		expect(update.snapshot.entries[1].itemLayout.length).toBe(20)
		expect(update.snapshot.scrollState.scrollOffset).toBe(0)
	end)

	it("applies a multi-change transaction atomically with precise item revisions", function()
		local sequence = DataSource.sequence(values(6), function(item)
			return item.id
		end)
		local batch
		sequence.subscribe(function(nextBatch)
			batch = nextBatch
		end)
		local engine = createEngine({}, { dataSource = sequence, overscan = 6 })
		activate(engine)
		local before = engine.getSnapshot()
		local item1 = entryForKey(before, "item-1")
		local item2 = entryForKey(before, "item-2")

		sequence.transaction(function()
			sequence.prepend({ id = "inserted", kind = "row" })
			sequence.setItem(3, { id = "item-2", kind = "row", label = "updated" })
		end)
		local update = engine.dispatch({
			type = InternalVirtualizerCommandType.ApplyDataSourceChange,
			changeBatch = batch,
		})

		expect(update.snapshot.version).toBe(before.version + 1)
		expect(entryForKey(update.snapshot, "inserted").identity.revision).toBeGreaterThan(0)
		expect(entryForKey(update.snapshot, "item-1").identity.revision).toBe(item1.identity.revision)
		expect(entryForKey(update.snapshot, "item-2").identity.revision).toBeGreaterThan(item2.identity.revision)
		expect(entryForKey(update.snapshot, "item-2").value.label).toBe("updated")
	end)

	it("increments the revision for a same-reference value update", function()
		local sequence = DataSource.sequence(values(4), function(item)
			return item.id
		end)
		local batch
		sequence.subscribe(function(nextBatch)
			batch = nextBatch
		end)
		local engine = createEngine({}, { dataSource = sequence, overscan = 4 })
		activate(engine)
		local value = sequence.getItem(2)
		local before = entryForKey(engine.getSnapshot(), "item-2")
		value.label = "same reference"
		sequence.setItem(2, value)

		local update = engine.dispatch({
			type = InternalVirtualizerCommandType.ApplyDataSourceChange,
			changeBatch = batch,
		})
		local after = entryForKey(update.snapshot, "item-2")
		expect(after).never.toBe(before)
		expect(after.value).toBe(value)
		expect(after.identity.revision).toBeGreaterThan(before.identity.revision)
	end)

	it("preserves visible revisions across append and anchors insert-remove pairs above the viewport", function()
		local sequence = DataSource.sequence(values(8), function(item)
			return item.id
		end)
		local batch
		sequence.subscribe(function(nextBatch)
			batch = nextBatch
		end)
		local engine = createEngine({}, { dataSource = sequence, overscan = 2 })
		activate(engine)
		local firstRevision = entryForKey(engine.getSnapshot(), "item-1").identity.revision
		sequence.append({ id = "appended", kind = "row" })
		engine.dispatch({ type = InternalVirtualizerCommandType.ApplyDataSourceChange, changeBatch = batch })
		expect(entryForKey(engine.getSnapshot(), "item-1").identity.revision).toBe(firstRevision)

		engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 40 })
		sequence.prepend({ id = "inserted", kind = "row" })
		local inserted = engine.dispatch({
			type = InternalVirtualizerCommandType.ApplyDataSourceChange,
			changeBatch = batch,
		})
		expect(inserted.snapshot.scrollState.scrollOffset).toBe(50)
		expect(entryForKey(inserted.snapshot, "item-5")).never.toBeNil()
		sequence.remove(1)
		local removed = engine.dispatch({
			type = InternalVirtualizerCommandType.ApplyDataSourceChange,
			changeBatch = batch,
		})
		expect(removed.snapshot.scrollState.scrollOffset).toBe(40)
		expect(entryForKey(removed.snapshot, "item-5")).never.toBeNil()
	end)

	it("reflects whether the active Layout requires measurement", function()
		local engine = createEngine(values(3), { overscan = 0 })
		activate(engine)
		expect(engine.query({ type = VirtualizerQueryType.RequiresItemMeasurement })).toBe(false)
		expect(engine.getSnapshot().requiresItemMeasurement).toBe(false)

		engine.dispatch({ type = VirtualizerCommandType.SetLayout, layout = measuredLayout() })
		expect(engine.query({ type = VirtualizerQueryType.RequiresItemMeasurement })).toBe(true)
		expect(engine.getSnapshot().requiresItemMeasurement).toBe(true)
	end)

	it("batches measurements into one revision and one combined correction", function()
		local engine = createEngine(values(10), { overscan = 10, layout = measuredLayout() })
		activate(engine)
		engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 50 })
		local before = engine.getSnapshot()
		local first = entryForKey(before, "item-1")
		local second = entryForKey(before, "item-2")

		local update = engine.dispatch({
			type = InternalVirtualizerCommandType.SubmitLogicalMeasurements,
			measurements = {
				{
					itemIndex = 1,
					itemKey = first.key,
					itemRevision = first.identity.revision,
					length = 20,
				},
				{
					itemIndex = 2,
					itemKey = second.key,
					itemRevision = second.identity.revision,
					length = 30,
				},
			},
		})
		expect(update.snapshot.version).toBe(before.version + 1)
		expect(update.snapshot.scrollState.scrollOffset).toBe(80)
		expect(effectOfType(update, VirtualizerEffectType.ScrollCorrection)).toEqual({
			type = VirtualizerEffectType.ScrollCorrection,
			delta = 30,
		})
	end)

	it("does not publish geometry for an exact estimated measurement", function()
		local engine = createEngine(values(5), { overscan = 5, layout = measuredLayout() })
		activate(engine)
		local before = engine.getSnapshot()
		local update = measure(engine, 1, 10)
		expect(update.snapshot).toBe(before)
		expect(update.presentation).toEqual({ assignmentsChanged = false, placementChanged = false })
		expect(effectOfType(update, VirtualizerEffectType.ScrollCorrection)).toBeNil()
	end)

	it("ignores stale and sub-pixel measurement corrections", function()
		local engine = createEngine(values(8), { overscan = 8, layout = measuredLayout() })
		activate(engine)
		engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 40 })
		local before = engine.getSnapshot()
		local stale = engine.dispatch({
			type = InternalVirtualizerCommandType.SubmitLogicalMeasurements,
			measurements = {
				{ itemIndex = 1, itemKey = "wrong", itemRevision = 1, length = 50 },
			},
		})
		expect(stale.snapshot).toBe(before)
		expect(effectOfType(stale, VirtualizerEffectType.ScrollCorrection)).toBeNil()

		local tiny = measure(engine, 1, 10.5)
		expect(tiny.snapshot.scrollState.scrollOffset).toBe(40)
		expect(effectOfType(tiny, VirtualizerEffectType.ScrollCorrection)).toBeNil()
	end)

	it("keeps Programmatic targets authoritative through host observation and refinement", function()
		local engine = createEngine(values(8), { overscan = 8, layout = measuredLayout() })
		activate(engine)
		local target = engine.dispatch({
			type = VirtualizerCommandType.ScrollToIndex,
			index = 5,
			alignment = ScrollAlignment.Center,
		})
		expect(target.result).toBe(35)
		engine.dispatch({
			type = VirtualizerCommandType.ObserveScrollOffset,
			observation = { kind = ScrollObservationKind.Programmatic, offset = 35 },
		})
		local refined = measure(engine, 1, 20)
		expect(refined.snapshot.scrollState.scrollOffset).toBe(45)
		expect(effectOfType(refined, VirtualizerEffectType.ScrollCorrection).delta).toBe(10)
	end)

	it("lets a newer target supersede and User observation cancel the previous target", function()
		local engine = createEngine(values(8), { overscan = 8, layout = measuredLayout() })
		activate(engine)
		engine.dispatch({ type = VirtualizerCommandType.ScrollToIndex, index = 3 })
		engine.dispatch({
			type = VirtualizerCommandType.ScrollToIndex,
			index = 6,
			alignment = ScrollAlignment.End,
		})
		local refined = measure(engine, 1, 20)
		expect(refined.snapshot.scrollState.scrollOffset).toBe(50)

		engine.dispatch({
			type = VirtualizerCommandType.ObserveScrollOffset,
			observation = { kind = ScrollObservationKind.User, offset = 20 },
		})
		local afterUser = measure(engine, 6, 20)
		expect(afterUser.snapshot.scrollState.scrollOffset).toBe(20)
		expect(effectOfType(afterUser, VirtualizerEffectType.ScrollCorrection)).toBeNil()
	end)

	for _, case in
		{
			{ name = "start", alignment = ScrollAlignment.Start, initial = 40, refined = 50 },
			{ name = "center", alignment = ScrollAlignment.Center, initial = 35, refined = 45 },
			{ name = "end", alignment = ScrollAlignment.End, initial = 30, refined = 40 },
		}
	do
		it(`preserves {case.name} target alignment while measurements refine geometry`, function()
			local engine = createEngine(values(8), { overscan = 8, layout = measuredLayout() })
			activate(engine)
			local target = engine.dispatch({
				type = VirtualizerCommandType.ScrollToIndex,
				index = 5,
				alignment = case.alignment,
			})
			expect(target.result).toBe(case.initial)
			local refined = measure(engine, 1, 20)
			expect(refined.snapshot.scrollState.scrollOffset).toBe(case.refined)
		end)
	end

	it("uses start alignment by default and accepts User observation after the command", function()
		local engine = createEngine(values(8), { overscan = 8, layout = measuredLayout() })
		activate(engine)
		expect(engine.dispatch({ type = VirtualizerCommandType.ScrollToIndex, index = 5 }).result).toBe(40)
		expect(measure(engine, 1, 20).snapshot.scrollState.scrollOffset).toBe(50)
		engine.dispatch({
			type = VirtualizerCommandType.ObserveScrollOffset,
			observation = { kind = ScrollObservationKind.User, offset = 10 },
		})
		expect(engine.getSnapshot().scrollState.scrollOffset).toBe(10)
		local refined = measure(engine, 6, 20)
		expect(refined.snapshot.scrollState.scrollOffset).toBe(10)
	end)

	it("reclamps an end-aligned final target as measured content grows", function()
		local engine = createEngine(values(5), { overscan = 5, layout = measuredLayout() })
		activate(engine)
		expect(engine.dispatch({
			type = VirtualizerCommandType.ScrollToIndex,
			index = 5,
			alignment = ScrollAlignment.End,
		}).result).toBe(30)
		local refined = measure(engine, 5, 30)
		expect(refined.snapshot.contentLength).toBe(70)
		expect(refined.snapshot.scrollState.scrollOffset).toBe(50)
	end)

	it("uses current short-content placement while target measurements grow the Canvas", function()
		local engine = createEngine(values(3), {
			overscan = 3,
			layout = measuredLayout(),
			contentAlignment = ScrollAlignment.Center,
		})
		activate(engine, 50)
		expect(engine.getSnapshot().contentStartOffset).toBe(10)
		expect(engine.dispatch({
			type = VirtualizerCommandType.ScrollToIndex,
			index = 2,
			alignment = ScrollAlignment.Center,
		}).result).toBe(0)

		measure(engine, 1, 30)
		measure(engine, 2, 30)
		local grown = measure(engine, 3, 30)
		expect(grown.snapshot.contentStartOffset).toBe(0)
		expect(grown.snapshot.contentLength).toBe(90)
		expect(grown.snapshot.scrollState.scrollOffset).toBe(20)
	end)

	it("preserves a target through viewport and inset changes", function()
		local engine = createEngine(values(8), {
			overscan = 8,
			layout = measuredLayout(),
			pinnedStartItem = {
				key = "$start",
				value = { id = "$start", kind = "pin" },
				itemViewType = "pin",
			},
		})
		activate(engine)
		engine.dispatch({
			type = VirtualizerCommandType.ScrollToIndex,
			index = 5,
			alignment = ScrollAlignment.Center,
		})
		local resized = engine.dispatch({
			type = VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 30,
			crossAxisLength = 100,
		})
		expect(resized.snapshot.scrollState.scrollOffset).toBe(35)
		local pinned = entryForKey(engine.getSnapshot(), "$start")
		local inset = engine.dispatch({
			type = InternalVirtualizerCommandType.SubmitLogicalMeasurements,
			measurements = {
				{
					itemIndex = nil,
					itemKey = pinned.key,
					itemRevision = pinned.identity.revision,
					pinnedPosition = PinnedPosition.Start,
					length = 10,
				},
			},
		})
		expect(inset.snapshot.scrollState.scrollOffset).toBe(35)
		local refined = measure(engine, 1, 20)
		expect(refined.snapshot.scrollState.scrollOffset).toBe(45)
	end)

	it("follows a target key when it moves and cancels when it is removed", function()
		local sequence = DataSource.sequence(values(8), function(item)
			return item.id
		end)
		local batch
		sequence.subscribe(function(nextBatch)
			batch = nextBatch
		end)
		local engine = createEngine({}, { dataSource = sequence, overscan = 8, layout = measuredLayout() })
		activate(engine)
		engine.dispatch({ type = VirtualizerCommandType.ScrollToIndex, index = 5 })

		sequence.moveItem(5, 3)
		local moved =
			engine.dispatch({ type = InternalVirtualizerCommandType.ApplyDataSourceChange, changeBatch = batch })
		expect(moved.snapshot.scrollState.scrollOffset).toBe(20)

		sequence.remove(3)
		engine.dispatch({ type = InternalVirtualizerCommandType.ApplyDataSourceChange, changeBatch = batch })
		local last = entryForKey(engine.getSnapshot(), "item-8")
		local afterRemoval = engine.dispatch({
			type = InternalVirtualizerCommandType.SubmitLogicalMeasurements,
			measurements = {
				{
					itemIndex = last.index,
					itemKey = last.key,
					itemRevision = last.identity.revision,
					length = 20,
				},
			},
		})
		expect(effectOfType(afterRemoval, VirtualizerEffectType.ScrollCorrection)).toBeNil()
	end)

	it("combines ordinary, retained sticky, and pinned assignments in one snapshot", function()
		local items = {
			{ id = "header", kind = "header" },
			{ id = "row-1", kind = "row" },
			{ id = "row-2", kind = "row" },
			{ id = "row-3", kind = "row" },
		}
		local engine = createEngine(items, {
			overscan = 0,
			isItemStickyHeader = function(item)
				return item.kind == "header"
			end,
			pinnedStartItem = {
				key = "$start",
				value = { id = "$start", kind = "pin" },
				itemViewType = "pin",
			},
		})
		activate(engine, 10)
		engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 21 })
		local snapshot = engine.getSnapshot()

		expect(entryForKey(snapshot, "row-3")).never.toBeNil()
		expect(entryForKey(snapshot, "header")).never.toBeNil()
		expect(entryForKey(snapshot, "$start")).never.toBeNil()
		expect(table.isfrozen(snapshot.entries)).toBe(true)
	end)

	it("returns one corrected presentation with correction before data-change completion effect", function()
		local sequence = DataSource.sequence(values(20), function(item)
			return item.id
		end)
		local batch
		sequence.subscribe(function(nextBatch)
			batch = nextBatch
		end)
		local engine = createEngine({}, { dataSource = sequence, overscan = 0 })
		activate(engine)
		engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 50 })

		sequence.prepend({ id = "inserted", kind = "row" })
		local update =
			engine.dispatch({ type = InternalVirtualizerCommandType.ApplyDataSourceChange, changeBatch = batch })
		local orderedEffects = {}
		for _, effect in update.effects do
			if
				effect.type == VirtualizerEffectType.ScrollCorrection
				or effect.type == VirtualizerEffectType.DataSourceChanged
			then
				table.insert(orderedEffects, effect.type)
			end
		end

		expect(update.snapshot.scrollState.scrollOffset).toBe(60)
		expect(update.snapshot.entries[1].key).toBe("item-6")
		expect(update.presentation.assignmentsChanged).toBe(false)
		expect(orderedEffects).toEqual({
			VirtualizerEffectType.ScrollCorrection,
			VirtualizerEffectType.DataSourceChanged,
		})
	end)

	it("bounds key reads for single append, prepend, and update changes", function()
		local function keyReadsForChange(applyChange)
			local items = values(1000)
			local keyReads = 0
			local dataSource = {
				getItemCount = function()
					return #items
				end,
				getItem = function(index)
					return items[index]
				end,
				getItemKey = function(index)
					keyReads += 1
					return items[index].id
				end,
				getItems = function(firstIndex, lastIndex)
					return table.move(items, firstIndex, lastIndex, 1, {})
				end,
				subscribe = function()
					return function() end
				end,
			}
			local engine = createEngine({}, { dataSource = dataSource, overscan = 0 })
			activate(engine)
			engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 100 })
			keyReads = 0

			local change, previousItemCount = applyChange(items)
			engine.dispatch({
				type = InternalVirtualizerCommandType.ApplyDataSourceChange,
				changeBatch = {
					changes = { change },
					previousItemCount = previousItemCount,
					itemCount = #items,
				},
			})
			return keyReads
		end

		local appendReads = keyReadsForChange(function(items)
			local previousItemCount = #items
			table.insert(items, { id = "appended", kind = "row" })
			return { type = DataSourceChangeType.Insert, index = #items, keys = { "appended" } }, previousItemCount
		end)
		local prependReads = keyReadsForChange(function(items)
			local previousItemCount = #items
			table.insert(items, 1, { id = "prepended", kind = "row" })
			return { type = DataSourceChangeType.Insert, index = 1, keys = { "prepended" } }, previousItemCount
		end)
		local updateReads = keyReadsForChange(function(items)
			local previousItemCount = #items
			items[11] = { id = "item-11", kind = "row", label = "updated" }
			return { type = DataSourceChangeType.Update, keys = { "item-11" } }, previousItemCount
		end)

		expect(appendReads).toBeLessThan(10)
		expect(prependReads).toBeLessThan(10)
		expect(updateReads).toBeLessThan(10)
	end)

	it("replays two-operation transactions while retaining measured geometry", function()
		local sequence = DataSource.sequence(values(3), function(item)
			return item.id
		end)
		local batch
		sequence.subscribe(function(nextBatch)
			batch = nextBatch
		end)
		local engine = createEngine({}, { dataSource = sequence, layout = measuredLayout(), overscan = 5 })
		activate(engine, 30)
		measure(engine, 2, 24)

		sequence.transaction(function()
			sequence.append({ id = "item-4", kind = "row" })
			sequence.prepend({ id = "inserted", kind = "row" })
		end)
		local update =
			engine.dispatch({ type = InternalVirtualizerCommandType.ApplyDataSourceChange, changeBatch = batch })

		expect(#batch.changes).toBe(2)
		expect(entryForKey(update.snapshot, "item-2").index).toBe(3)
		expect(entryForKey(update.snapshot, "item-2").itemLayout.length).toBe(24)
		expect(update.snapshot.contentLength).toBe(64)
	end)

	it("preserves measured geometry and the viewport anchor across a full reorder", function()
		local sequence = DataSource.sequence(values(10), function(item)
			return item.id
		end)
		local batch
		sequence.subscribe(function(nextBatch)
			batch = nextBatch
		end)
		local engine = createEngine({}, { dataSource = sequence, layout = measuredLayout(), overscan = 10 })
		activate(engine)
		measure(engine, 3, 16)
		engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 20 })

		sequence.reorder({
			"item-10",
			"item-9",
			"item-8",
			"item-7",
			"item-6",
			"item-5",
			"item-4",
			"item-3",
			"item-2",
			"item-1",
		})
		local update =
			engine.dispatch({ type = InternalVirtualizerCommandType.ApplyDataSourceChange, changeBatch = batch })

		expect(entryForKey(update.snapshot, "item-3").index).toBe(8)
		expect(entryForKey(update.snapshot, "item-3").itemLayout.length).toBe(16)
		expect(update.snapshot.scrollState.scrollOffset).toBe(70)
		expect(effectOfType(update, VirtualizerEffectType.ScrollCorrection).delta).toBe(50)
	end)

	it("swaps DataSources as a reset without inferring key continuity", function()
		local engine = createEngine(values(30), { overscan = 0 })
		activate(engine)
		engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 100 })
		local reordered = values(30)
		local anchored = table.remove(reordered, 11)
		table.insert(reordered, 1, anchored)

		local update = engine.dispatch({
			type = VirtualizerCommandType.SetDataSource,
			dataSource = source(reordered),
		})

		expect(update.snapshot.scrollState.scrollOffset).toBe(100)
		expect(update.snapshot.contentLength).toBe(300)
		expect(update.snapshot.visibleRange).toEqual({ firstIndex = 11, lastIndex = 12 })
		expect(update.snapshot.entries[1].key).toBe("item-10")
		expect(effectOfType(update, VirtualizerEffectType.ScrollCorrection)).toBeNil()
	end)

	it("does not correct scroll for an in-place update with unchanged anchor geometry", function()
		local sequence = DataSource.sequence(values(30), function(item)
			return item.id
		end)
		local batch
		sequence.subscribe(function(nextBatch)
			batch = nextBatch
		end)
		local engine = createEngine({}, { dataSource = sequence, layout = measuredLayout(), overscan = 0 })
		activate(engine)
		engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 100 })

		sequence.setItem(11, { id = "item-11", kind = "row", label = "updated" })
		local update =
			engine.dispatch({ type = InternalVirtualizerCommandType.ApplyDataSourceChange, changeBatch = batch })

		expect(update.snapshot.scrollState.scrollOffset).toBe(100)
		expect(entryForKey(update.snapshot, "item-11").value.label).toBe("updated")
		expect(effectOfType(update, VirtualizerEffectType.ScrollCorrection)).toBeNil()
	end)

	it("returns measurement diagnostics and correction in transaction order", function()
		local engine = createEngine(values(100), {
			layout = measuredLayout(),
			overscan = 100,
			diagnostics = function() end,
		})
		activate(engine)
		engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 50 })

		local update = measure(engine, 1, 20)
		local order = {}
		for _, effect in update.effects do
			if effect.type == VirtualizerEffectType.ScrollCorrection then
				table.insert(order, "scroll-correction")
			elseif effect.type == VirtualizerEffectType.Diagnostic then
				table.insert(order, effect.event.kind)
			end
		end

		expect(update.snapshot.scrollState.scrollOffset).toBe(60)
		expect(order).toEqual({
			"measurementsProcessingStarted",
			"scroll-correction",
			"scrollCorrection",
			"measurementsProcessed",
		})
	end)

	it("keeps absolute and relative offset movements anchored across measurements", function()
		local engine = createEngine(values(100), { layout = measuredLayout(), overscan = 100 })
		activate(engine)

		expect(engine.dispatch({ type = VirtualizerCommandType.ScrollToOffset, offset = 50 }).result).toBe(50)
		local afterAbsolute = measure(engine, 1, 20)
		expect(afterAbsolute.snapshot.scrollState.scrollOffset).toBe(60)
		expect(effectOfType(afterAbsolute, VirtualizerEffectType.ScrollCorrection).delta).toBe(10)

		expect(engine.dispatch({ type = VirtualizerCommandType.ScrollBy, delta = 10 }).result).toBe(70)
		local afterRelative = measure(engine, 2, 20)
		expect(afterRelative.snapshot.scrollState.scrollOffset).toBe(80)
		expect(effectOfType(afterRelative, VirtualizerEffectType.ScrollCorrection).delta).toBe(10)
	end)

	it("anchors a restored snapshot at its landed viewport position", function()
		local engine = createEngine(values(100), { layout = measuredLayout(), overscan = 100 })
		activate(engine)
		engine.dispatch({ type = VirtualizerCommandType.ScrollToOffset, offset = 50 })
		local snapshotValue = engine.query({ type = VirtualizerQueryType.CaptureScrollAnchorSnapshot })
		engine.dispatch({ type = VirtualizerCommandType.ScrollToOffset, offset = 0 })

		expect(engine.dispatch({
			type = VirtualizerCommandType.RestoreScrollAnchorSnapshot,
			snapshot = snapshotValue,
		}).result).toBe(50)
		local refined = measure(engine, 1, 20)
		expect(refined.snapshot.scrollState.scrollOffset).toBe(60)
		expect(effectOfType(refined, VirtualizerEffectType.ScrollCorrection).delta).toBe(10)
	end)

	it("settles content-length-only measurements without changing render items", function()
		local engine = createEngine(values(100), { layout = measuredLayout(), overscan = 100 })
		activate(engine)
		local farEntry = entryForKey(engine.getSnapshot(), "item-50")
		engine.dispatch({ type = VirtualizerCommandType.SetPolicy, policy = policy(0, nil) })
		local before = engine.getSnapshot()

		local update = engine.dispatch({
			type = InternalVirtualizerCommandType.SubmitLogicalMeasurements,
			measurements = {
				{
					itemIndex = farEntry.index,
					itemKey = farEntry.key,
					itemRevision = farEntry.identity.revision,
					length = 20,
				},
			},
		})

		expect(update.snapshot.contentLength).toBe(1010)
		expect(update.snapshot.entries).toBe(before.entries)
		expect(update.snapshot.visibleRange).toBe(before.visibleRange)
		expect(update.snapshot.mountedRange).toBe(before.mountedRange)
		expect(update.presentation).toEqual({ assignmentsChanged = false, placementChanged = false })
	end)

	it("settles changed render items when a measurement shifts the visible range", function()
		local engine = createEngine(values(100), { layout = measuredLayout(), overscan = 0 })
		activate(engine)
		local before = engine.getSnapshot()

		local update = measure(engine, 1, 30)

		expect(update.snapshot.visibleRange).toEqual({ firstIndex = 1, lastIndex = 1 })
		expect(update.snapshot.mountedRange).toEqual({ firstIndex = 1, lastIndex = 1 })
		expect(update.snapshot.entries).never.toBe(before.entries)
		expect(update.presentation.assignmentsChanged).toBe(true)
	end)

	it("anchors the visible window when an above-viewport overscan item resizes", function()
		local engine = createEngine(values(100), { layout = measuredLayout(), overscan = 2 })
		activate(engine)
		engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 100 })
		expect(engine.getSnapshot().visibleRange).toEqual({ firstIndex = 11, lastIndex = 12 })
		expect(engine.getSnapshot().mountedRange).toEqual({ firstIndex = 9, lastIndex = 14 })

		local update = measure(engine, 10, 14)

		expect(update.snapshot.scrollState.scrollOffset).toBe(104)
		expect(update.snapshot.visibleRange).toEqual({ firstIndex = 11, lastIndex = 12 })
		expect(effectOfType(update, VirtualizerEffectType.ScrollCorrection).delta).toBe(4)
	end)

	it("does not correct scroll for measurements inside or below the visible window", function()
		local engine = createEngine(values(100), { layout = measuredLayout(), overscan = 100 })
		activate(engine)
		engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 100 })

		local inside = measure(engine, 12, 14)
		local below = measure(engine, 50, 20)

		expect(inside.snapshot.scrollState.scrollOffset).toBe(100)
		expect(effectOfType(inside, VirtualizerEffectType.ScrollCorrection)).toBeNil()
		expect(below.snapshot.scrollState.scrollOffset).toBe(100)
		expect(effectOfType(below, VirtualizerEffectType.ScrollCorrection)).toBeNil()
	end)
end)
