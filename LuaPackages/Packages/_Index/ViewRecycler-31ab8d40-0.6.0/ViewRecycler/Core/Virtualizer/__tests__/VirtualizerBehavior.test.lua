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
local ScrollObservationKind = require(Src.Core.Enums.ScrollObservationKind)
local createRecyclingScope = require(Src.Core.Recycling.RecyclingScope)
local createVirtualizer = require(Src.Core.Virtualizer.Virtualizer)

local function values(count: number)
	local result = {}
	for index = 1, count do
		result[index] = { id = `item-{index}`, kind = "row" }
	end
	return result
end

local function sequence(items)
	return DataSource.sequence(items, function(item)
		return item.id
	end)
end

-- A DataSource whose change batches the test emits by hand.
local function manualSource(items)
	local listener = nil
	local source = {
		getItemCount = function()
			return #items
		end,
		getItem = function(index)
			return items[index]
		end,
		getItemKey = function(index)
			return items[index].id
		end,
		getItems = function(firstIndex, lastIndex)
			return table.move(items, firstIndex, lastIndex, 1, {})
		end,
		subscribe = function(callback)
			listener = callback
			return function()
				listener = nil
			end
		end,
	}
	function source.emit(batch)
		assert(listener ~= nil, "manualSource: no subscriber")
		listener(batch)
	end
	return source
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

local function policy(overscan)
	return {
		overscan = overscan,
		pinnedItems = {},
		preserveScrollPositionOnChange = true,
	}
end

local function correctionOf(record)
	if record.scrollPositionFollowsCorrection and record.scrollCorrection ~= 0 then
		return record.scrollCorrection
	end
	return nil
end

local function pinnedStart()
	return { key = "$start", value = { id = "$start", kind = "pin" }, itemViewType = "pin" }
end

local function createList(items, options)
	options = options or {}
	local counts = { created = 0, destroyed = 0, binds = 0, itemReads = 0, keyReads = 0, viewTypes = 0, records = 0 }
	local scope = createRecyclingScope({
		adapter = {
			create = function(viewType)
				counts.created += 1
				return { id = counts.created, viewType = viewType }
			end,
			destroy = function()
				counts.destroyed += 1
			end,
		},
	})
	local bind = scope.bind
	scope.bind = function(binding)
		counts.binds += 1
		return bind(binding)
	end
	local dataSource = options.dataSource or sequence(items)
	local getItem = dataSource.getItem
	local getItemKey = dataSource.getItemKey
	local getItems = dataSource.getItems
	dataSource.getItem = function(index)
		counts.itemReads += 1
		return getItem(index)
	end
	dataSource.getItemKey = function(index)
		counts.keyReads += 1
		return getItemKey(index)
	end
	if getItems ~= nil then
		dataSource.getItems = function(firstIndex, lastIndex)
			counts.itemReads += math.max(0, lastIndex - firstIndex + 1)
			return getItems(firstIndex, lastIndex)
		end
	end
	local virtualizer = createVirtualizer({
		dataSource = dataSource,
		layout = options.layout or Layout.uniform({ itemLength = 10 }),
		recyclingScope = scope,
		getItemViewType = function(item)
			counts.viewTypes += 1
			return item.kind or "row"
		end,
		overscan = options.overscan,
		dataPrefetch = options.dataPrefetch,
		contentAlignment = options.contentAlignment,
		preserveScrollPositionOnChange = options.preserveScrollPositionOnChange,
		diagnostics = options.diagnostics,
		isItemStickyHeader = options.isItemStickyHeader,
		pinnedStartItem = options.pinnedStartItem,
		pinnedEndItem = options.pinnedEndItem,
		onTransaction = function()
			counts.records += 1
		end,
	})
	local list = {
		virtualizer = virtualizer,
		scope = scope,
		counts = counts,
		dataSource = dataSource,
	}
	function list.activate(viewportLength)
		virtualizer.activate()
		return virtualizer.setViewportSize(viewportLength or 20, 100)
	end
	function list.find(key)
		for _, mountedView in virtualizer.getCurrent().mountedViews do
			if mountedView.state.assignment.key == key then
				return mountedView
			end
		end
		return nil
	end
	function list.state(key)
		local mountedView = list.find(key)
		return if mountedView == nil then nil else mountedView.state
	end
	function list.view(key)
		local mountedView = list.find(key)
		return if mountedView == nil then nil else mountedView.itemView
	end
	function list.assignment(key)
		local state = list.state(key)
		return if state == nil then nil else state.assignment
	end
	function list.keys()
		local keys = {}
		for _, mountedView in virtualizer.getCurrent().mountedViews do
			table.insert(keys, mountedView.state.assignment.key)
		end
		return keys
	end
	function list.measureView(mountedView, length)
		return virtualizer.submitMeasurements({
			{ itemView = mountedView.itemView, state = mountedView.state, length = length },
		})
	end
	function list.measure(index, length)
		for _, mountedView in virtualizer.getCurrent().mountedViews do
			if mountedView.state.index == index then
				return list.measureView(mountedView, length)
			end
		end
		error(`VirtualizerBehavior: item {index} is not mounted`)
	end
	function list.measurePinned(position, length)
		for _, mountedView in virtualizer.getCurrent().mountedViews do
			if mountedView.state.pinnedPosition == position then
				return list.measureView(mountedView, length)
			end
		end
		error(`VirtualizerBehavior: no {position} pinned item is mounted`)
	end
	function list.destroy()
		virtualizer.destroy()
		scope.dispose()
	end
	return list
end

