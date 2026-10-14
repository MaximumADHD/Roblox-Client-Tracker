local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local DataSource = require(Src.Core.DataSource)
local Layout = require(Src.Core.Layout)
local PinnedPosition = require(Src.Core.Enums.PinnedPosition)
local ScrollObservationKind = require(Src.Core.Enums.ScrollObservationKind)
local VirtualizerCommandType = require(Src.Core.Enums.VirtualizerCommandType).External
local VirtualizerQueryType = require(Src.Core.Enums.VirtualizerQueryType)
local createRecyclingScope = require(Src.Core.RecyclingScope)
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
	local originalExchange = scope.exchange
	scope.exchange = function(owner, releases, requests)
		synchronizations += 1
		return originalExchange(owner, releases, requests)
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
	local intents = {}
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
		isItemStickyHeader = function(item)
			return item.sticky == true
		end,
		pinnedStartItem = {
			key = "$toolbar",
			value = { id = "$toolbar" },
			itemViewType = "row",
		},
		applyPlacementIntent = function(itemView, intent)
			intents[itemView] = intent
		end,
	})
	virtualizer.dispatch({ type = VirtualizerCommandType.Activate })
	virtualizer.dispatch({
		type = VirtualizerCommandType.SetViewportSize,
		scrollAxisLength = 560,
		crossAxisLength = 420,
	})
	virtualizer.dispatch({
		type = VirtualizerCommandType.ObserveScrollOffset,
		observation = {
			kind = ScrollObservationKind.Programmatic,
			offset = 0,
		},
	})
	return {
		virtualizer = virtualizer,
		measurePinnedStart = function()
			for _, intent in intents do
				local identity = if intent == nil then nil else intent.measurementIdentity
				if identity ~= nil and identity.pinnedPosition == PinnedPosition.Start then
					virtualizer.dispatch({
						type = VirtualizerCommandType.SubmitMeasurements,
						measurements = {
							{
								itemIndex = identity.itemIndex,
								itemKey = identity.itemKey,
								assignmentGeneration = identity.assignmentGeneration,
								itemRevision = identity.itemRevision,
								pinnedPosition = PinnedPosition.Start,
								length = PINNED_START_LENGTH,
							},
						},
					})
					return
				end
			end
			error("Virtualizer test: no pinned start Placement intent was published")
		end,
		-- Canvas-placed data items must sit at their layout offset shifted by the
		-- current Content-start offset. A stale intent reads back as a gap or an
		-- overlap against the pinned start item.
		getMisplacedCanvasItems = function()
			local contentStartOffset = virtualizer.getSnapshot().contentStartOffset
			local misplaced = {}
			for _, intent in intents do
				if
					intent ~= nil
					and intent.assignment.index ~= nil
					and intent.canvasPlacement.mainAxisOffset == nil
				then
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
			virtualizer.dispatch({ type = VirtualizerCommandType.Destroy })
			scope.destroy()
			layout.destroy()
		end,
	}
end

describe("Virtualizer pinned Content insets", function()
	it("does not scroll when a measured pinned start item insets Content at rest", function()
		local harness = createPinnedHarness()
		harness.measurePinnedStart()

		local snapshot = harness.virtualizer.getSnapshot()
		expect(snapshot.contentStartOffset).toBe(PINNED_START_LENGTH)
		expect(snapshot.scrollState.scrollOffset).toBe(0)
		local header = nil
		for _, entry in snapshot.entries do
			if entry.key == "header-1" then
				header = entry
				break
			end
		end
		assert(header ~= nil, "Virtualizer test: header-1 was not mounted")
		expect(header.viewportPlacement).toBeNil()
		expect(harness.getMisplacedCanvasItems()).toEqual({})
		harness.destroy()
	end)

	it("restates mounted Placement intents when a measured pinned item insets the Content", function()
		local harness = createPinnedHarness()
		expect(harness.virtualizer.getSnapshot().contentStartOffset).toBe(0)

		harness.measurePinnedStart()

		expect(harness.virtualizer.getSnapshot().contentStartOffset).toBe(PINNED_START_LENGTH)
		expect(harness.getMisplacedCanvasItems()).toEqual({})
		harness.destroy()
	end)

	it("keeps Canvas placements inset while scrolling across sticky sections", function()
		local harness = createPinnedHarness()
		harness.measurePinnedStart()

		for _, offset in { 1, 20, 44, 88, 264, 500, 900, 400, 88, 1, 0 } do
			harness.virtualizer.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = offset })
			expect(harness.getMisplacedCanvasItems()).toEqual({})
		end

		harness.destroy()
	end)
