local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local AutoScrollPolicy = require(Src.Core.Enums.AutoScrollPolicy)
local DataSource = require(Src.Core.DataSource)
local Layout = require(Src.Core.Layout)
local PinnedPosition = require(Src.Core.Enums.PinnedPosition)
local ScrollAlignment = require(Src.Core.Enums.ScrollAlignment)
local ScrollObservationKind = require(Src.Core.Enums.ScrollObservationKind)
local createRecyclingScope = require(Src.Core.Recycling.RecyclingScope)
local createVirtualizer = require(Src.Core.Virtualizer.Virtualizer)

local function createHarness()
	local nextItemView = 0
	local synchronizations = 0
	local scope = createRecyclingScope({
		adapter = {
			create = function()
				nextItemView += 1
				return { id = nextItemView }
			end,
			destroy = function() end,
		},
	})
	local originalBind = scope.bind
	scope.bind = function(binding)
		synchronizations += 1
		return originalBind(binding)
	end
	local items = {}
	for index = 1, 20 do
		items[index] = { id = `item-{index}` }
	end
	local virtualizer = createVirtualizer({
		dataSource = DataSource.snapshot(items, function(item)
			return item.id
		end),
		layout = Layout.uniform({ itemLength = 10 }),
		recyclingScope = scope,
		getItemViewType = function()
			return "row"
		end,
		overscan = 3,
	})
	return {
		virtualizer = virtualizer,
		scope = scope,
		getSynchronizations = function()
			return synchronizations
		end,
	}
end

local function createPolicyHarness(options)
	options = options or {}
	local scope = createRecyclingScope({
		adapter = {
			create = function()
				return {}
			end,
			destroy = function() end,
		},
	})
	local items = {}
	for index = 1, 20 do
		items[index] = { id = `item-{index}` }
	end
	local source = DataSource.sequence(items, function(item)
		return item.id
	end)
	local updates = {}
	local virtualizer = createVirtualizer({
		dataSource = source,
		layout = options.layout or Layout.uniform({ itemLength = 10 }),
		recyclingScope = scope,
		getItemViewType = function()
			return "row"
		end,
		overscan = 0,
		contentAlignment = options.contentAlignment,
		initialScrollAlignment = options.initialScrollAlignment,
		autoScrollOnChange = options.autoScrollOnChange,
		autoScrollThreshold = options.autoScrollThreshold,
		startReachedEnabled = options.startReachedEnabled,
		endReachedEnabled = options.endReachedEnabled,
		onTransaction = function(_, current)
			table.insert(updates, current)
		end,
	})
	return {
		virtualizer = virtualizer,
		source = source,
		updates = updates,
		destroy = function()
			virtualizer.destroy()
			scope.dispose()
		end,
	}
end

local PINNED_ITEM_LENGTH = 44
local PINNED_START_LENGTH = 34