describe("Virtualizer records", function()
	it("publishes a complete empty immutable record", function()
		local list = createList({}, { overscan = 0 })
		local record = list.activate()

		expect(record.visibleRange).toEqual({ firstIndex = 1, lastIndex = 0 })
		expect(record.mountedRange).toEqual({ firstIndex = 1, lastIndex = 0 })
		expect(record.contentLength).toBe(0)
		expect(record.mountedViews).toEqual({})
		expect(record.scrollState).toEqual({
			scrollOffset = 0,
			viewportLength = 20,
			contentLength = 0,
			distanceFromEnd = 0,
			atStart = true,
			atEnd = true,
		})
		expect(table.isfrozen(record)).toBe(true)
		expect(table.isfrozen(record.scrollState)).toBe(true)
		list.destroy()
	end)

	it("publishes immutable ranges, Content metrics, and the current record", function()
		local list = createList(values(4), { overscan = 0 })
		local record = list.activate()

		expect(record.visibleRange).toEqual({ firstIndex = 1, lastIndex = 2 })
		expect(record.mountedRange).toEqual({ firstIndex = 1, lastIndex = 2 })
		expect(table.isfrozen(record.mountedRange)).toBe(true)
		expect(table.isfrozen(record.mountedViews)).toBe(true)
		expect(list.virtualizer.getCurrent()).toBe(record)
		expect(record.contentLength).toBe(40)
		expect(list.virtualizer.getItemLayout(2)).toEqual({ startOffset = 10, length = 10 })
		list.destroy()
	end)

	it("returns an independent record for every transaction", function()
		local list = createList(values(20), { overscan = 0 })
		local first = list.activate()

		local second = list.virtualizer.setScrollOffset(30)

		expect(second).never.toBe(first)
		expect(first.scrollState.scrollOffset).toBe(0)
		expect(second.scrollState.scrollOffset).toBe(30)
		list.destroy()
	end)

	it("reuses unchanged ranges and mounted Views while the ranges hold", function()
		local list = createList(values(20), { overscan = 3 })
		list.activate()
		list.virtualizer.setScrollOffset(1)
		local previous = list.virtualizer.getCurrent()
		local binds = list.counts.binds

		local record = list.virtualizer.setScrollOffset(2)

		expect(record).never.toBe(previous)
		expect(record.visibleRange).toBe(previous.visibleRange)
		expect(record.mountedRange).toBe(previous.mountedRange)
		expect(record.mountedViews).toBe(previous.mountedViews)
		expect(record.scrollState.scrollOffset).toBe(2)
		expect(list.counts.binds).toBe(binds)
		list.destroy()
	end)

	it("does not report movement for a no-op scroll", function()
		local list = createList(values(4), { overscan = 0 })
		local before = list.activate()

		local record = list.virtualizer.setScrollOffset(0)

		expect(record.scrollPositionChanged).toBe(false)
		expect(record.mountedViews).toBe(before.mountedViews)
		expect(record.scrollState).toEqual(before.scrollState)
		list.destroy()
	end)

	it("answers queries derived from data, Layout, and viewport", function()
		local list = createList(values(4), { overscan = 0 })
		list.activate()
		list.virtualizer.setScrollOffset(10)

		expect(list.virtualizer.getCurrent().visibleRange).toEqual({ firstIndex = 2, lastIndex = 3 })
		expect(list.virtualizer.getItemLayout(2)).toEqual({ startOffset = 10, length = 10 })
		expect(list.virtualizer.getScrollOffsetForItem(4, ScrollAlignment.End)).toBe(20)
		expect(list.virtualizer.captureScrollAnchorSnapshot()).toEqual({
			anchorKey = "item-2",
			anchorIndex = 2,
			offsetWithinItem = 0,
			fallbackScrollOffset = 10,
		})
		list.destroy()
	end)

	it("reflects whether the active Layout requires measurement", function()
		local list = createList(values(3), { overscan = 0 })
		list.activate()
		expect(list.virtualizer.getCurrent().requiresItemMeasurement).toBe(false)

		list.virtualizer.setLayout(measuredLayout())

		expect(list.virtualizer.getCurrent().requiresItemMeasurement).toBe(true)
		list.destroy()
	end)

	it("rejects reentry from Layout during a transaction", function()
		local virtualizer
		local reenter = false
		local baseLayout = Layout.uniform({ itemLength = 10 })
		local layout = table.clone(baseLayout)
		layout.getIntersectingIndexRange = function(...)
			if reenter then
				virtualizer.setScrollOffset(1)
			end
			return baseLayout.getIntersectingIndexRange(...)
		end
		local list = createList(values(5), { layout = layout })
		virtualizer = list.virtualizer
		virtualizer.activate()
		reenter = true

		expect(function()
			virtualizer.setViewportSize(20, 100)
		end).toThrow("transaction")
		list.scope.dispose()
	end)
end)

describe("Virtualizer ranges and scroll commands", function()
	it("clamps absolute and relative commands and reports complete scroll state", function()
		local list = createList(values(5), { overscan = 0 })
		list.activate()

		local high = list.virtualizer.scrollToOffset(100)
		expect(high.scrollState).toEqual({
			scrollOffset = 30,
			viewportLength = 20,
			contentLength = 50,
			distanceFromEnd = 0,
			atStart = false,
			atEnd = true,
		})
		local low = list.virtualizer.scrollBy(-100)
		expect(low.scrollState).toEqual({
			scrollOffset = 0,
			viewportLength = 20,
			contentLength = 50,
			distanceFromEnd = 30,
			atStart = true,
			atEnd = false,
		})
		list.destroy()
	end)

	it("advances fixed overscan one item at each visible boundary", function()
		local list = createList(values(20), { overscan = 2 })
		list.activate()
		list.virtualizer.setScrollOffset(50)
		expect(list.virtualizer.getCurrent().visibleRange).toEqual({ firstIndex = 6, lastIndex = 7 })
		expect(list.virtualizer.getCurrent().mountedRange).toEqual({ firstIndex = 4, lastIndex = 9 })

		local record = list.virtualizer.setScrollOffset(60)

		expect(record.visibleRange).toEqual({ firstIndex = 7, lastIndex = 8 })
		expect(record.mountedRange).toEqual({ firstIndex = 5, lastIndex = 10 })
		list.destroy()
	end)

	it("transitions runtime overscan through zero, two, and the default", function()
		local list = createList(values(10), { overscan = 0 })
		list.activate()
		expect(list.virtualizer.getCurrent().mountedRange).toEqual({ firstIndex = 1, lastIndex = 2 })

		list.virtualizer.setPolicy(policy(2))
		expect(list.virtualizer.getCurrent().mountedRange).toEqual({ firstIndex = 1, lastIndex = 4 })

		list.virtualizer.setPolicy(policy(nil))
		expect(list.virtualizer.getCurrent().mountedRange).toEqual({ firstIndex = 1, lastIndex = 3 })
		list.destroy()
	end)

	it("clamps fixed overscan at both boundaries and across the whole list", function()
		local list = createList(values(5), { overscan = 2 })
		list.activate()
		expect(list.virtualizer.getCurrent().mountedRange).toEqual({ firstIndex = 1, lastIndex = 4 })
		list.virtualizer.setScrollOffset(30)
		expect(list.virtualizer.getCurrent().mountedRange).toEqual({ firstIndex = 2, lastIndex = 5 })

		list.virtualizer.setPolicy(policy(100))
		expect(list.virtualizer.getCurrent().mountedRange).toEqual({ firstIndex = 1, lastIndex = 5 })
		list.destroy()
	end)

	it("applies a complete policy in one transaction", function()
		local list = createList(values(20), { overscan = 0 })
		list.activate()
		local records = list.counts.records

		local record = list.virtualizer.setPolicy({
			overscan = 2,
			dataPrefetch = { before = 1, after = 1 },
			contentAlignment = ScrollAlignment.Center,
			endThreshold = 5,
			pinnedItems = {},
			preserveScrollPositionOnChange = false,
		})

		expect(list.counts.records).toBe(records + 1)
		expect(record.mountedRange).toEqual({ firstIndex = 1, lastIndex = 4 })
		expect(record.mountedViews).toHaveLength(4)
		list.destroy()
	end)

	it("rejects fractional construction and runtime overscan without committing", function()
		expect(function()
			createList(values(5), { overscan = 1.5 })
		end).toThrow()

		local list = createList(values(5), { overscan = 0 })
		list.activate()
		local before = list.virtualizer.getCurrent()
		expect(function()
			list.virtualizer.setPolicy(policy(1.5))
		end).toThrow()
		expect(list.virtualizer.getCurrent()).toBe(before)
		list.destroy()
	end)

	it("expands measured variable-size ranges by item count", function()
		local list = createList(values(8), { layout = measuredLayout(), overscan = 1 })
		list.activate()
		list.measure(1, 30)
		expect(list.virtualizer.getCurrent().visibleRange).toEqual({ firstIndex = 1, lastIndex = 1 })
		expect(list.virtualizer.getCurrent().mountedRange).toEqual({ firstIndex = 1, lastIndex = 2 })

		list.virtualizer.setScrollOffset(31)
		expect(list.virtualizer.getCurrent().visibleRange).toEqual({ firstIndex = 2, lastIndex = 4 })
		expect(list.virtualizer.getCurrent().mountedRange).toEqual({ firstIndex = 1, lastIndex = 5 })
		list.destroy()
	end)

	it("recomputes when masonry visibility changes", function()
		local lengths = { 100, 1000, 100 }
		local list = createList(values(3), {
			overscan = 0,
			layout = Layout.masonry({
				getItemLength = function(index)
					return lengths[index]
				end,
				crossAxisCount = 2,
			}),
		})
		list.virtualizer.activate()
		list.virtualizer.setViewportSize(100, 300)
		expect(list.virtualizer.getCurrent().visibleRange).toEqual({ firstIndex = 1, lastIndex = 2 })

		-- Item 2 extends to 1000, while item 3 in the other column becomes
		-- visible after one viewport of scrolling.
		local record = list.virtualizer.setScrollOffset(100)

		expect(record.visibleRange).toEqual({ firstIndex = 2, lastIndex = 3 })
		expect(record.mountedRange).toEqual({ firstIndex = 2, lastIndex = 3 })
		list.destroy()
	end)

	it("answers the item-offset query matrix", function()
		local list = createList(values(5), { overscan = 0 })
		list.activate()
		expect(list.virtualizer.getScrollOffsetForItem(3, ScrollAlignment.Start)).toBe(20)
		expect(list.virtualizer.getScrollOffsetForItem(3, ScrollAlignment.Center)).toBe(15)
		expect(list.virtualizer.getScrollOffsetForItem(3, ScrollAlignment.End)).toBe(10)
		expect(list.virtualizer.getScrollOffsetForItem(1, ScrollAlignment.End)).toBe(0)
		expect(list.virtualizer.getScrollOffsetForItem(-10)).toBe(0)
		expect(list.virtualizer.getScrollOffsetForItem(99)).toBe(30)
		list.destroy()

		local empty = createList({}, { overscan = 0 })
		empty.activate()
		expect(empty.virtualizer.getScrollOffsetForItem(1)).toBe(0)
		empty.destroy()
	end)

	it("targets complete grid rows and refines measured target offsets", function()
		local grid = createList(values(9), {
			overscan = 0,
			layout = Layout.grid({ itemLength = 10, crossAxisCount = 3 }),
		})
		grid.activate(10)
		expect(grid.virtualizer.getScrollOffsetForItem(5)).toBe(10)
		grid.destroy()

		local measured = createList(values(6), { overscan = 6, layout = measuredLayout() })
		measured.activate()
		expect(measured.virtualizer.getScrollOffsetForItem(5)).toBe(40)
		measured.measure(1, 20)
		expect(measured.virtualizer.getScrollOffsetForItem(5)).toBe(50)
		measured.destroy()
	end)
end)

