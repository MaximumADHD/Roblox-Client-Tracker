local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local AutoScroll = require(Src.Core.ViewportBehavior.AutoScroll)
local AutoScrollPolicy = require(Src.Core.Enums.AutoScrollPolicy)
local AutoScrollTarget = require(Src.Core.Enums.AutoScrollTarget)
local ChatPreset = require(Src.Core.ViewportBehavior.ChatPreset)
local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local PaginationEdges = require(Src.Core.ViewportBehavior.PaginationEdges)
local ReachedThreshold = require(Src.Core.ViewportBehavior.ReachedThreshold)
local ScrollAlignment = require(Src.Core.Enums.ScrollAlignment)
local createInitialScrollPosition = require(Src.Core.ViewportBehavior.InitialScrollPosition)
local createScrollPolicy = require(Src.Core.ViewportBehavior.ScrollPolicy)

local function getAlignedOffset(itemIndex, alignment)
	if alignment == ScrollAlignment.End then
		return itemIndex * 10
	end
	return itemIndex
end

local function dataSourceChange(change)
	return {
		changes = { change },
		previousItemCount = 1,
		itemCount = 2,
	}
end

local function scrollState(atEnd)
	return {
		scrollOffset = 20,
		viewportLength = 30,
		contentLength = 50,
		distanceFromEnd = if atEnd then 0 else 10,
		atStart = false,
		atEnd = atEnd,
	}
end

describe("ReachedThreshold", function()
	it("resolves pixels and viewport fractions", function()
		expect(ReachedThreshold.resolve(25, 200, 1)).toBe(25)
		expect(ReachedThreshold.resolve({ viewportFraction = 0.5 }, 200, 1)).toBe(100)
		expect(ReachedThreshold.resolve({ viewportFraction = 2 }, 200, 1)).toBe(400)
		expect(ReachedThreshold.resolve(nil, 200, 1)).toBe(1)
	end)
end)

describe("ChatPreset", function()
	it("composes end alignment, conditional follow, anchoring, and thresholds", function()
		expect(ChatPreset.create({
			startReachedThreshold = 40,
			endReachedThreshold = 12,
			autoScrollThreshold = 24,
		})).toEqual({
			initialScrollAlignment = ScrollAlignment.End,
			contentAlignment = ScrollAlignment.End,
			autoScrollOnChange = AutoScrollPolicy.WhenAtEnd,
			autoScrollThreshold = 24,
			preserveScrollPositionOnChange = true,
			startReachedThreshold = 40,
			endReachedThreshold = 12,
		})
	end)
end)

describe("InitialScrollPosition", function()
	it("applies non-start alignment once when the viewport becomes available", function()
		local state = createInitialScrollPosition()

		expect(state.onViewportChanged(5, ScrollAlignment.End, getAlignedOffset)).toBe(50)
		expect(state.onViewportChanged(6, ScrollAlignment.End, getAlignedOffset)).toBeNil()
		expect(state.onDataSourceChange(6, ScrollAlignment.End, getAlignedOffset)).toBeNil()
	end)

	it("keeps an empty non-start alignment pending until items arrive", function()
		local state = createInitialScrollPosition()

		expect(state.onViewportChanged(0, ScrollAlignment.End, getAlignedOffset)).toBeNil()
		expect(state.onDataSourceChange(3, ScrollAlignment.End, getAlignedOffset)).toBe(30)
	end)

	it("marks start alignment complete without requesting an offset", function()
		local state = createInitialScrollPosition()

		expect(state.onViewportChanged(3, ScrollAlignment.Start, getAlignedOffset)).toBeNil()
		expect(state.onDataSourceChange(3, ScrollAlignment.End, getAlignedOffset)).toBeNil()
	end)

	it("reapplies alignment when the DataSource is replaced", function()
		local state = createInitialScrollPosition()
		state.onViewportChanged(3, ScrollAlignment.End, getAlignedOffset)

		expect(state.onDataSourceReplaced(6, ScrollAlignment.End, getAlignedOffset)).toBe(60)
		expect(state.onDataSourceReplaced(0, ScrollAlignment.End, getAlignedOffset)).toBe(0)
		expect(state.onDataSourceReplaced(6, ScrollAlignment.Start, getAlignedOffset)).toBe(0)
	end)
end)