local function createPinnedHarness()
	local items = {}
	for section = 1, 6 do
		table.insert(items, { id = `header-{section}`, sticky = true })
		for row = 1, 5 do
			table.insert(items, { id = `row-{section}-{row}` })
		end
	end
	local nextItemView = 0
	local scope = createRecyclingScope({
		adapter = {
			create = function()
				nextItemView += 1
				return { id = nextItemView }
			end,
			destroy = function() end,
		},
	})
	local layout = Layout.uniform({ itemLength = PINNED_ITEM_LENGTH })
	local virtualizer = createVirtualizer({
		dataSource = DataSource.snapshot(items, function(item)
			return item.id
		end),
		layout = layout,
		recyclingScope = scope,
		getItemViewType = function()
			return "row"
		end,
		overscan = 2,
		isItemStickyHeader = function(key)
			return string.find(key, "header", 1, true) ~= nil
		end,
		pinnedStartItem = {
			key = "$toolbar",
			value = { id = "$toolbar" },
			itemViewType = "row",
		},
	})
	virtualizer.activate()
	virtualizer.setViewportSize(560, 420)
	virtualizer.observeScrollOffset({
		kind = ScrollObservationKind.Programmatic,
		offset = 0,
	})
	return {
		virtualizer = virtualizer,
		measurePinnedStart = function()
			for _, mountedView in virtualizer.getCurrent().mountedViews do
				local itemView = mountedView.itemView
				local state = mountedView.state
				if state ~= nil and state.pinnedPosition == PinnedPosition.Start then
					virtualizer.submitMeasurements({
						{
							itemView = itemView,
							state = state,
							length = PINNED_START_LENGTH,
						},
					})
					return
				end
			end
			error("Virtualizer test: no pinned start View state was published")
		end,
		-- Canvas-placed data items must sit at their layout offset shifted by the
		-- current Content-start offset. A stale intent reads back as a gap or an
		-- overlap against the pinned start item.
		getMisplacedCanvasItems = function()
			local current = virtualizer.getCurrent()
			local contentStartOffset = current.contentStartOffset
			local misplaced = {}
			for _, mountedView in current.mountedViews do
				local intent = mountedView.state
				if intent ~= nil and intent.index ~= nil and intent.canvasPlacement.mainAxisOffset == nil then
					local applied = intent.itemLayout.startOffset + intent.contentStartOffset
					local expected = intent.itemLayout.startOffset + contentStartOffset
					if applied ~= expected then
						table.insert(misplaced, `{intent.assignment.key} at {applied} instead of {expected}`)
					end
				end
			end
			table.sort(misplaced)
			return misplaced
		end,
		destroy = function()
			virtualizer.destroy()
			scope.dispose()
			layout.destroy()
		end,
	}
end

describe("Virtualizer pinned Content insets", function()
	it("does not scroll when a measured pinned start item insets Content at rest", function()
		local harness = createPinnedHarness()
		harness.measurePinnedStart()

		local current = harness.virtualizer.getCurrent()
		expect(current.contentStartOffset).toBe(PINNED_START_LENGTH)
		expect(current.scrollState.scrollOffset).toBe(0)
		local header = nil
		for _, mountedView in current.mountedViews do
			if mountedView.state.assignment.key == "header-1" then
				header = mountedView.state
				break
			end
		end
		assert(header ~= nil, "Virtualizer test: header-1 was not mounted")
		expect(header.viewportPlacement).toBeNil()
		expect(harness.getMisplacedCanvasItems()).toEqual({})
		harness.destroy()
	end)

	it("returns updated mounted View states when a measured pinned item insets the Content", function()
		local harness = createPinnedHarness()
		expect(harness.virtualizer.getCurrent().contentStartOffset).toBe(0)

		harness.measurePinnedStart()

		expect(harness.virtualizer.getCurrent().contentStartOffset).toBe(PINNED_START_LENGTH)
		expect(harness.getMisplacedCanvasItems()).toEqual({})
		harness.destroy()
	end)

	it("keeps Canvas placements inset while scrolling across sticky sections", function()
		local harness = createPinnedHarness()
		harness.measurePinnedStart()

		for _, offset in { 1, 20, 44, 88, 264, 500, 900, 400, 88, 1, 0 } do
			harness.virtualizer.setScrollOffset(offset)
			expect(harness.getMisplacedCanvasItems()).toEqual({})
		end

		harness.destroy()
	end)
end)

