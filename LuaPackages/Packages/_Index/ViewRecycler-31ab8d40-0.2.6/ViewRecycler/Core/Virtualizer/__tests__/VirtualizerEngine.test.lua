local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local DataSource = require(Src.Core.DataSource)
local Layout = require(Src.Core.Layout)
local PinnedPosition = require(Src.Core.Enums.PinnedPosition)
local ScrollAlignment = require(Src.Core.Enums.ScrollAlignment)
local VirtualizerCommandTypes = require(Src.Core.Enums.VirtualizerCommandType)
local VirtualizerCommandType = VirtualizerCommandTypes.External
local InternalVirtualizerCommandType = VirtualizerCommandTypes.Internal
local VirtualizerEffectType = require(Src.Core.Enums.VirtualizerEffectType)
local VirtualizerQueryType = require(Src.Core.Enums.VirtualizerQueryType)
local createVirtualizerEngine = require(Src.Core.Virtualizer.VirtualizerEngine)

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

local function createEngine(items, options)
	options = options or {}
	return createVirtualizerEngine({
		dataSource = DataSource.snapshot(items, function(item)
			return item.id
		end),
		layout = options.layout or Layout.uniform({ itemLength = 10 }),
		getRecyclableViewType = function(item)
			return item.kind
		end,
		overscan = options.overscan,
		dataPrefetch = options.dataPrefetch,
		isItemStickyHeader = options.isItemStickyHeader,
		pinnedStartItem = options.pinnedStartItem,
	})
end

local function entryForKey(snapshot, key)
	for _, entry in snapshot.entries do
		if entry.key == key then
			return entry
		end
	end
	return nil
end