describe("AutoScroll", function()
	local function edgeState(scrollOffset, distanceFromEnd)
		return {
			scrollOffset = scrollOffset,
			viewportLength = 30,
			contentLength = 30 + scrollOffset + distanceFromEnd,
			distanceFromEnd = distanceFromEnd,
			atStart = scrollOffset <= 0,
			atEnd = distanceFromEnd <= 1,
		}
	end

	it("resolves the built-in policies from prechange edge distance and threshold", function()
		local changeBatch = dataSourceChange({ type = DataSourceChangeType.Insert, index = 2, keys = { "b" } })

		expect(AutoScroll.resolveTarget(AutoScrollPolicy.WhenAtEnd, changeBatch, edgeState(20, 10), 10)).toBe(
			AutoScrollTarget.End
		)
		expect(AutoScroll.resolveTarget(AutoScrollPolicy.WhenAtEnd, changeBatch, edgeState(20, 11), 10)).toBe(false)
		expect(AutoScroll.resolveTarget(AutoScrollPolicy.WhenAtStart, changeBatch, edgeState(33, 0), 33)).toBe(
			AutoScrollTarget.Start
		)
		expect(AutoScroll.resolveTarget(AutoScrollPolicy.WhenAtStart, changeBatch, edgeState(34, 0), 33)).toBe(false)
	end)

	it("delegates custom policy decisions with the DataSource transaction", function()
		local changeBatch = dataSourceChange({ type = DataSourceChangeType.Insert, index = 2, keys = { "b" } })
		local receivedBatch = nil
		local receivedBefore = nil
		local before = scrollState(false)

		local result = AutoScroll.resolveTarget(function(batch, state)
			receivedBatch = batch
			receivedBefore = state
			return AutoScrollTarget.Start
		end, changeBatch, before, 1)

		expect(result).toBe(AutoScrollTarget.Start)
		expect(receivedBatch).toBe(changeBatch)
		expect(receivedBefore).toBe(before)
	end)

	it("keeps end settlement through content growth until the reader leaves the threshold", function()
		local state = AutoScroll.create()
		state.onDataSourceChanged(AutoScrollTarget.End)

		expect(state.getSettleOffset(100, 30)).toBe(70)
		expect(state.getSettleOffset(120, 30)).toBe(90)
		state.onScrollOffsetChanged(edgeState(85, 5), 5, nil)
		expect(state.getSettleOffset(130, 30)).toBe(100)
		state.onScrollOffsetChanged(edgeState(84, 6), 5, nil)
		expect(state.getSettleOffset(130, 30)).toBeNil()
	end)

	it("arms the followed edge only within the threshold", function()
		local state = AutoScroll.create()

		state.onScrollOffsetChanged(edgeState(0, 100), 1, nil)
		expect(state.getSettleOffset(130, 30)).toBeNil()
		state.onScrollOffsetChanged(edgeState(20, 100), 33, AutoScrollTarget.Start)
		expect(state.getSettleOffset(130, 30)).toBe(0)
		state.onScrollOffsetChanged(edgeState(40, 100), 33, AutoScrollTarget.Start)
		expect(state.getSettleOffset(130, 30)).toBeNil()
	end)

	it("clears a previous callback decision when the next transaction declines", function()
		local state = AutoScroll.create()
		state.onDataSourceChanged(AutoScrollTarget.End)
		state.onDataSourceChanged(false)

		expect(state.getSettleOffset(130, 30)).toBeNil()
	end)

	it("keeps a pinned edge through declined decisions until the reader leaves it", function()
		local state = AutoScroll.create()
		state.pin(AutoScrollTarget.End)

		expect(state.onDataSourceChanged(false)).toBe(AutoScrollTarget.End)
		expect(state.getSettleOffset(130, 30)).toBe(100)
		state.onScrollOffsetChanged(edgeState(40, 60), 1, nil)
		expect(state.onDataSourceChanged(false)).toBe(false)
		expect(state.getSettleOffset(130, 30)).toBeNil()
	end)

	it("targets either edge and replaces end settlement when start is chosen", function()
		local state = AutoScroll.create()
		state.onDataSourceChanged(AutoScrollTarget.End)
		state.onDataSourceChanged(AutoScrollTarget.Start)

		expect(AutoScroll.getTargetOffset(AutoScrollTarget.Start, 100, 30)).toBe(0)
		expect(AutoScroll.getTargetOffset(AutoScrollTarget.End, 100, 30)).toBe(70)
		expect(AutoScroll.getTargetOffset(AutoScrollTarget.End, 20, 30)).toBe(0)
		expect(state.getSettleOffset(100, 30)).toBe(0)
	end)
end)