describe("Virtualizer scroll anchoring", function()
	it("restores a surviving key after reorder and clamps removed-key fallback", function()
		local source = sequence(values(6))
		local list = createList({}, { dataSource = source, overscan = 0 })
		list.activate()
		list.virtualizer.setScrollOffset(15)
		local captured = list.virtualizer.captureScrollAnchorSnapshot()

		source.reorder({ "item-1", "item-3", "item-4", "item-5", "item-2", "item-6" })
		expect(list.virtualizer.restoreScrollAnchorSnapshot(captured).scrollState.scrollOffset).toBe(40)

		source.remove(5)
		local fallback = list.virtualizer.restoreScrollAnchorSnapshot({
			anchorKey = "item-2",
			anchorIndex = 5,
			offsetWithinItem = 5,
			fallbackScrollOffset = 999,
		})
		expect(fallback.scrollState.scrollOffset).toBe(30)
		list.destroy()
	end)

	it("anchors one measured geometry transaction above the viewport", function()
		local list = createList(values(20), { layout = measuredLayout(), overscan = 20 })
		list.activate()
		list.virtualizer.setScrollOffset(50)
		local assignment = list.assignment("item-1")
		local records = list.counts.records

		local record = list.measure(1, 30)

		expect(list.counts.records).toBe(records + 1)
		expect(record.scrollState.scrollOffset).toBe(70)
		expect(list.virtualizer.getItemLayout(1).length).toBe(30)
		expect(list.assignment("item-1")).toBe(assignment)
		list.destroy()
	end)

	it("batches measurements into one transaction and one combined correction", function()
		local list = createList(values(10), { overscan = 10, layout = measuredLayout() })
		list.activate()
		list.virtualizer.setScrollOffset(50)
		local first = list.find("item-1")
		local second = list.find("item-2")
		local records = list.counts.records

		local record = list.virtualizer.submitMeasurements({
			{ itemView = first.itemView, state = first.state, length = 20 },
			{ itemView = second.itemView, state = second.state, length = 30 },
		})

		expect(list.counts.records).toBe(records + 1)
		expect(record.scrollState.scrollOffset).toBe(80)
		expect(correctionOf(record)).toBe(30)
		list.destroy()
	end)

	it("does not change geometry for an exact estimated measurement", function()
		local list = createList(values(5), { overscan = 5, layout = measuredLayout() })
		local before = list.activate()

		local record = list.measure(1, 10)

		expect(record.mountedViews).toBe(before.mountedViews)
		expect(record.contentLength).toBe(before.contentLength)
		expect(correctionOf(record)).toBeNil()
		list.destroy()
	end)

	it("drops stale measurements and ignores sub-pixel corrections", function()
		local list = createList(values(8), { overscan = 8, layout = measuredLayout() })
		list.activate()
		list.virtualizer.setScrollOffset(40)
		local mounted = list.find("item-1")
		local staleState = table.clone(mounted.state)
		staleState.assignment = { key = "item-1", value = mounted.state.assignment.value }

		local stale = list.virtualizer.submitMeasurements({
			{ itemView = mounted.itemView, state = staleState, length = 50 },
		})
		expect(stale.scrollState.scrollOffset).toBe(40)
		expect(list.virtualizer.getItemLayout(1).length).toBe(10)
		expect(correctionOf(stale)).toBeNil()

		local tiny = list.measure(1, 10.5)
		expect(tiny.scrollState.scrollOffset).toBe(40)
		expect(correctionOf(tiny)).toBeNil()
		list.destroy()
	end)

	it("records a measurement taken before its Item moved", function()
		local list = createList(values(100), { overscan = 0, layout = measuredLayout() })
		list.activate(100)
		local before = list.find("item-2")
		list.measure(1, 30)
		local after = list.find("item-2")
		expect(after.state).never.toBe(before.state)
		expect(after.state.assignment).toBe(before.state.assignment)

		list.virtualizer.submitMeasurements({
			{ itemView = before.itemView, state = before.state, length = 50 },
		})

		expect(list.virtualizer.getItemLayout(2).length).toBe(50)
		list.destroy()
	end)

	it("records a measurement whose Item departed before it arrived", function()
		local list = createList(values(100), { overscan = 0, layout = measuredLayout() })
		list.activate()
		local departing = list.find("item-1")
		list.virtualizer.setScrollOffset(500)
		expect(list.find("item-1")).toBeNil()

		list.virtualizer.submitMeasurements({
			{ itemView = departing.itemView, state = departing.state, length = 50 },
		})

		expect(list.virtualizer.getItemLayout(1).length).toBe(50)
		list.destroy()
	end)

	it("keeps absolute and relative offset movements anchored across measurements", function()
		local list = createList(values(100), { layout = measuredLayout(), overscan = 100 })
		list.activate()

		expect(list.virtualizer.scrollToOffset(50).scrollState.scrollOffset).toBe(50)
		local afterAbsolute = list.measure(1, 20)
		expect(afterAbsolute.scrollState.scrollOffset).toBe(60)
		expect(correctionOf(afterAbsolute)).toBe(10)

		expect(list.virtualizer.scrollBy(10).scrollState.scrollOffset).toBe(70)
		local afterRelative = list.measure(2, 20)
		expect(afterRelative.scrollState.scrollOffset).toBe(80)
		expect(correctionOf(afterRelative)).toBe(10)
		list.destroy()
	end)

	it("anchors a restored snapshot at its landed viewport position", function()
		local list = createList(values(100), { layout = measuredLayout(), overscan = 100 })
		list.activate()
		list.virtualizer.scrollToOffset(50)
		local snapshot = list.virtualizer.captureScrollAnchorSnapshot()
		list.virtualizer.scrollToOffset(0)

		expect(list.virtualizer.restoreScrollAnchorSnapshot(snapshot).scrollState.scrollOffset).toBe(50)
		local refined = list.measure(1, 20)
		expect(refined.scrollState.scrollOffset).toBe(60)
		expect(correctionOf(refined)).toBe(10)
		list.destroy()
	end)

	it("anchors the visible window when an above-viewport overscan item resizes", function()
		local list = createList(values(100), { layout = measuredLayout(), overscan = 2 })
		list.activate()
		list.virtualizer.setScrollOffset(100)
		expect(list.virtualizer.getCurrent().visibleRange).toEqual({ firstIndex = 11, lastIndex = 12 })
		expect(list.virtualizer.getCurrent().mountedRange).toEqual({ firstIndex = 9, lastIndex = 14 })

		local record = list.measure(10, 14)

		expect(record.scrollState.scrollOffset).toBe(104)
		expect(record.visibleRange).toEqual({ firstIndex = 11, lastIndex = 12 })
		expect(correctionOf(record)).toBe(4)
		list.destroy()
	end)

	it("does not correct scroll for measurements inside or below the visible window", function()
		local list = createList(values(100), { layout = measuredLayout(), overscan = 100 })
		list.activate()
		list.virtualizer.setScrollOffset(100)

		local inside = list.measure(12, 14)
		local below = list.measure(50, 20)

		expect(inside.scrollState.scrollOffset).toBe(100)
		expect(correctionOf(inside)).toBeNil()
		expect(below.scrollState.scrollOffset).toBe(100)
		expect(correctionOf(below)).toBeNil()
		list.destroy()
	end)

	it("settles a Content-length-only measurement without changing ranges or earlier rows", function()
		local list = createList(values(100), { layout = measuredLayout(), overscan = 100 })
		local before = list.activate()
		local earlierState = list.state("item-10")

		local record = list.measure(50, 20)

		expect(record.contentLength).toBe(1010)
		expect(record.visibleRange).toEqual(before.visibleRange)
		expect(record.mountedRange).toEqual(before.mountedRange)
		expect(list.state("item-10")).toBe(earlierState)
		expect(list.state("item-51").itemLayout.startOffset).toBe(510)
		list.destroy()
	end)

	it("updates the mounted range when measured geometry shifts the visible range", function()
		local list = createList(values(100), { layout = measuredLayout(), overscan = 2 })
		local before = list.activate()
		expect(before.visibleRange).toEqual({ firstIndex = 1, lastIndex = 2 })
		expect(before.mountedRange).toEqual({ firstIndex = 1, lastIndex = 4 })

		local record = list.measure(1, 30)

		expect(record.visibleRange).toEqual({ firstIndex = 1, lastIndex = 1 })
		expect(record.mountedRange).toEqual({ firstIndex = 1, lastIndex = 3 })
		expect(list.keys()).toEqual({ "item-1", "item-2", "item-3" })
		list.destroy()
	end)

	it("returns measurement diagnostics and correction in transaction order", function()
		local list = createList(values(100), {
			layout = measuredLayout(),
			overscan = 100,
			diagnostics = function() end,
		})
		list.activate()
		list.virtualizer.setScrollOffset(50)

		local record = list.measure(1, 20)
		local order = {}
		for _, event in record.diagnostics do
			if
				event.kind == "measurementsProcessingStarted"
				or event.kind == "scrollCorrection"
				or event.kind == "measurementsProcessed"
			then
				table.insert(order, event.kind)
			end
		end

		expect(record.scrollState.scrollOffset).toBe(60)
		expect(order).toEqual({
			"measurementsProcessingStarted",
			"scrollCorrection",
			"measurementsProcessed",
		})
		list.destroy()
	end)
end)