describe("VirtualizerEngine", function()
	it("exposes commands and immutable snapshots through the logical interface", function()
		local engine = createEngine(values(4), { overscan = 0 })

		engine.dispatch({ type = VirtualizerCommandType.Activate })
		local update = engine.dispatch({
			type = VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 20,
			crossAxisLength = 100,
		})

		expect(update.snapshot.entries).toHaveLength(2)
		expect(update.snapshot.visibleRange).toEqual({ firstIndex = 1, lastIndex = 2 })
		expect(update.presentation.assignmentsChanged).toBe(true)
		expect(table.isfrozen(update.snapshot)).toBe(true)
		expect(table.isfrozen(update.snapshot.entries)).toBe(true)
		expect(table.isfrozen(update.snapshot.entries[1])).toBe(true)
		expect(engine.getSnapshot()).toBe(update.snapshot)
		expect(engine.getSnapshot().contentLength).toBe(40)
		expect(update.snapshot.entries[2].itemLayout).toEqual({
			startOffset = 10,
			length = 10,
		})
		expect(update.snapshot.entries[1].itemLayout).toEqual({
			startOffset = 0,
			length = 10,
		})
	end)

	it("orders initial Data prefetch demand after range effects and invalidates it on destroy", function()
		local engine = createEngine(values(20), {
			overscan = 0,
			dataPrefetch = { endItems = 2 },
		})
		engine.dispatch({ type = VirtualizerCommandType.Activate })

		local update = engine.dispatch({
			type = VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 20,
			crossAxisLength = 100,
		})

		expect(update.effects[1].type).toBe(VirtualizerEffectType.VisibleRangeChanged)
		expect(update.effects[2].type).toBe(VirtualizerEffectType.MountedRangeChanged)
		expect(update.effects[3].type).toBe(VirtualizerEffectType.DataPrefetchRequested)
		expect(update.effects[3].request.edge).toBe("end")
		expect(update.effects[3].request.range).toEqual({ firstIndex = 3, lastIndex = 4 })
		expect(update.effects[3].request.isCurrent()).toBe(true)

		engine.dispatch({ type = VirtualizerCommandType.Destroy })
		expect(update.effects[3].request.isCurrent()).toBe(false)
	end)

	it("supersedes equal-range Data prefetch requests when replacing the DataSource", function()
		local engine = createVirtualizerEngine({
			dataSource = DataSource.snapshot(values(20), function(item)
				return item.id
			end),
			layout = Layout.uniform({ itemLength = 10 }),
			getRecyclableViewType = function(item)
				return item.kind
			end,
			overscan = 0,
			dataPrefetch = { endItems = 2 },
		})
		engine.dispatch({ type = VirtualizerCommandType.Activate })
		local initial = engine.dispatch({
			type = VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 20,
			crossAxisLength = 100,
		})
		local initialRequest = initial.effects[3].request

		local replacement = engine.dispatch({
			type = VirtualizerCommandType.SetDataSource,
			dataSource = DataSource.snapshot(values(20), function(item)
				return item.id
			end),
		})

		local replacementRequest = replacement.effects[#replacement.effects].request
		expect(replacementRequest.range).toEqual(initialRequest.range)
		expect(initialRequest.isCurrent()).toBe(false)
		expect(replacementRequest.isCurrent()).toBe(true)
	end)

	it("owns logical queries derived from data, Layout, viewport, and snapshots", function()
		local engine = createEngine(values(4), { overscan = 0 })
		engine.dispatch({ type = VirtualizerCommandType.Activate })
		engine.dispatch({
			type = VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 20,
			crossAxisLength = 100,
		})
		engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 10 })

		expect(engine.query({ type = VirtualizerQueryType.GetVisibleRange })).toEqual({ firstIndex = 2, lastIndex = 3 })
		expect(engine.query({ type = VirtualizerQueryType.GetItemLayout, index = 2 })).toEqual({
			startOffset = 10,
			length = 10,
		})
		expect(engine.query({
			type = VirtualizerQueryType.GetScrollOffsetForItem,
			index = 4,
			alignment = ScrollAlignment.End,
		})).toBe(20)
		expect(engine.query({ type = VirtualizerQueryType.CaptureScrollAnchorSnapshot })).toEqual({
			anchorKey = "item-2",
			anchorIndex = 2,
			offsetWithinItem = 0,
			fallbackScrollOffset = 10,
		})
	end)

	it("applies a complete policy in one logical transaction", function()
		local engine = createEngine(values(20), { overscan = 0 })
		engine.dispatch({ type = VirtualizerCommandType.Activate })
		engine.dispatch({ type = VirtualizerCommandType.SetViewportSize, scrollAxisLength = 20, crossAxisLength = 100 })
		local before = engine.getSnapshot()

		local update = engine.dispatch({
			type = VirtualizerCommandType.SetPolicy,
			policy = {
				overscan = 2,
				overscanPolicy = nil,
				dataPrefetch = { before = 1, after = 1 },
				contentAlignment = ScrollAlignment.Center,
				endThreshold = 5,
				pinnedItems = {},
				preserveScrollPositionOnChange = false,
			},
		})

		expect(update.snapshot.version).toBe(before.version + 1)
		expect(update.snapshot.mountedRange).toEqual({ firstIndex = 1, lastIndex = 4 })
	end)

	it("reuses the complete entry graph for within-Band plain-list scrolling", function()
		local engine = createEngine(values(20), { overscan = 3 })
		engine.dispatch({ type = VirtualizerCommandType.Activate })
		engine.dispatch({
			type = VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 20,
			crossAxisLength = 100,
		})
		engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 1 })
		local previous = engine.getSnapshot()
		local previousEntries = previous.entries
		local previousFirstEntry = previous.entries[1]

		local update = engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 2 })

		expect(update.snapshot).never.toBe(previous)
		expect(update.snapshot.entries).toBe(previousEntries)
		expect(update.snapshot.entries[1]).toBe(previousFirstEntry)
		expect(update.snapshot.visibleRange).toBe(previous.visibleRange)
		expect(update.snapshot.mountedRange).toBe(previous.mountedRange)
		expect(update.snapshot.mountedRange).toEqual(previous.mountedRange)
		expect(update.snapshot.scrollState.scrollOffset).toBe(2)
		expect(update.snapshot.version).toBe(previous.version + 1)
		expect(update.presentation.assignmentsChanged).toBe(false)
		expect(update.presentation.placementChanged).toBe(false)
	end)

	it("materializes a range revision within the Band without rebuilding entries", function()
		local engine = createEngine(values(20), { overscan = 3 })
		engine.dispatch({ type = VirtualizerCommandType.Activate })
		engine.dispatch({
			type = VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 20,
			crossAxisLength = 100,
		})
		local previous = engine.getSnapshot()

		local update = engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 10 })

		expect(update.snapshot.entries).toBe(previous.entries)
		expect(update.snapshot.visibleRange).never.toBe(previous.visibleRange)
		expect(update.snapshot.visibleRange).toEqual({ firstIndex = 2, lastIndex = 3 })
		expect(update.snapshot.mountedRange).toBe(previous.mountedRange)
		expect(update.snapshot.version).toBe(previous.version + 1)
		expect(update.presentation.placementChanged).toBe(false)
	end)

	it("recomputes when masonry visibility escapes the cached Band", function()
		local lengths = { 100, 1000, 100 }
		local engine = createEngine(values(3), {
			overscan = 0,
			layout = Layout.masonry({
				getItemLength = function(index)
					return lengths[index]
				end,
				crossAxisCount = 2,
			}),
		})
		engine.dispatch({ type = VirtualizerCommandType.Activate })
		engine.dispatch({
			type = VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 100,
			crossAxisLength = 300,
		})
		expect(engine.getSnapshot().visibleRange).toEqual({ firstIndex = 1, lastIndex = 2 })
		expect(engine.getSnapshot().mountedRange).toEqual({ firstIndex = 1, lastIndex = 2 })

		-- Item 2 extends the old scalar Band to 1000, while item 3 in the
		-- other column becomes visible after one viewport of scrolling.
		local update = engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 100 })

		expect(update.snapshot.visibleRange).toEqual({ firstIndex = 2, lastIndex = 3 })
		expect(update.snapshot.mountedRange).toEqual({ firstIndex = 2, lastIndex = 3 })
		expect(update.snapshot.entries[2].key).toBe("item-3")
	end)

	it("falls back safely when the active sticky header changes", function()
		local items = {
			{ id = "header-a", kind = "header" },
			{ id = "row-a", kind = "row" },
			{ id = "header-b", kind = "header" },
			{ id = "row-b", kind = "row" },
		}
		local engine = createEngine(items, {
			overscan = 4,
			isItemStickyHeader = function(item)
				return item.kind == "header"
			end,
		})
		engine.dispatch({ type = VirtualizerCommandType.Activate })
		engine.dispatch({ type = VirtualizerCommandType.SetViewportSize, scrollAxisLength = 10, crossAxisLength = 100 })
		engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 11 })
		local previous = engine.getSnapshot()
		local previousRow = entryForKey(previous, "row-a")
		expect(entryForKey(previous, "header-a").viewportPlacement).never.toBeNil()
		expect(entryForKey(previous, "header-b").viewportPlacement).toBeNil()

		local update = engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 21 })

		expect(entryForKey(update.snapshot, "header-a").viewportPlacement).toBeNil()
		expect(entryForKey(update.snapshot, "header-b").viewportPlacement).never.toBeNil()
		expect(entryForKey(update.snapshot, "row-a")).toBe(previousRow)
		expect(update.presentation.assignmentsChanged).toBe(false)
		expect(update.presentation.placementChanged).toBe(true)
	end)

	it("materializes placement-policy revisions without exposing a public counter", function()
		local items = {
			{ id = "header", kind = "header" },
			{ id = "row", kind = "row" },
		}
		local engine = createEngine(items, {
			overscan = 2,
			isItemStickyHeader = function(item)
				return item.kind == "header"
			end,
		})
		engine.dispatch({ type = VirtualizerCommandType.Activate })
		engine.dispatch({ type = VirtualizerCommandType.SetViewportSize, scrollAxisLength = 10, crossAxisLength = 100 })
		local before = engine.getSnapshot()

		local update = engine.dispatch({
			type = VirtualizerCommandType.SetPolicy,
			policy = {
				overscan = 2,
				overscanPolicy = nil,
				dataPrefetch = nil,
				contentAlignment = nil,
				endThreshold = nil,
				pinnedItems = {
					isItemStickyHeader = function(item)
						return item.kind == "header"
					end,
				},
				preserveScrollPositionOnChange = true,
			},
		})

		expect(update.snapshot).toBe(before)
		expect(update.snapshot.version).toBe(before.version)
		expect(update.snapshot.entries).toBe(before.entries)
		expect(update.presentation.assignmentsChanged).toBe(false)
		expect(update.presentation.placementChanged).toBe(false)
	end)

	it("invalidates pinned placement after a pinned measurement", function()
		local engine = createEngine(values(6), {
			overscan = 6,
			pinnedStartItem = {
				key = "$start",
				value = { id = "$start", kind = "pin" },
				itemViewType = "pin",
			},
		})
		engine.dispatch({ type = VirtualizerCommandType.Activate })
		engine.dispatch({
			type = VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 20,
			crossAxisLength = 100,
		})
		local pinned = entryForKey(engine.getSnapshot(), "$start")
		engine.dispatch({
			type = InternalVirtualizerCommandType.SubmitLogicalMeasurements,
			measurements = {
				{
					itemIndex = nil,
					itemKey = pinned.key,
					itemRevision = pinned.identity.revision,
					pinnedPosition = PinnedPosition.Start,
					length = 5,
				},
			},
		})
		local previous = engine.getSnapshot()
		local previousData = entryForKey(previous, "item-1")

		local update = engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 1 })
		local nextPinned = entryForKey(update.snapshot, "$start")

		expect(update.snapshot.contentStartOffset).toBe(5)
		expect(nextPinned.viewportPlacement.mainAxisLength).toBe(5)
		expect(nextPinned.canvasPlacement.mainAxisOffset).toBe(1)
		expect(entryForKey(update.snapshot, "item-1")).toBe(previousData)
	end)

	it("anchors one measured geometry transaction and commits once", function()
		local items = values(20)
		local engine = createVirtualizerEngine({
			dataSource = DataSource.snapshot(items, function(item)
				return item.id
			end),
			layout = Layout.measured({ estimatedItemLength = 10 }),
			getRecyclableViewType = function(item)
				return item.kind
			end,
			overscan = 20,
		})
		engine.dispatch({ type = VirtualizerCommandType.Activate })
		engine.dispatch({ type = VirtualizerCommandType.SetViewportSize, scrollAxisLength = 20, crossAxisLength = 100 })
		engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 50 })
		local before = engine.getSnapshot()
		local first = entryForKey(before, "item-1")
		local previousIdentity = first.identity
		local previousMeasurementIdentity = first.measurementIdentity

		local update = engine.dispatch({
			type = InternalVirtualizerCommandType.SubmitLogicalMeasurements,
			measurements = {
				{
					itemIndex = first.index,
					itemKey = first.key,
					itemRevision = first.identity.revision,
					length = 30,
				},
			},
		})

		expect(update.snapshot.version).toBe(before.version + 1)
		expect(update.snapshot.scrollState.scrollOffset).toBe(70)
		expect(entryForKey(update.snapshot, "item-1").itemLayout.length).toBe(30)
		expect(entryForKey(update.snapshot, "item-1").identity).toBe(previousIdentity)
		expect(entryForKey(update.snapshot, "item-1").measurementIdentity).toBe(previousMeasurementIdentity)
	end)

	it("does not commit a snapshot revision for a no-op scroll transaction", function()
		local engine = createEngine(values(4), { overscan = 0 })
		engine.dispatch({ type = VirtualizerCommandType.Activate })
		engine.dispatch({ type = VirtualizerCommandType.SetViewportSize, scrollAxisLength = 20, crossAxisLength = 100 })
		local before = engine.getSnapshot()

		local update = engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 0 })

		expect(update.snapshot).toBe(before)
		expect(update.snapshot.version).toBe(before.version)
		expect(update.presentation.assignmentsChanged).toBe(false)
		expect(update.presentation.placementChanged).toBe(false)
	end)

	it("applies a data batch with one anchored snapshot commit", function()
		local source = DataSource.sequence(values(20), function(item)
			return item.id
		end)
		local batch
		source.subscribe(function(nextBatch)
			batch = nextBatch
		end)
		local engine = createVirtualizerEngine({
			dataSource = source,
			layout = Layout.uniform({ itemLength = 10 }),
			getRecyclableViewType = function(item)
				return item.kind
			end,
			overscan = 2,
		})
		engine.dispatch({ type = VirtualizerCommandType.Activate })
		engine.dispatch({ type = VirtualizerCommandType.SetViewportSize, scrollAxisLength = 20, crossAxisLength = 100 })
		engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 50 })
		local before = engine.getSnapshot()
		source.prepend({ id = "inserted", kind = "row" })

		local update =
			engine.dispatch({ type = InternalVirtualizerCommandType.ApplyDataSourceChange, changeBatch = batch })

		expect(update.snapshot.version).toBe(before.version + 1)
		expect(update.snapshot.scrollState.scrollOffset).toBe(60)
		expect(update.snapshot.visibleRange).toEqual({ firstIndex = 7, lastIndex = 8 })
	end)

	it("reports an externally applied anchor offset to the host", function()
		local engine = createEngine(values(20), { overscan = 0 })
		engine.dispatch({ type = VirtualizerCommandType.Activate })
		engine.dispatch({ type = VirtualizerCommandType.SetViewportSize, scrollAxisLength = 20, crossAxisLength = 100 })

		local update = engine.dispatch({ type = VirtualizerCommandType.ApplyScrollAnchorOffset, offset = 90 })

		expect(update.result).toBe(90)
		expect(update.snapshot.scrollState.scrollOffset).toBe(90)
		expect(update.effects).toContainEqual({ type = VirtualizerEffectType.ScrollPositionChanged, offset = 90 })
	end)

	it("rejects synchronous dispatch reentry", function()
		local engine
		local reenter = false
		local policy = {
			compute = function()
				if reenter then
					engine.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 1 })
				end
				return { before = 1, after = 1 }
			end,
		}
		engine = createVirtualizerEngine({
			dataSource = DataSource.snapshot(values(5), function(item)
				return item.id
			end),
			layout = Layout.uniform({ itemLength = 10 }),
			getRecyclableViewType = function(item)
				return item.kind
			end,
			overscanPolicy = policy,
		})
		engine.dispatch({ type = VirtualizerCommandType.Activate })
		reenter = true

		expect(function()
			engine.dispatch({
				type = VirtualizerCommandType.SetViewportSize,
				scrollAxisLength = 20,
				crossAxisLength = 100,
			})
		end).toThrow("cannot dispatch during a Geometry transaction")
	end)
end)