describe("PaginationEdges", function()
	local function input(overrides)
		local value = {
			scrollOffset = 0,
			viewportLength = 20,
			contentLength = 100,
			startThreshold = 0,
			atEnd = false,
			canReachStart = true,
			canReachEnd = true,
			rearmAfterStructureChange = false,
		}
		for key, override in overrides or {} do
			value[key] = override
		end
		return value
	end

	it("fires a start edge once and rearms after leaving it", function()
		local state = PaginationEdges.create()

		expect(state.check(input()).startReached).toBe(true)
		expect(state.check(input()).startReached).toBe(false)
		expect(state.check(input({ scrollOffset = 10 })).startReached).toBe(false)
		expect(state.check(input()).startReached).toBe(true)
	end)

	it("uses the viewport model's end state with the same arming semantics", function()
		local state = PaginationEdges.create()

		expect(state.check(input({ atEnd = false })).endReached).toBe(false)
		expect(state.check(input({ atEnd = true })).endReached).toBe(true)
		expect(state.check(input({ atEnd = true })).endReached).toBe(false)
		expect(state.check(input({ atEnd = false })).endReached).toBe(false)
		expect(state.check(input({ atEnd = true })).endReached).toBe(true)
	end)

	it("does not disarm an eligible edge until a callback is available", function()
		local state = PaginationEdges.create()

		expect(state.check(input({ canReachStart = false })).startReached).toBe(false)
		expect(state.check(input({ canReachStart = true })).startReached).toBe(true)
	end)

	it("rearms both edges after a structural DataSource change", function()
		local state = PaginationEdges.create()
		local first = state.check(input({ contentLength = 10, atEnd = true }))
		local second = state.check(input({
			contentLength = 10,
			atEnd = true,
			rearmAfterStructureChange = true,
		}))

		expect(first).toEqual({ startReached = true, endReached = true })
		expect(second).toEqual({ startReached = true, endReached = true })
		expect(
			PaginationEdges.hasStructuralChange(
				dataSourceChange({ type = DataSourceChangeType.Update, keys = { "a" } })
			)
		).toBe(false)
		expect(
			PaginationEdges.hasStructuralChange(
				dataSourceChange({ type = DataSourceChangeType.Insert, index = 2, keys = { "b" } })
			)
		).toBe(true)
	end)
end)