describe("Virtualizer Programmatic targets", function()
	it("keeps Programmatic targets authoritative through host observation and refinement", function()
		local list = createList(values(8), { overscan = 8, layout = measuredLayout() })
		list.activate()
		expect(list.virtualizer.scrollToIndex(5, ScrollAlignment.Center).scrollState.scrollOffset).toBe(35)
		list.virtualizer.observeScrollOffset({ kind = ScrollObservationKind.Programmatic, offset = 35 })

		local refined = list.measure(1, 20)

		expect(refined.scrollState.scrollOffset).toBe(45)
		expect(correctionOf(refined)).toBe(10)
		list.destroy()
	end)

	it("lets a newer target supersede and User observation cancel the previous target", function()
		local list = createList(values(8), { overscan = 8, layout = measuredLayout() })
		list.activate()
		list.virtualizer.scrollToIndex(3)
		list.virtualizer.scrollToIndex(6, ScrollAlignment.End)
		expect(list.measure(1, 20).scrollState.scrollOffset).toBe(50)

		list.virtualizer.observeScrollOffset({ kind = ScrollObservationKind.User, offset = 20 })
		local afterUser = list.measure(6, 20)

		expect(afterUser.scrollState.scrollOffset).toBe(20)
		expect(correctionOf(afterUser)).toBeNil()
		list.destroy()
	end)

	for _, case in
		{
			{ name = "start", alignment = ScrollAlignment.Start, initial = 40, refined = 50 },
			{ name = "center", alignment = ScrollAlignment.Center, initial = 35, refined = 45 },
			{ name = "end", alignment = ScrollAlignment.End, initial = 30, refined = 40 },
		}
	do
		it(`preserves {case.name} target alignment while measurements refine geometry`, function()
			local list = createList(values(8), { overscan = 8, layout = measuredLayout() })
			list.activate()
			expect(list.virtualizer.scrollToIndex(5, case.alignment).scrollState.scrollOffset).toBe(case.initial)
			expect(list.measure(1, 20).scrollState.scrollOffset).toBe(case.refined)
			list.destroy()
		end)
	end

	it("uses start alignment by default and accepts User observation after the command", function()
		local list = createList(values(8), { overscan = 8, layout = measuredLayout() })
		list.activate()
		expect(list.virtualizer.scrollToIndex(5).scrollState.scrollOffset).toBe(40)
		expect(list.measure(1, 20).scrollState.scrollOffset).toBe(50)

		list.virtualizer.observeScrollOffset({ kind = ScrollObservationKind.User, offset = 10 })
		expect(list.virtualizer.getCurrent().scrollState.scrollOffset).toBe(10)
		expect(list.measure(6, 20).scrollState.scrollOffset).toBe(10)
		list.destroy()
	end)

	it("reclamps an end-aligned final target as measured Content grows", function()
		local list = createList(values(5), { overscan = 5, layout = measuredLayout() })
		list.activate()
		expect(list.virtualizer.scrollToIndex(5, ScrollAlignment.End).scrollState.scrollOffset).toBe(30)

		local refined = list.measure(5, 30)

		expect(refined.contentLength).toBe(70)
		expect(refined.scrollState.scrollOffset).toBe(50)
		list.destroy()
	end)

	it("uses current short-Content placement while target measurements grow the Canvas", function()
		local list = createList(values(3), {
			overscan = 3,
			layout = measuredLayout(),
			contentAlignment = ScrollAlignment.Center,
		})
		list.activate(50)
		expect(list.virtualizer.getCurrent().contentStartOffset).toBe(10)
		expect(list.virtualizer.scrollToIndex(2, ScrollAlignment.Center).scrollState.scrollOffset).toBe(0)

		list.measure(1, 30)
		list.measure(2, 30)
		local grown = list.measure(3, 30)

		expect(grown.contentStartOffset).toBe(0)
		expect(grown.contentLength).toBe(90)
		expect(grown.scrollState.scrollOffset).toBe(20)
		list.destroy()
	end)

	it("preserves a target through viewport and inset changes", function()
		local list = createList(values(8), {
			overscan = 8,
			layout = measuredLayout(),
			pinnedStartItem = pinnedStart(),
		})
		list.activate()
		list.virtualizer.scrollToIndex(5, ScrollAlignment.Center)

		expect(list.virtualizer.setViewportSize(30, 100).scrollState.scrollOffset).toBe(35)
		expect(list.measurePinned(PinnedPosition.Start, 10).scrollState.scrollOffset).toBe(35)
		expect(list.measure(1, 20).scrollState.scrollOffset).toBe(45)
		list.destroy()
	end)

	it("follows a target key when it moves and cancels when it is removed", function()
		local source = sequence(values(8))
		local list = createList({}, { dataSource = source, overscan = 8, layout = measuredLayout() })
		list.activate()
		list.virtualizer.scrollToIndex(5)

		source.moveItem(5, 3)
		expect(list.virtualizer.getCurrent().scrollState.scrollOffset).toBe(20)

		source.remove(3)
		local afterRemoval = list.measureView(list.find("item-8"), 20)
		expect(correctionOf(afterRemoval)).toBeNil()
		list.destroy()
	end)
end)