end)

describe("Virtualizer command composition", function()
	it("presents engine snapshots through dispatch/getSnapshot/query", function()
		local harness = createHarness()
		local virtualizer = harness.virtualizer

		virtualizer.dispatch({ type = VirtualizerCommandType.Activate })
		local update = virtualizer.dispatch({
			type = VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 20,
			crossAxisLength = 100,
		})

		expect(virtualizer.getSnapshot()).toBe(update.snapshot)
		expect(virtualizer.query({ type = VirtualizerQueryType.GetVisibleRange })).toEqual({
			firstIndex = 1,
			lastIndex = 2,
		})
		expect(virtualizer.query({ type = VirtualizerQueryType.GetItemViews })).toHaveLength(#update.snapshot.entries)
		virtualizer.dispatch({ type = VirtualizerCommandType.Destroy })
		harness.scope.destroy()
	end)

	it("does no Recycling synchronization for a shared within-Band entry graph", function()
		local harness = createHarness()
		local virtualizer = harness.virtualizer
		virtualizer.dispatch({ type = VirtualizerCommandType.Activate })
		virtualizer.dispatch({
			type = VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 20,
			crossAxisLength = 100,
		})
		virtualizer.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 1 })
		local previous = virtualizer.getSnapshot()
		local synchronizations = harness.getSynchronizations()

		local update = virtualizer.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 2 })

		expect(update.snapshot.entries).toBe(previous.entries)
		expect(harness.getSynchronizations()).toBe(synchronizations)
		virtualizer.dispatch({ type = VirtualizerCommandType.Destroy })
		harness.scope.destroy()
	end)

	it("rejects reentry across the composed engine and presentation transaction", function()
		local harness = createHarness()
		local virtualizer = harness.virtualizer
		local attempted = false
		local nestedError
		local scope = harness.scope
		local originalExchange = scope.exchange
		scope.exchange = function(owner, releases, requests)
			if not attempted then
				attempted = true
				local ok, failure = pcall(function()
					virtualizer.dispatch({ type = VirtualizerCommandType.SetScrollOffset, offset = 1 })
				end)
				if not ok then
					nestedError = failure
				end
			end
			return originalExchange(owner, releases, requests)
		end

		virtualizer.dispatch({ type = VirtualizerCommandType.Activate })
		virtualizer.dispatch({
			type = VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 20,
			crossAxisLength = 100,
		})

		expect(nestedError).toContain("cannot mutate during a transaction")
		virtualizer.dispatch({ type = VirtualizerCommandType.Destroy })
		scope.destroy()
	end)

	it("recovers the composed transaction guard after a presentation error", function()
		local harness = createHarness()
		local virtualizer = harness.virtualizer
		local scope = harness.scope
		virtualizer.dispatch({ type = VirtualizerCommandType.Activate })
		local originalExchange = scope.exchange
		local shouldFail = true
		scope.exchange = function(owner, releases, requests)
			if shouldFail then
				shouldFail = false
				error("expected exchange failure")
			end
			return originalExchange(owner, releases, requests)
		end

		expect(function()
			virtualizer.dispatch({
				type = VirtualizerCommandType.SetViewportSize,
				scrollAxisLength = 20,
				crossAxisLength = 100,
			})
		end).toThrow("expected exchange failure")

		expect(function()
			virtualizer.dispatch({ type = VirtualizerCommandType.Refresh })
		end).never.toThrow()
		virtualizer.dispatch({ type = VirtualizerCommandType.Destroy })
		scope.destroy()
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
		virtualizer.dispatch({ type = VirtualizerCommandType.Activate })
		virtualizer.dispatch({
			type = VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = 10,
			crossAxisLength = 100,
		})
		virtualizer.dispatch({ type = VirtualizerCommandType.Destroy })
		local destroyedSnapshot = virtualizer.getSnapshot()

		source.append({ id = "item-2" })

		expect(virtualizer.getSnapshot()).toBe(destroyedSnapshot)
		expect(function()
			virtualizer.dispatch({ type = VirtualizerCommandType.Refresh })
		end).toThrow("cannot dispatch after destruction")
		virtualizer.dispatch({ type = VirtualizerCommandType.Destroy })
		scope.destroy()
	end)
end)