describe("ScrollPolicy", function()
	local function state(offset, viewportLength, contentLength)
		local distanceFromEnd = math.max(0, contentLength - viewportLength - offset)
		return {
			scrollOffset = offset,
			viewportLength = viewportLength,
			contentLength = contentLength,
			distanceFromEnd = distanceFromEnd,
			atStart = offset <= 0,
			atEnd = distanceFromEnd <= 1,
		}
	end

	local function createPolicy(overrides: { [string]: any }?)
		local config: { [string]: any } = {
			initialScrollAlignment = ScrollAlignment.End,
			autoScrollOnChange = AutoScrollPolicy.WhenAtEnd,
			startReachedEnabled = true,
			endReachedEnabled = true,
		}
		for key, value in overrides or {} do
			config[key] = value
		end
		return createScrollPolicy(config :: any)
	end

	local function context(itemCount, scrollState)
		return {
			itemCount = itemCount,
			scrollState = scrollState,
			getScrollOffsetForItem = getAlignedOffset,
		}
	end

	local insertB = dataSourceChange({ type = DataSourceChangeType.Insert, index = 2, keys = { "b" } })

	it("owns initial and replacement scroll positioning", function()
		local policy = createPolicy()

		expect(policy.viewportChanged(context(5, state(70, 30, 100)))).toBe(50)
		-- Initial End alignment stays settled at the end through the next change.
		expect(policy.viewportChanged(context(5, state(70, 30, 100)))).toBe(70)
		policy.observe(state(20, 30, 100))
		expect(policy.viewportChanged(context(5, state(20, 30, 100)))).toBeNil()
		expect(policy.dataReplaced(context(5, state(70, 30, 100)))).toBe(50)
	end)

	it("defers initial alignment until an inert model is initialized", function()
		local policy = createPolicy({ autoScrollOnChange = false })

		expect(policy.viewportChanged(context(5, state(70, 30, 0)))).toBeNil()
		local startReached, endReached = policy.checkEdges(state(70, 30, 0), 5, false)
		expect(startReached).toBe(false)
		expect(endReached).toBe(false)

		local insertA = dataSourceChange({ type = DataSourceChangeType.Insert, index = 1, keys = { "a" } })
		expect(policy.dataChanged(context(5, state(70, 30, 100)), insertA, scrollState(false))).toBe(50)
	end)

	it("keeps an end-targeted transaction settled through content growth", function()
		local policy = createPolicy()
		policy.viewportChanged(context(5, state(70, 30, 100)))

		expect(policy.dataChanged(context(5, state(70, 30, 100)), insertB, scrollState(true))).toBe(70)
		expect(policy.contentLengthChanged(state(70, 30, 120))).toBe(90)
	end)

	it("keeps following content-only growth after the viewport reaches the end", function()
		local policy = createPolicy()

		policy.observe(state(70, 30, 100))

		expect(policy.contentLengthChanged(state(70, 30, 120))).toBe(90)
	end)

	it("does not arm follow-end from pagination-only end observation", function()
		local policy = createPolicy({ autoScrollOnChange = false })

		policy.observe(state(70, 30, 100))

		expect(policy.contentLengthChanged(state(70, 30, 120))).toBeNil()
	end)

	it("disarms follow-end once the viewport leaves the end", function()
		local policy = createPolicy()
		policy.observe(state(70, 30, 100))
		policy.observe(state(20, 30, 100))

		expect(policy.contentLengthChanged(state(20, 30, 120))).toBeNil()
	end)

	it("coordinates pagination", function()
		local policy = createPolicy()

		local startReached, endReached = policy.checkEdges(state(70, 30, 100), 5, false)

		expect(startReached).toBe(false)
		expect(endReached).toBe(true)
	end)

	it("fires a reached edge once until the viewport leaves it or structure changes", function()
		local policy = createPolicy()

		local _, first = policy.checkEdges(state(70, 30, 20), 5, false)
		local _, second = policy.checkEdges(state(70, 30, 20), 5, false)
		local _, rearmed = policy.checkEdges(state(70, 30, 20), 5, true)

		expect({ first, second, rearmed }).toEqual({ true, false, true })
	end)

	it("waits for a nonzero viewport before consuming an empty-list edge", function()
		local policy = createPolicy()

		local _, beforeViewport = policy.checkEdges(state(70, 0, 0), 0, false)
		local _, afterViewport = policy.checkEdges(state(70, 30, 0), 0, false)

		expect(beforeViewport).toBe(false)
		expect(afterViewport).toBe(true)
	end)

	it("rejects an invalid follow threshold", function()
		expect(function()
			createPolicy({ autoScrollThreshold = -1 })
		end).toThrow("autoScrollThreshold")
	end)

	it("rejects an invalid start-reached threshold when configured", function()
		expect(function()
			createPolicy({ startReachedThreshold = -1 })
		end).toThrow("startReachedThreshold")
		local policy = createPolicy({})
		expect(function()
			policy.configure({ startReachedThreshold = { viewportFraction = -1 } } :: any)
		end).toThrow("startReachedThreshold")
	end)

	it("reports no edges when pagination is disabled", function()
		local policy = createPolicy({ startReachedEnabled = false, endReachedEnabled = false })

		local startReached, endReached = policy.checkEdges(state(0, 30, 20), 5, false)

		expect(policy.reachesEdges()).toBe(false)
		expect(startReached).toBe(false)
		expect(endReached).toBe(false)
	end)
end)