describe("Virtualizer data changes", function()
	it("applies a data batch with one anchored record", function()
		local source = sequence(values(20))
		local list = createList({}, { dataSource = source, overscan = 2 })
		list.activate()
		list.virtualizer.setScrollOffset(50)
		local records = list.counts.records

		source.prepend({ id = "inserted", kind = "row" })

		local record = list.virtualizer.getCurrent()
		expect(list.counts.records).toBe(records + 1)
		expect(record.scrollState.scrollOffset).toBe(60)
		expect(record.visibleRange).toEqual({ firstIndex = 7, lastIndex = 8 })
		list.destroy()
	end)

	it("returns one corrected record with the data change and its correction", function()
		local source = sequence(values(20))
		local list = createList({}, { dataSource = source, overscan = 0 })
		list.activate()
		list.virtualizer.setScrollOffset(50)

		source.prepend({ id = "inserted", kind = "row" })

		local record = list.virtualizer.getCurrent()
		expect(record.scrollState.scrollOffset).toBe(60)
		expect(record.mountedRange.firstIndex).toBe(7)
		expect(source.getItemKey(7)).toBe("item-6")
		expect(correctionOf(record)).toBe(10)
		list.destroy()
	end)

	it("reports the Item Anchor correction holds as it moves", function()
		local source = sequence(values(20))
		local list = createList({}, { dataSource = source, overscan = 0 })
		list.activate()

		local scrolled = list.virtualizer.setScrollOffset(50)
		expect(scrolled.scrollAnchor).toEqual({ index = 6, alignment = ScrollAlignment.Start })

		source.prepend({ id = "inserted", kind = "row" })
		expect(list.virtualizer.getCurrent().scrollAnchor).toEqual({ index = 7, alignment = ScrollAlignment.Start })

		local targeted = list.virtualizer.scrollToIndex(12, ScrollAlignment.End)
		expect(targeted.scrollAnchor).toEqual({ index = 12, alignment = ScrollAlignment.End })
		list.destroy()
	end)

	it("preserves the anchor and existing Assignments for a prepended deque page", function()
		local source = DataSource.deque(values(20), function(item)
			return item.id
		end)
		local list = createList({}, { dataSource = source, overscan = 20 })
		list.activate()
		list.virtualizer.setScrollOffset(50)
		local anchorAssignment = list.assignment("item-6")

		source.pushFrontMany({
			{ id = "page-1", kind = "row" },
			{ id = "page-2", kind = "row" },
			{ id = "page-3", kind = "row" },
		})

		local record = list.virtualizer.getCurrent()
		expect(record.scrollState.scrollOffset).toBe(80)
		expect(record.visibleRange).toEqual({ firstIndex = 9, lastIndex = 10 })
		expect(list.virtualizer.captureScrollAnchorSnapshot().anchorKey).toBe("item-6")
		expect(list.assignment("item-6")).toBe(anchorAssignment)
		expect(list.assignment("page-1")).never.toBeNil()
		list.destroy()
	end)

	it("applies a multi-change transaction atomically with precise Assignment changes", function()
		local source = sequence(values(6))
		local list = createList({}, { dataSource = source, overscan = 6 })
		list.activate()
		local item1 = list.assignment("item-1")
		local item2 = list.assignment("item-2")
		local records = list.counts.records

		source.transaction(function()
			source.prepend({ id = "inserted", kind = "row" })
			source.setItem(3, { id = "item-2", kind = "row", label = "updated" })
		end)

		expect(list.counts.records).toBe(records + 1)
		expect(list.assignment("inserted")).never.toBeNil()
		expect(list.assignment("item-1")).toBe(item1)
		expect(list.assignment("item-2")).never.toBe(item2)
		expect(list.assignment("item-2").value.label).toBe("updated")
		list.destroy()
	end)

	it("replaces the Assignment for a same-reference value update", function()
		local source = sequence(values(4))
		local list = createList({}, { dataSource = source, overscan = 4 })
		list.activate()
		local value = source.getItem(2)
		local before = list.assignment("item-2")

		value.label = "same reference"
		source.setItem(2, value)

		expect(list.assignment("item-2")).never.toBe(before)
		expect(list.assignment("item-2").value.label).toBe("same reference")
		list.destroy()
	end)

	it("keeps visible Assignments across append and anchors insert-remove pairs above the viewport", function()
		local source = sequence(values(8))
		local list = createList({}, { dataSource = source, overscan = 2 })
		list.activate()
		local first = list.assignment("item-1")

		source.append({ id = "appended", kind = "row" })
		expect(list.assignment("item-1")).toBe(first)

		list.virtualizer.setScrollOffset(40)
		source.prepend({ id = "inserted", kind = "row" })
		expect(list.virtualizer.getCurrent().scrollState.scrollOffset).toBe(50)
		expect(list.find("item-5")).never.toBeNil()

		source.remove(1)
		expect(list.virtualizer.getCurrent().scrollState.scrollOffset).toBe(40)
		expect(list.find("item-5")).never.toBeNil()
		list.destroy()
	end)

	it("keeps mounted Views for mutations beyond the mounted range", function()
		local source = sequence(values(20))
		local list = createList({}, { dataSource = source, overscan = 0 })
		list.activate()
		local mountedViews = list.virtualizer.getCurrent().mountedViews
		local itemReads = list.counts.itemReads

		source.setItem(10, { id = "item-10", kind = "updated" })
		expect(list.virtualizer.getCurrent().mountedViews).toBe(mountedViews)
		source.append({ id = "item-21", kind = "row" })
		expect(list.virtualizer.getCurrent().mountedViews).toBe(mountedViews)
		source.remove(21)
		expect(list.virtualizer.getCurrent().mountedViews).toBe(mountedViews)
		source.moveItem(19, 20)
		expect(list.virtualizer.getCurrent().mountedViews).toBe(mountedViews)
		expect(list.counts.itemReads).toBe(itemReads)
		list.destroy()
	end)

	it("replaces the Assignment when an updated key is mounted", function()
		local source = sequence(values(4))
		local list = createList({}, { dataSource = source, overscan = 0 })
		list.activate()
		local view = list.view("item-1")
		local before = list.assignment("item-1")

		source.setItem(1, { id = "item-1", kind = "row", label = "updated" })

		expect(list.view("item-1")).toBe(view)
		expect(list.assignment("item-1")).never.toBe(before)
		expect(list.assignment("item-1").value.label).toBe("updated")
		list.destroy()
	end)

	it("rebinds a mounted key in an Update batch larger than the mounted range", function()
		local items = values(20)
		local source = manualSource(items)
		local list = createList({}, { dataSource = source, overscan = 0 })
		list.activate()
		local before = list.assignment("item-1")

		items[1] = { id = "item-1", kind = "row", label = "updated" }
		source.emit({
			changes = { { type = DataSourceChangeType.Update, keys = { "item-10", "item-11", "item-1" } } },
			previousItemCount = 20,
			itemCount = 20,
		})

		expect(list.assignment("item-1")).never.toBe(before)
		expect(list.assignment("item-1").value.label).toBe("updated")
		list.destroy()
	end)

	it("bounds key reads for single append, prepend, and update changes", function()
		local function keyReadsForChange(applyChange)
			local items = values(1000)
			local source = manualSource(items)
			local list = createList({}, { dataSource = source, overscan = 0 })
			list.activate()
			list.virtualizer.setScrollOffset(100)
			local keyReads = list.counts.keyReads

			local change, previousItemCount = applyChange(items)
			source.emit({ changes = { change }, previousItemCount = previousItemCount, itemCount = #items })
			local reads = list.counts.keyReads - keyReads
			list.destroy()
			return reads
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
		local source = sequence(values(3))
		local list = createList({}, { dataSource = source, layout = measuredLayout(), overscan = 5 })
		list.activate(30)
		list.measure(2, 24)

		source.transaction(function()
			source.append({ id = "item-4", kind = "row" })
			source.prepend({ id = "inserted", kind = "row" })
		end)

		expect(list.state("item-2").index).toBe(3)
		expect(list.state("item-2").itemLayout.length).toBe(24)
		expect(list.virtualizer.getCurrent().contentLength).toBe(64)
		list.destroy()
	end)

	it("preserves measured geometry and the viewport anchor across a full reorder", function()
		local source = sequence(values(10))
		local list = createList({}, { dataSource = source, layout = measuredLayout(), overscan = 10 })
		list.activate()
		list.measure(3, 16)
		list.virtualizer.setScrollOffset(20)

		source.reorder({
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

		local record = list.virtualizer.getCurrent()
		expect(list.state("item-3").index).toBe(8)
		expect(list.state("item-3").itemLayout.length).toBe(16)
		expect(record.scrollState.scrollOffset).toBe(70)
		expect(correctionOf(record)).toBe(50)
		list.destroy()
	end)

	it("does not correct scroll for an in-place update with unchanged anchor geometry", function()
		local source = sequence(values(30))
		local list = createList({}, { dataSource = source, layout = measuredLayout(), overscan = 0 })
		list.activate()
		list.virtualizer.setScrollOffset(100)

		source.setItem(11, { id = "item-11", kind = "row", label = "updated" })

		local record = list.virtualizer.getCurrent()
		expect(record.scrollState.scrollOffset).toBe(100)
		expect(list.assignment("item-11").value.label).toBe("updated")
		expect(correctionOf(record)).toBeNil()
		list.destroy()
	end)

	it("swaps DataSources and Layouts as coherent resets", function()
		local list = createList(values(3), { overscan = 0 })
		list.activate()

		local record = list.virtualizer.setDataSourceAndLayout(
			sequence({
				{ id = "next-1", kind = "row" },
				{ id = "next-2", kind = "row" },
				{ id = "next-3", kind = "row" },
				{ id = "next-4", kind = "row" },
			}),
			Layout.uniform({ itemLength = 20 })
		)

		expect(record.contentLength).toBe(80)
		expect(record.visibleRange).toEqual({ firstIndex = 1, lastIndex = 1 })
		expect(record.mountedRange).toEqual({ firstIndex = 1, lastIndex = 1 })
		expect(list.virtualizer.getItemLayout(1).length).toBe(20)
		expect(record.scrollState.scrollOffset).toBe(0)
		expect(list.keys()).toEqual({ "next-1" })
		list.destroy()
	end)

	it("swaps DataSources as a reset to the initial position without inferring key continuity", function()
		local list = createList(values(30), { overscan = 0 })
		list.activate()
		list.virtualizer.setScrollOffset(100)
		local reordered = values(30)
		local anchored = table.remove(reordered, 11)
		table.insert(reordered, 1, anchored)

		local record = list.virtualizer.setDataSource(sequence(reordered))

		expect(record.scrollState.scrollOffset).toBe(0)
		expect(record.contentLength).toBe(300)
		expect(record.visibleRange).toEqual({ firstIndex = 1, lastIndex = 2 })
		expect(list.keys()).toEqual({ "item-11", "item-1" })
		expect(correctionOf(record)).toBeNil()
		list.destroy()
	end)
end)

describe("Virtualizer Data prefetch", function()
	it("reports initial Data prefetch demand and invalidates it on destroy", function()
		local list = createList(values(20), { overscan = 0, dataPrefetch = { endItems = 2 } })

		local record = list.activate()

		expect(record.dataPrefetchRequests).toHaveLength(1)
		local request = record.dataPrefetchRequests[1]
		expect(request.edge).toBe("end")
		expect(request.range).toEqual({ firstIndex = 3, lastIndex = 4 })
		expect(request.isCurrent()).toBe(true)
		list.destroy()
		expect(request.isCurrent()).toBe(false)
	end)

	it("supersedes equal-range Data prefetch requests when replacing the DataSource", function()
		local list = createList(values(20), { overscan = 0, dataPrefetch = { endItems = 2 } })
		local initialRequest = list.activate().dataPrefetchRequests[1]

		local replacement = list.virtualizer.setDataSource(sequence(values(20)))

		local replacementRequest = replacement.dataPrefetchRequests[#replacement.dataPrefetchRequests]
		expect(replacementRequest.range).toEqual(initialRequest.range)
		expect(initialRequest.isCurrent()).toBe(false)
		expect(replacementRequest.isCurrent()).toBe(true)
		list.destroy()
	end)
end)

describe("Virtualizer mounted rows", function()
	it("publishes one complete mounted View per row", function()
		local list = createList({ { id = "a" } }, { overscan = 0 })
		local record = list.activate()

		expect(record.mountedViews).toEqual({
			{ itemView = list.view("a"), state = list.state("a") },
		})
		expect(list.state("a").index).toBe(1)
		expect(list.state("a").assignment.value).toEqual({ id = "a" })
		expect(list.state("a").viewportPlacement).toBeNil()
		list.destroy()
	end)

	it("does no Recycling work and no data reads while geometry keeps the rows", function()
		local list = createList(values(20), { overscan = 0 })
		list.activate()
		list.virtualizer.setScrollOffset(1)
		local before = list.virtualizer.getCurrent().mountedViews
		local binds = list.counts.binds
		local itemReads = list.counts.itemReads

		list.virtualizer.setScrollOffset(2)

		expect(list.virtualizer.getCurrent().mountedViews).toBe(before)
		expect(list.counts.binds).toBe(binds)
		expect(list.counts.itemReads).toBe(itemReads)
		list.destroy()
	end)

	it("binds only the entered and departed edges when the range slides", function()
		local list = createList(values(4), { overscan = 0 })
		local before = list.activate(30).mountedViews
		local view2 = list.view("item-2")
		local state2 = list.state("item-2")
		local itemReads = list.counts.itemReads
		local viewTypes = list.counts.viewTypes

		local after = list.virtualizer.setScrollOffset(10).mountedViews

		expect(list.keys()).toEqual({ "item-2", "item-3", "item-4" })
		expect(list.counts.itemReads - itemReads).toBe(1)
		expect(list.counts.viewTypes - viewTypes).toBe(1)
		expect(after[1]).toBe(before[2])
		expect(after[2]).toBe(before[3])
		expect(list.view("item-2")).toBe(view2)
		expect(list.state("item-2")).toBe(state2)
		expect(list.view("item-1")).toBeNil()
		list.destroy()
	end)

	it("binds a disjoint jump as one release and acquire exchange", function()
		local list = createList(values(20), { overscan = 0 })
		list.activate(30)
		local binds = list.counts.binds

		list.virtualizer.setScrollOffset(90)

		expect(list.keys()).toEqual({ "item-10", "item-11", "item-12" })
		expect(list.counts.binds - binds).toBe(1)
		expect(list.counts.created).toBe(3)
		expect(list.state("item-10").itemLayout.startOffset).toBe(90)
		list.destroy()
	end)

	it("republishes placement without replacing the Assignment when a row resizes", function()
		local list = createList(values(4), { layout = measuredLayout(), overscan = 0 })
		list.activate(30)
		local view2 = list.view("item-2")
		local assignment2 = list.assignment("item-2")
		local state1 = list.state("item-1")
		local binds = list.counts.binds

		list.measure(2, 15)

		expect(list.view("item-2")).toBe(view2)
		expect(list.assignment("item-2")).toBe(assignment2)
		expect(list.state("item-2").itemLayout.length).toBe(15)
		expect(list.state("item-3").itemLayout.startOffset).toBe(25)
		expect(list.state("item-1")).toBe(state1)
		expect(list.counts.binds).toBe(binds)
		list.destroy()
	end)

	it("replaces the Assignment for a same-key update while retaining the View and placement", function()
		local source = sequence({ { id = "a", value = "payload" } })
		local list = createList({}, { dataSource = source, overscan = 0 })
		list.activate()
		local view = list.view("a")
		local before = list.state("a")

		source.setItem(1, { id = "a", value = "changed" })

		local after = list.state("a")
		expect(list.view("a")).toBe(view)
		expect(after.assignment).never.toBe(before.assignment)
		expect(after.assignment.value.value).toBe("changed")
		expect(after.itemLayout).toEqual(before.itemLayout)
		expect(after.canvasPlacement).toEqual(before.canvasPlacement)
		list.destroy()
	end)

	it("retains the Assignment across an index-only change", function()
		local source = sequence({ { id = "z" }, { id = "a", value = "payload" } })
		local list = createList({}, { dataSource = source, overscan = 0 })
		list.activate(10)
		list.virtualizer.setScrollOffset(10)
		local view = list.view("a")
		local assignment = list.assignment("a")
		local binds = list.counts.binds

		source.prepend({ id = "b" })

		expect(list.keys()).toEqual({ "a" })
		expect(list.view("a")).toBe(view)
		expect(list.assignment("a")).toBe(assignment)
		expect((list.assignment("a") :: any).index).toBeNil()
		expect(list.state("a").index).toBe(3)
		expect(list.counts.binds).toBe(binds)
		list.destroy()
	end)

	it("reuses a released compatible ItemView for a replacement key", function()
		local source = sequence({ { id = "a" } })
		local list = createList({}, { dataSource = source, overscan = 0 })
		list.activate()
		local view = list.view("a")

		source.transaction(function()
			source.remove(1)
			source.insert(1, { id = "b" })
		end)

		expect(list.view("b")).toBe(view)
		expect(list.counts.created).toBe(1)
		list.destroy()
	end)

	it("re-reads every payload on refresh", function()
		local list = createList({ { id = "a" } }, { overscan = 0 })
		list.activate()
		local itemReads = list.counts.itemReads
		local viewTypes = list.counts.viewTypes

		list.virtualizer.refresh()

		expect(list.counts.itemReads - itemReads).toBe(1)
		expect(list.counts.viewTypes - viewTypes).toBe(1)
		expect(list.keys()).toEqual({ "a" })
		list.destroy()
	end)

	it("releases every row while inactive and rebinds without key reads on return", function()
		local list = createList({ { id = "a" }, { id = "b" } }, { overscan = 0 })
		list.activate()

		expect(list.virtualizer.setActive(false).mountedViews).toEqual({})
		list.virtualizer.setActive(false)
		local itemReads = list.counts.itemReads
		local keyReads = list.counts.keyReads

		list.virtualizer.setActive(true)

		expect(list.counts.itemReads - itemReads).toBe(2)
		expect(list.counts.keyReads - keyReads).toBe(0)
		expect(list.keys()).toEqual({ "a", "b" })
		list.destroy()
	end)

	it("binds current keys on return when data changed while inactive", function()
		local source = sequence({ { id = "a" }, { id = "b" } })
		local list = createList({}, { dataSource = source, overscan = 0 })
		list.activate()
		list.virtualizer.setActive(false)

		source.transaction(function()
			source.remove(1)
			source.remove(1)
			source.append({ id = "c" })
			source.append({ id = "d" })
		end)
		expect(list.virtualizer.getCurrent().mountedViews).toEqual({})
		list.virtualizer.setActive(true)

		expect(list.keys()).toEqual({ "c", "d" })
		list.destroy()
	end)

	it("mounts range rows, then retained sticky rows, then pinned rows", function()
		local list = createList({
			{ id = "header", kind = "header" },
			{ id = "a" },
			{ id = "b" },
			{ id = "c" },
			{ id = "d" },
		}, {
			overscan = 0,
			isItemStickyHeader = function(key)
				return key == "header"
			end,
			pinnedStartItem = pinnedStart(),
		})
		list.activate()
		list.virtualizer.setScrollOffset(30)

		expect(list.keys()).toEqual({ "c", "d", "header", "$start" })
		local pinned = list.state("$start")
		expect(list.view("$start").viewType).toBe("pin")
		expect(pinned.index).toBeNil()
		expect(pinned.pinnedPosition).toBe(PinnedPosition.Start)
		expect(pinned.viewportPlacement.viewportRelative).toBe(true)
		local header = list.state("header")
		expect(header.index).toBe(1)
		expect(header.viewportPlacement.viewportRelative).toBe(true)
		local headerOffset = header.canvasPlacement.mainAxisOffset

		list.virtualizer.setScrollOffset(31)

		expect(list.state("header").canvasPlacement.mainAxisOffset).toBe(headerOffset + 1)
		expect(list.state("header").viewportPlacement.mainAxisOffset).toBe(header.viewportPlacement.mainAxisOffset)
		expect(list.assignment("header")).toBe(header.assignment)
		list.destroy()
	end)

	it("combines ordinary, retained sticky, and pinned items in one record", function()
		local list = createList({
			{ id = "header", kind = "header" },
			{ id = "row-1", kind = "row" },
			{ id = "row-2", kind = "row" },
			{ id = "row-3", kind = "row" },
		}, {
			overscan = 0,
			isItemStickyHeader = function(key)
				return string.find(key, "header", 1, true) ~= nil
			end,
			pinnedStartItem = pinnedStart(),
		})
		list.activate(10)
		list.virtualizer.setScrollOffset(21)

		expect(list.find("row-3")).never.toBeNil()
		expect(list.find("header")).never.toBeNil()
		expect(list.find("$start")).never.toBeNil()
		list.destroy()
	end)

	it("hands off the sticky header between sections without rebinding rows", function()
		local list = createList({
			{ id = "header-a", kind = "header" },
			{ id = "row-a", kind = "row" },
			{ id = "header-b", kind = "header" },
			{ id = "row-b", kind = "row" },
		}, {
			overscan = 4,
			isItemStickyHeader = function(key)
				return string.find(key, "header", 1, true) ~= nil
			end,
		})
		list.activate(10)
		list.virtualizer.setScrollOffset(11)
		expect(list.state("header-a").viewportPlacement).never.toBeNil()
		expect(list.state("header-b").viewportPlacement).toBeNil()
		local assignments = {}
		for _, key in { "header-a", "row-a", "header-b", "row-b" } do
			assignments[key] = list.assignment(key)
		end

		list.virtualizer.setScrollOffset(21)

		expect(list.state("header-a").viewportPlacement).toBeNil()
		expect(list.state("header-b").viewportPlacement).never.toBeNil()
		for key, assignment in assignments do
			expect(list.assignment(key)).toBe(assignment)
		end
		list.destroy()
	end)

	it("keeps mounted Views and Assignments when a placement policy is restated", function()
		local list = createList({
			{ id = "header", kind = "header" },
			{ id = "row", kind = "row" },
		}, {
			overscan = 2,
			isItemStickyHeader = function(key)
				return key == "header"
			end,
		})
		local before = list.activate(10)
		local assignments = {}
		for _, mountedView in before.mountedViews do
			assignments[mountedView.state.assignment.key] = mountedView.state.assignment
		end

		local record = list.virtualizer.setPolicy({
			overscan = 2,
			pinnedItems = {
				isItemStickyHeader = function(key)
					return key == "header"
				end,
			},
			preserveScrollPositionOnChange = true,
		})

		expect(record.visibleRange).toEqual(before.visibleRange)
		expect(record.mountedRange).toEqual(before.mountedRange)
		for key, assignment in assignments do
			expect(list.assignment(key)).toBe(assignment)
		end
		list.destroy()
	end)

	it("restates every row when a pinned measurement shifts the Content start", function()
		local list = createList(values(6), { overscan = 6, pinnedStartItem = pinnedStart() })
		list.activate()
		local view = list.view("item-1")
		local assignment = list.assignment("item-1")

		list.measurePinned(PinnedPosition.Start, 5)
		local record = list.virtualizer.setScrollOffset(1)

		expect(record.contentStartOffset).toBe(5)
		expect(list.state("$start").itemLayout.length).toBe(5)
		expect(list.state("item-1").contentStartOffset).toBe(5)
		expect(list.view("item-1")).toBe(view)
		expect(list.assignment("item-1")).toBe(assignment)
		list.destroy()
	end)

	it("rejects duplicate keys before mutating the Recycling scope", function()
		local list = createList({}, { dataSource = manualSource({ { id = "same" }, { id = "same" } }), overscan = 0 })
		list.virtualizer.activate()

		expect(function()
			list.virtualizer.setViewportSize(20, 100)
		end).toThrow('duplicate key "same"')
		expect(list.counts.created).toBe(0)
		expect(list.counts.binds).toBe(0)
		list.destroy()
	end)

	it("releases Views on destruction and rejects later commands", function()
		local list = createList({ { id = "a" } }, { overscan = 0 })
		list.activate()
		local view = list.view("a")

		list.virtualizer.destroy()
		list.virtualizer.destroy()

		expect(list.scope.bind({ releases = {}, requests = { { viewType = "row" } } }).acquired).toEqual({ view })
		expect(function()
			list.virtualizer.refresh()
		end).toThrow("cannot dispatch after destruction")
		expect(list.counts.created).toBe(1)
		list.scope.dispose()
		expect(list.counts.destroyed).toBe(1)
	end)
end)