describe("Virtualizer command composition", function()
	it("publishes a complete record after a data mutation", function()
		local scope = createRecyclingScope({
			adapter = {
				create = function()
					return {}
				end,
				destroy = function() end,
			},
		})
		local items = {}
		for index = 1, 20 do
			items[index] = { id = `item-{index}` }
		end
		local source = DataSource.sequence(items, function(item)
			return item.id
		end)
		local records = {}
		local virtualizer = createVirtualizer({
			dataSource = source,
			layout = Layout.uniform({ itemLength = 10 }),
			recyclingScope = scope,
			getItemViewType = function()
				return "row"
			end,
			overscan = 0,
			onTransaction = function(_, current)
				table.insert(records, current)
			end,
		})
		virtualizer.setViewportSize(20, 100)
		virtualizer.activate()
		virtualizer.scrollToIndex(6, ScrollAlignment.Start)
		table.clear(records)

		source.prepend({ id = "item-0" })

		expect(records).toHaveLength(1)
		expect(records[1]).toBe(virtualizer.getCurrent())
		expect(records[1].mountedViews[1].state.assignment).never.toBeNil()
		virtualizer.destroy()
		scope.dispose()
	end)

	it("owns initial alignment and orders Content notification before reached-edge notification", function()
		local harness = createPolicyHarness({
			initialScrollAlignment = ScrollAlignment.End,
			endReachedEnabled = true,
		})
		harness.virtualizer.setViewportSize(20, 100)
		local update = harness.virtualizer.activate()

		expect(update.scrollState.scrollOffset).toBe(180)
		expect(update.contentLengthChanged).toBe(true)
		expect(update.endReached).toBe(true)
		harness.destroy()
	end)

	it("follows the end after appended Content settles", function()
		local harness = createPolicyHarness({
			initialScrollAlignment = ScrollAlignment.End,
			autoScrollOnChange = AutoScrollPolicy.WhenAtEnd,
		})
		harness.virtualizer.setViewportSize(20, 100)
		harness.virtualizer.activate()

		harness.source.append({ id = "item-21" })

		expect(harness.virtualizer.getCurrent().scrollState.scrollOffset).toBe(190)
		harness.destroy()
	end)

	it("publishes committed layout for every mounted View after measurement and an end-follow correction", function()
		local layout = Layout.measured({ estimatedItemLength = 10 })
		local harness = createPolicyHarness({
			layout = layout,
			initialScrollAlignment = ScrollAlignment.End,
			autoScrollOnChange = AutoScrollPolicy.WhenAtEnd,
		})
		local virtualizer = harness.virtualizer
		virtualizer.setViewportSize(100, 100)
		virtualizer.activate()
		harness.source.append({ id = "item-21" })

		for round = 1, 4 do
			local measurements = {}
			for _, mountedView in virtualizer.getCurrent().mountedViews do
				table.insert(measurements, {
					itemView = mountedView.itemView,
					state = mountedView.state,
					length = 10 + round * 2,
				})
			end
			virtualizer.submitMeasurements(measurements)

			local current = virtualizer.getCurrent()
			local stale = {}
			local indices = {}
			for _, mountedView in current.mountedViews do
				local state = mountedView.state
				local expected = virtualizer.getItemLayout(state.index :: number)
				if
					state.itemLayout.startOffset ~= expected.startOffset
					or state.itemLayout.length ~= expected.length
				then
					table.insert(stale, `{state.assignment.key} at {state.itemLayout.startOffset}`)
				end
				table.insert(indices, state.index)
			end
			expect(stale).toEqual({})
			local expectedIndices = {}
			for index = current.mountedRange.firstIndex, current.mountedRange.lastIndex do
				table.insert(expectedIndices, index)
			end
			expect(indices).toEqual(expectedIndices)
		end
		harness.destroy()
		layout.destroy()
	end)

	it("keeps a callback's end decision through a viewport change until measured Content settles", function()
		local layout = Layout.measured({ estimatedItemLength = 10 })
		local harness = createPolicyHarness({
			layout = layout,
			initialScrollAlignment = ScrollAlignment.End,
			autoScrollOnChange = function(_, before)
				return if before.atEnd then "end" else false
			end,
		})
		local virtualizer = harness.virtualizer
		virtualizer.setViewportSize(50, 100)
		virtualizer.activate()
		harness.source.append({ id = "item-21" })
		virtualizer.setViewportSize(50, 100)

		for round = 1, 3 do
			local measurements = {}
			for _, mountedView in virtualizer.getCurrent().mountedViews do
				table.insert(measurements, {
					itemView = mountedView.itemView,
					state = mountedView.state,
					length = 10 + round * 5,
				})
			end
			virtualizer.submitMeasurements(measurements)
		end

		expect(virtualizer.getCurrent().scrollState.distanceFromEnd).toBe(0)
		harness.destroy()
		layout.destroy()
	end)

	it("keeps initial end alignment through measured Content settling with a callback policy", function()
		local layout = Layout.measured({ estimatedItemLength = 10 })
		local harness = createPolicyHarness({
			layout = layout,
			initialScrollAlignment = ScrollAlignment.End,
			autoScrollOnChange = function(_, before)
				return if before.atEnd then "end" else false
			end,
		})
		local virtualizer = harness.virtualizer
		virtualizer.setViewportSize(50, 100)
		virtualizer.activate()
		expect(virtualizer.getCurrent().scrollState.distanceFromEnd).toBe(0)

		for round = 1, 3 do
			local measurements = {}
			for _, mountedView in virtualizer.getCurrent().mountedViews do
				table.insert(measurements, {
					itemView = mountedView.itemView,
					state = mountedView.state,
					length = 10 + round * 5,
				})
			end
			virtualizer.submitMeasurements(measurements)
		end

		expect(virtualizer.getCurrent().scrollState.distanceFromEnd).toBe(0)
		harness.destroy()
		layout.destroy()
	end)

	it("stops a callback's end decision once the reader scrolls away from the end", function()
		local layout = Layout.measured({ estimatedItemLength = 10 })
		local harness = createPolicyHarness({
			layout = layout,
			initialScrollAlignment = ScrollAlignment.End,
			autoScrollOnChange = function(_, before)
				return if before.atEnd then "end" else false
			end,
		})
		local virtualizer = harness.virtualizer
		virtualizer.setViewportSize(50, 100)
		virtualizer.activate()
		harness.source.append({ id = "item-21" })
		virtualizer.observeScrollOffset({ kind = ScrollObservationKind.User, offset = 100 })

		local measurements = {}
		for _, mountedView in virtualizer.getCurrent().mountedViews do
			table.insert(measurements, {
				itemView = mountedView.itemView,
				state = mountedView.state,
				length = 20,
			})
		end
		virtualizer.submitMeasurements(measurements)

		expect(virtualizer.getCurrent().scrollState.distanceFromEnd).never.toBe(0)
		harness.destroy()
		layout.destroy()
	end)

	local function measureMounted(virtualizer, length)
		local measurements = {}
		for _, mountedView in virtualizer.getCurrent().mountedViews do
			table.insert(measurements, {
				itemView = mountedView.itemView,
				state = mountedView.state,
				length = length,
			})
		end
		virtualizer.submitMeasurements(measurements)
	end

	local function userScroll(virtualizer, offset)
		virtualizer.observeScrollOffset({ kind = ScrollObservationKind.User, offset = offset })
	end

	it("follows Start when Items land at the head within the follow threshold", function()
		local harness = createPolicyHarness({
			autoScrollOnChange = AutoScrollPolicy.WhenAtStart,
			autoScrollThreshold = 15,
		})
		harness.virtualizer.setViewportSize(20, 100)
		harness.virtualizer.activate()
		userScroll(harness.virtualizer, 10)

		harness.source.prepend({ id = "item-0" })

		expect(harness.virtualizer.getCurrent().scrollState.scrollOffset).toBe(0)
		harness.destroy()
	end)

	it("preserves the visible position when Items land at the head beyond the follow threshold", function()
		local harness = createPolicyHarness({
			autoScrollOnChange = AutoScrollPolicy.WhenAtStart,
			autoScrollThreshold = 15,
		})
		harness.virtualizer.setViewportSize(20, 100)
		harness.virtualizer.activate()
		userScroll(harness.virtualizer, 30)

		harness.source.prepend({ id = "item-0" })

		expect(harness.virtualizer.getCurrent().scrollState.scrollOffset).toBe(40)
		harness.destroy()
	end)

	it("keeps Start pinned while prepended measured Content settles", function()
		local layout = Layout.measured({ estimatedItemLength = 10 })
		local harness = createPolicyHarness({
			layout = layout,
			autoScrollOnChange = AutoScrollPolicy.WhenAtStart,
			autoScrollThreshold = 15,
		})
		local virtualizer = harness.virtualizer
		virtualizer.setViewportSize(50, 100)
		virtualizer.activate()
		measureMounted(virtualizer, 10)
		userScroll(virtualizer, 8)

		harness.source.prepend({ id = "item-0" })
		for round = 1, 3 do
			measureMounted(virtualizer, 10 + round * 5)
		end

		expect(virtualizer.getCurrent().scrollState.scrollOffset).toBe(0)
		harness.destroy()
		layout.destroy()
	end)

	it("follows End within the follow threshold, independent of the end-reached threshold", function()
		local harness = createPolicyHarness({
			autoScrollOnChange = AutoScrollPolicy.WhenAtEnd,
			autoScrollThreshold = 15,
		})
		harness.virtualizer.setViewportSize(20, 100)
		harness.virtualizer.activate()
		userScroll(harness.virtualizer, 170)

		harness.source.append({ id = "item-21" })
		expect(harness.virtualizer.getCurrent().scrollState.scrollOffset).toBe(190)

		userScroll(harness.virtualizer, 160)
		harness.source.append({ id = "item-22" })
		expect(harness.virtualizer.getCurrent().scrollState.scrollOffset).toBe(160)
		harness.destroy()
	end)

	it("lands at the final end when scrollToEnd runs in the same frame as an append", function()
		local layout = Layout.measured({ estimatedItemLength = 10 })
		local harness = createPolicyHarness({ layout = layout })
		local virtualizer = harness.virtualizer
		virtualizer.setViewportSize(50, 100)
		virtualizer.activate()
		measureMounted(virtualizer, 10)
		userScroll(virtualizer, 40)

		virtualizer.scrollToEnd()
		harness.source.append({ id = "item-21" })
		harness.source.append({ id = "item-22" })
		for round = 1, 3 do
			measureMounted(virtualizer, 10 + round * 5)
		end

		expect(virtualizer.getCurrent().scrollState.distanceFromEnd).toBe(0)
		harness.destroy()
		layout.destroy()
	end)

	it("ends a scrollToEnd pin once the reader scrolls away", function()
		local layout = Layout.measured({ estimatedItemLength = 10 })
		local harness = createPolicyHarness({ layout = layout })
		local virtualizer = harness.virtualizer
		virtualizer.setViewportSize(50, 100)
		virtualizer.activate()

		virtualizer.scrollToEnd()
		userScroll(virtualizer, 40)
		harness.source.append({ id = "item-21" })
		measureMounted(virtualizer, 20)

		expect(virtualizer.getCurrent().scrollState.scrollOffset).toBe(40)
		harness.destroy()
		layout.destroy()
	end)

	it("returns to Start and stays there with scrollToStart", function()
		local harness = createPolicyHarness({})
		harness.virtualizer.setViewportSize(20, 100)
		harness.virtualizer.activate()
		userScroll(harness.virtualizer, 50)

		harness.virtualizer.scrollToStart()
		harness.source.prepend({ id = "item-0" })

		expect(harness.virtualizer.getCurrent().scrollState.scrollOffset).toBe(0)
		harness.destroy()
	end)

	it("releases end settlement when a Programmatic scroll moves away from the end", function()
		local layout = Layout.measured({ estimatedItemLength = 10 })
		local harness = createPolicyHarness({
			layout = layout,
			initialScrollAlignment = ScrollAlignment.End,
		})
		local virtualizer = harness.virtualizer
		virtualizer.setViewportSize(50, 100)
		virtualizer.activate()

		virtualizer.scrollToOffset(0)
		measureMounted(virtualizer, 20)

		expect(virtualizer.getCurrent().scrollState.scrollOffset).toBe(0)
		harness.destroy()
		layout.destroy()
	end)

	it("keeps End-aligned Content's distance from End when the viewport length changes", function()
		local harness = createPolicyHarness({
			contentAlignment = ScrollAlignment.End,
			initialScrollAlignment = ScrollAlignment.End,
		})
		local virtualizer = harness.virtualizer
		virtualizer.setViewportSize(50, 100)
		virtualizer.activate()

		virtualizer.setViewportSize(30, 100)
		expect(virtualizer.getCurrent().scrollState.distanceFromEnd).toBe(0)

		userScroll(virtualizer, 130)
		virtualizer.setViewportSize(50, 100)
		expect(virtualizer.getCurrent().scrollState.distanceFromEnd).toBe(40)
		expect(virtualizer.getCurrent().scrollState.scrollOffset).toBe(110)
		harness.destroy()
	end)

	it("keeps Start-aligned Content's offset when the viewport length changes away from the end", function()
		local harness = createPolicyHarness({})
		local virtualizer = harness.virtualizer
		virtualizer.setViewportSize(50, 100)
		virtualizer.activate()
		userScroll(virtualizer, 60)

		virtualizer.setViewportSize(30, 100)

		expect(virtualizer.getCurrent().scrollState.scrollOffset).toBe(60)
		harness.destroy()
	end)

	it("keeps a followed End through a viewport length change", function()
		local harness = createPolicyHarness({
			autoScrollOnChange = AutoScrollPolicy.WhenAtEnd,
		})
		local virtualizer = harness.virtualizer
		virtualizer.setViewportSize(50, 100)
		virtualizer.activate()
		userScroll(virtualizer, 150)

		virtualizer.setViewportSize(30, 100)

		expect(virtualizer.getCurrent().scrollState.distanceFromEnd).toBe(0)
		harness.destroy()
	end)

	it("gives an active persistent anchor precedence over follow-end policy", function()
		local harness = createPolicyHarness({
			autoScrollOnChange = function()
				return "end"
			end,
		})
		harness.virtualizer.setViewportSize(20, 100)
		harness.virtualizer.activate()
		harness.virtualizer.scrollToIndex(6, ScrollAlignment.Start)

		harness.source.prepend({ id = "item-0" })

		expect(harness.virtualizer.getCurrent().scrollState.scrollOffset).toBe(60)
		harness.destroy()
	end)

	it("rearms a reached edge once after a structural change", function()
		local harness = createPolicyHarness({
			startReachedEnabled = true,
		})
		harness.virtualizer.setViewportSize(20, 100)
		local activated = harness.virtualizer.activate()
		expect(activated.startReached).toBe(true)

		local updateCount = #harness.updates
		harness.source.append({ id = "item-21" })
		local structuralUpdate = harness.updates[updateCount + 1]
		expect(structuralUpdate.startReached).toBe(true)

		local observed = harness.virtualizer.observeScrollOffset({
			kind = ScrollObservationKind.Programmatic,
			offset = 0,
		})
		expect(observed.startReached).toBe(false)
		harness.destroy()
	end)
	it("presents the initial snapshot without exposing its private entry classification", function()
		local harness = createHarness()
		local virtualizer = harness.virtualizer

		virtualizer.activate()
		local update = virtualizer.setViewportSize(20, 100)

		expect(virtualizer.getCurrent()).toBe(update)
		expect(update.visibleRange).toEqual({
			firstIndex = 1,
			lastIndex = 2,
		})
		expect(update.mountedViews).toHaveLength(5)
		virtualizer.destroy()
		harness.scope.dispose()
	end)

	it("does no Recycling synchronization while visible and mounted ranges are unchanged", function()
		local harness = createHarness()
		local virtualizer = harness.virtualizer
		virtualizer.activate()
		virtualizer.setViewportSize(20, 100)
		virtualizer.setScrollOffset(1)
		local previous = virtualizer.getCurrent()
		local synchronizations = harness.getSynchronizations()

		local update = virtualizer.setScrollOffset(2)

		expect(update.mountedViews).toBe(previous.mountedViews)
		expect(update.scrollState.scrollOffset).toBe(2)
		expect(update).never.toBe(previous)
		expect(harness.getSynchronizations()).toBe(synchronizations)
		virtualizer.destroy()
		harness.scope.dispose()
	end)

	it("reactivates the same snapshot through retained row keys", function()
		local itemViewTypeResolutions = 0
		local scope = createRecyclingScope({
			adapter = {
				create = function()
					return {}
				end,
				destroy = function() end,
			},
		})
		local virtualizer = createVirtualizer({
			dataSource = DataSource.snapshot({ { id = "item-1" } }, function(item)
				return item.id
			end),
			layout = Layout.uniform({ itemLength = 10 }),
			recyclingScope = scope,
			getItemViewType = function()
				itemViewTypeResolutions += 1
				return "row"
			end,
			overscan = 0,
		})
		virtualizer.activate()
		virtualizer.setViewportSize(10, 100)
		local firstView = virtualizer.getCurrent().mountedViews[1].itemView
		expect(itemViewTypeResolutions).toBe(1)

		expect(virtualizer.setActive(false).mountedViews).toEqual({})
		local reactivated = virtualizer.setActive(true)

		expect(reactivated.mountedViews[1].itemView).toBe(firstView)
		expect(itemViewTypeResolutions).toBe(2)
		expect(reactivated.mountedViews[1].state.assignment.key).toBe("item-1")
		virtualizer.destroy()
		scope.dispose()
	end)

	it("rebuilds list rows on Refresh and DataSource replacement", function()
		local source = DataSource.snapshot({
			{ id = "a", value = "Alpha" },
			{ id = "b", value = "Beta" },
		}, function(item)
			return item.id
		end)
		local scope = createRecyclingScope({
			adapter = {
				create = function()
					return {}
				end,
				destroy = function() end,
			},
		})
		local resolvedValues = {}
		local virtualizer = createVirtualizer({
			dataSource = source,
			layout = Layout.uniform({ itemLength = 10 }),
			recyclingScope = scope,
			getItemViewType = function(item)
				table.insert(resolvedValues, item.value)
				return "row"
			end,
			overscan = 0,
		})
		virtualizer.activate()
		virtualizer.setViewportSize(20, 100)
		local initialResolutions = #resolvedValues

		virtualizer.refresh()
		expect(#resolvedValues).toBe(initialResolutions + 2)

		local replaced = virtualizer.setDataSource(DataSource.snapshot({
			{ id = "a", value = "Updated Alpha" },
			{ id = "b", value = "Updated Beta" },
		}, function(item)
			return item.id
		end))
		expect(#resolvedValues).toBe(initialResolutions + 4)
		local assignments = {}
		for _, mountedView in replaced.mountedViews do
			assignments[mountedView.state.assignment.key] = mountedView.state.assignment.value.value
		end
		expect(assignments).toEqual({
			a = "Updated Alpha",
			b = "Updated Beta",
		})

		virtualizer.destroy()
		scope.dispose()
	end)

	it("publishes only entered, departed, and changed Assignments for a sparse store patch", function()
		local source = DataSource.sequence({
			{ id = "a", value = "Alpha" },
			{ id = "b", value = "Beta" },
			{ id = "c", value = "Gamma" },
			{ id = "d", value = "Delta" },
		}, function(item)
			return item.id
		end)
		local scope = createRecyclingScope({
			adapter = {
				create = function()
					return {}
				end,
				destroy = function() end,
			},
		})
		local beforeByKey = {}
		local virtualizer = createVirtualizer({
			dataSource = source,
			layout = Layout.uniform({ itemLength = 10 }),
			recyclingScope = scope,
			getItemViewType = function()
				return "row"
			end,
			overscan = 0,
		})
		virtualizer.activate()
		local before = virtualizer.setViewportSize(40, 100)
		for _, mountedView in before.mountedViews do
			beforeByKey[mountedView.state.assignment.key] = mountedView.state.assignment
		end

		source.transaction(function()
			source.remove(2)
			source.insert(2, { id = "e", value = "Epsilon" })
			source.setItem(3, { id = "c", value = "Updated Gamma" })
		end)

		local current = virtualizer.getCurrent()
		local afterByKey = {}
		for _, mountedView in current.mountedViews do
			afterByKey[mountedView.state.assignment.key] = mountedView.state.assignment
		end
		expect(afterByKey.a).toBe(beforeByKey.a)
		expect(afterByKey.d).toBe(beforeByKey.d)
		expect(afterByKey.b).toBeNil()
		expect(afterByKey.c).never.toBe(beforeByKey.c)
		expect(afterByKey.e).never.toBeNil()

		virtualizer.destroy()
		scope.dispose()
	end)

	it("rejects reentry across the composed engine and presentation transaction", function()
		local attempted = false
		local nestedError
		local scope = createRecyclingScope({
			adapter = {
				create = function()
					return {}
				end,
				destroy = function() end,
			},
		})
		local virtualizer
		virtualizer = createVirtualizer({
			dataSource = DataSource.snapshot({ { id = "a" } }, function(item)
				return item.id
			end),
			layout = Layout.uniform({ itemLength = 10 }),
			recyclingScope = scope,
			getItemViewType = function()
				return "row"
			end,
			prepareDesiredAssignment = function(desired)
				if not attempted then
					attempted = true
					local ok, failure = pcall(function()
						virtualizer.setScrollOffset(1)
					end)
					if not ok then
						nestedError = failure
					end
				end
				return desired
			end,
		})

		virtualizer.activate()
		virtualizer.setViewportSize(20, 100)

		expect(nestedError).toContain("cannot mutate during a transaction")
		virtualizer.destroy()
		scope.dispose()
	end)

	it("recovers the composed transaction guard after a presentation error", function()
		local scope = createRecyclingScope({
			adapter = {
				create = function()
					return {}
				end,
				destroy = function() end,
			},
		})
		local shouldFail = true
		local virtualizer = createVirtualizer({
			dataSource = DataSource.snapshot({ { id = "a" } }, function(item)
				return item.id
			end),
			layout = Layout.uniform({ itemLength = 10 }),
			recyclingScope = scope,
			getItemViewType = function()
				return "row"
			end,
			prepareDesiredAssignment = function(desired)
				if shouldFail then
					shouldFail = false
					error("expected presentation failure")
				end
				return desired
			end,
		})
		virtualizer.activate()

		expect(function()
			virtualizer.setViewportSize(20, 100)
		end).toThrow("expected presentation failure")

		expect(function()
			virtualizer.refresh()
		end).never.toThrow()
		virtualizer.destroy()
		scope.dispose()
	end)

	it("disconnects from data and rejects further commands after destruction", function()
		local scope = createRecyclingScope({
			adapter = {
				create = function()
					return {}
				end,
				destroy = function() end,
			},
		})
		local source = DataSource.sequence({ { id = "item-1" } }, function(item)
			return item.id
		end)
		local virtualizer = createVirtualizer({
			dataSource = source,
			layout = Layout.uniform({ itemLength = 10 }),
			recyclingScope = scope,
			getItemViewType = function()
				return "row"
			end,
			overscan = 0,
		})
		virtualizer.activate()
		virtualizer.setViewportSize(10, 100)
		virtualizer.destroy()
		local destroyedRecord = virtualizer.getCurrent()

		source.append({ id = "item-2" })

		expect(virtualizer.getCurrent()).toBe(destroyedRecord)
		expect(function()
			virtualizer.refresh()
		end).toThrow("cannot dispatch after destruction")
		virtualizer.destroy()
		scope.dispose()
	end)

	it("uses one subscription and enriches Recycling after the engine commit", function()
		local createdTypes = {}
		local updates = {}
		local scope = createRecyclingScope({
			adapter = {
				create = function(viewType)
					table.insert(createdTypes, viewType)
					return {}
				end,
				destroy = function() end,
			},
		})
		local source = DataSource.sequence({ { id = "item-1", kind = "row", label = "before" } }, function(item)
			return item.id
		end)
		local subscribe = source.subscribe
		local subscriptions = 0
		source.subscribe = function(callback)
			subscriptions += 1
			return subscribe(callback)
		end
		local virtualizer = createVirtualizer({
			dataSource = source,
			layout = Layout.uniform({ itemLength = 10 }),
			recyclingScope = scope,
			getItemViewType = function(item)
				return item.kind
			end,
			onTransaction = function(_, current)
				table.insert(updates, current)
			end,
			overscan = 0,
		})
		virtualizer.activate()
		virtualizer.setViewportSize(10, 100)

		source.setItem(1, { id = "item-1", kind = "card", label = "after" })

		expect(subscriptions).toBe(1)
		expect(createdTypes).toEqual({ "row", "card" })
		expect(updates[#updates].mountedViews[1].state.assignment.value.label).toBe("after")
		expect(updates[#updates].mountedViews).toHaveLength(1)
		virtualizer.destroy()
		scope.dispose()
	end)
end)
