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
local ScrollAlignment = require(Src.Core.Enums.ScrollAlignment)
local createInitialScrollPosition = require(Src.Core.ViewportBehavior.InitialScrollPosition)
local createScrollPolicyCoordinator = require(Src.Core.ViewportBehavior.ScrollPolicyCoordinator)

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

describe("ChatPreset", function()
	it("composes end alignment, conditional follow, anchoring, and thresholds", function()
		expect(ChatPreset.create({
			startReachedThreshold = 40,
			endReachedThreshold = 12,
		})).toEqual({
			initialScrollAlignment = ScrollAlignment.End,
			contentAlignment = ScrollAlignment.End,
			autoScrollOnChange = AutoScrollPolicy.WhenAtEnd,
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
	it("resolves the built-in end policy from prechange state", function()
		local changeBatch = dataSourceChange({ type = DataSourceChangeType.Insert, index = 2, keys = { "b" } })

		expect(AutoScroll.resolveTarget(AutoScrollPolicy.WhenAtEnd, changeBatch, scrollState(true))).toBe(
			AutoScrollTarget.End
		)
		expect(AutoScroll.resolveTarget(AutoScrollPolicy.WhenAtEnd, changeBatch, scrollState(false))).toBe(false)
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
		end, changeBatch, before)

		expect(result).toBe(AutoScrollTarget.Start)
		expect(receivedBatch).toBe(changeBatch)
		expect(receivedBefore).toBe(before)
	end)

	it("keeps end settlement through content growth until the user scrolls away", function()
		local state = AutoScroll.create()
		state.onDataSourceChanged(AutoScrollTarget.End)

		expect(state.getContentLengthCorrection(100, 30)).toBe(70)
		expect(state.getContentLengthCorrection(120, 30)).toBe(90)
		state.onScrollOffsetChanged(true, true)
		expect(state.getContentLengthCorrection(130, 30)).toBe(100)
		state.onScrollOffsetChanged(false, true)
		expect(state.getContentLengthCorrection(130, 30)).toBeNil()
	end)

	it("does not arm end settlement when the declared policy cannot follow", function()
		local state = AutoScroll.create()

		state.onScrollOffsetChanged(true, false)
		expect(state.getContentLengthCorrection(130, 30)).toBeNil()
	end)

	it("clears a previous callback decision when the next transaction declines", function()
		local state = AutoScroll.create()
		state.onDataSourceChanged(AutoScrollTarget.End)
		state.onDataSourceChanged(false)

		expect(state.getContentLengthCorrection(130, 30)).toBeNil()
	end)

	it("targets either edge and clears end settlement when start is chosen", function()
		local state = AutoScroll.create()
		state.onDataSourceChanged(AutoScrollTarget.End)
		state.onDataSourceChanged(AutoScrollTarget.Start)

		expect(AutoScroll.getTargetOffset(AutoScrollTarget.Start, 100, 30)).toBe(0)
		expect(AutoScroll.getTargetOffset(AutoScrollTarget.End, 100, 30)).toBe(70)
		expect(AutoScroll.getTargetOffset(AutoScrollTarget.End, 20, 30)).toBe(0)
		expect(state.getContentLengthCorrection(100, 30)).toBeNil()
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

describe("ScrollPolicyCoordinator", function()
	local function createHarness(withPaginationCallbacks: boolean?)
		local itemCount = 5
		local contentLength = 100
		local viewportState = {
			scrollOffset = 70,
			viewportLength = 30,
		}
		local hostOffsets = {}
		local startReached = 0
		local endReached = 0
		local viewportReads = 0
		local reportedContentLengths = {}
		local alignment = ScrollAlignment.End
		local autoScrollPolicy = AutoScrollPolicy.WhenAtEnd
		local hasPersistentAnchor = false
		local coordinator = createScrollPolicyCoordinator({
			getItemCount = function()
				return itemCount
			end,
			getScrollState = function()
				local distanceFromEnd =
					math.max(0, contentLength - viewportState.viewportLength - viewportState.scrollOffset)
				return {
					scrollOffset = viewportState.scrollOffset,
					viewportLength = viewportState.viewportLength,
					contentLength = contentLength,
					distanceFromEnd = distanceFromEnd,
					atStart = viewportState.scrollOffset <= 0,
					atEnd = distanceFromEnd <= 1,
				}
			end,
			getScrollOffsetForItem = getAlignedOffset,
			applyScrollAnchorOffset = function(offset)
				if not hasPersistentAnchor then
					table.insert(hostOffsets, offset)
					viewportState.scrollOffset = offset
				end
				return viewportState.scrollOffset
			end,
			getViewportState = function()
				viewportReads += 1
				return viewportState
			end,
			getInitialScrollAlignment = function()
				return alignment
			end,
			getAutoScrollPolicy = function()
				return autoScrollPolicy
			end,
			getStartReachedThreshold = function()
				return nil
			end,
			getOnStartReached = function()
				return if withPaginationCallbacks == false
					then nil
					else function()
						startReached += 1
					end
			end,
			getOnEndReached = function()
				return if withPaginationCallbacks == false
					then nil
					else function()
						endReached += 1
					end
			end,
			onContentLengthChanged = function(length)
				table.insert(reportedContentLengths, length)
			end,
		})
		return {
			coordinator = coordinator,
			hostOffsets = hostOffsets,
			reportedContentLengths = reportedContentLengths,
			getStartReached = function()
				return startReached
			end,
			getEndReached = function()
				return endReached
			end,
			getViewportReads = function()
				return viewportReads
			end,
			setContentLength = function(length)
				contentLength = length
			end,
			setPersistentScrollAnchor = function(active)
				hasPersistentAnchor = active
			end,
			setAutoScrollPolicy = function(policy)
				autoScrollPolicy = policy
			end,
		}
	end

	it("owns initial and replacement scroll positioning", function()
		local harness = createHarness()

		harness.coordinator.onViewportChanged()
		harness.coordinator.onDataSourceReplaced()

		expect(harness.hostOffsets).toEqual({ 50, 50 })
	end)

	it("defers initial alignment until an inert model is initialized", function()
		local harness = createHarness()
		harness.setAutoScrollPolicy(nil)
		harness.setContentLength(0)

		harness.coordinator.onViewportChanged()
		harness.coordinator.checkEdges()
		expect(harness.hostOffsets).toEqual({})
		expect(harness.getStartReached()).toBe(0)
		expect(harness.getEndReached()).toBe(0)

		harness.setContentLength(100)
		harness.coordinator.onDataSourceChanged(
			dataSourceChange({ type = DataSourceChangeType.Insert, index = 1, keys = { "a" } }),
			scrollState(false)
		)
		expect(harness.hostOffsets).toEqual({ 50 })
	end)

	it("keeps an end-targeted transaction settled through content growth", function()
		local harness = createHarness()
		local changeBatch = dataSourceChange({ type = DataSourceChangeType.Insert, index = 2, keys = { "b" } })
		harness.coordinator.onViewportChanged()
		table.clear(harness.hostOffsets)

		harness.coordinator.onDataSourceChanged(changeBatch, scrollState(true))
		harness.setContentLength(120)
		harness.coordinator.onContentLengthChanged(120)

		expect(harness.hostOffsets).toEqual({ 70, 90 })
		expect(harness.reportedContentLengths).toEqual({ 120 })
	end)

	it("keeps following content-only growth after the viewport reaches the end", function()
		local harness = createHarness()

		harness.coordinator.onScrollOffsetChanged()
		harness.setContentLength(120)
		harness.coordinator.onContentLengthChanged(120)

		expect(harness.hostOffsets).toEqual({ 90 })
	end)

	it("does not arm follow-end from pagination-only end observation", function()
		local harness = createHarness()
		harness.setAutoScrollPolicy(nil)

		harness.coordinator.onScrollOffsetChanged()
		harness.setContentLength(120)
		harness.coordinator.onContentLengthChanged(120)

		expect(harness.hostOffsets).toEqual({})
		expect(harness.reportedContentLengths).toEqual({ 120 })
	end)

	it("does not let end settlement override a persistent scroll anchor", function()
		local harness = createHarness()
		harness.coordinator.onScrollOffsetChanged()
		harness.setPersistentScrollAnchor(true)
		harness.coordinator.onScrollOffsetChanged()

		harness.setContentLength(120)
		harness.coordinator.onContentLengthChanged(120)

		expect(harness.hostOffsets).toEqual({})
		expect(harness.reportedContentLengths).toEqual({ 120 })
	end)

	it("coordinates pagination", function()
		local harness = createHarness()

		harness.coordinator.checkEdges()

		expect(harness.getStartReached()).toBe(0)
		expect(harness.getEndReached()).toBe(1)
	end)

	it("skips edge-state reads when pagination callbacks are absent", function()
		local harness = createHarness(false)

		harness.coordinator.checkEdges()

		expect(harness.getViewportReads()).toBe(0)
	end)
end)
