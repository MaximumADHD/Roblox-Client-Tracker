local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local Core = {
	AutoScrollPolicy = require(Src.Core.Enums.AutoScrollPolicy),
	DataSource = require(Src.Core.DataSource),
	DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType),
	Layout = require(Src.Core.Layout),
	ScrollAlignment = require(Src.Core.Enums.ScrollAlignment),
	VirtualizerCommandType = require(Src.Core.Enums.VirtualizerCommandType).External,
	VirtualizerEffectType = require(Src.Core.Enums.VirtualizerEffectType),
	VirtualizerQueryType = require(Src.Core.Enums.VirtualizerQueryType),
	Adapter = {
		createRecyclingScope = require(Src.Core.RecyclingScope),
		createVirtualizer = require(Src.Core.Virtualizer),
		ScrollPolicy = require(Src.Core.ViewportBehavior),
	},
}
local BenchmarkContract = require(script.Parent.BenchmarkContract)
local BenchmarkStats = require(script.Parent.BenchmarkStats)
local CoreTiming = require(script.Parent.CoreTiming)
local ResponsibilityCatalog = require(script.Parent.ResponsibilityCatalog)

describe("CoreTiming", function()
	it("covers every Core responsibility with deterministic workload evidence", function()
		local records = CoreTiming.run(Core, BenchmarkStats, BenchmarkContract, {
			itemCounts = { 50 },
			scrollStepCount = 3,
			coordinatorItemCount = 6,
			coordinatorStepCount = 2,
			sampleCount = 1,
			warmupCount = 0,
			iterationsPerSample = 2,
			bootstrapResamples = 0,
		})

		local covered = {}
		local byWorkload = {}
		for _, record in records do
			expect(record.suite).toBe("view-recycler-core")
			expect(record.owner).toBe("core")
			expect(ResponsibilityCatalog.isKnown(record.responsibility)).toBe(true)
			expect(record.timingClass).never.toBeNil()
			expect(record.evidence).never.toBeNil()
			covered[record.responsibility] = true
			byWorkload[record.workload] = record
		end
		expect(ResponsibilityCatalog.getMissing(records, "core")).toEqual({})
		for _, responsibility in ResponsibilityCatalog.byOwner.core do
			expect(covered[responsibility]).toBe(true)
		end

		expect(#records).toBe(22)
		expect(byWorkload["uniform-traversal"].scale).toEqual({
			items = 50,
			scrollSteps = 3,
			scrollPattern = "jump",
			layout = "uniform",
			submitsMeasurements = false,
		})
		expect(byWorkload["uniform-traversal"].evidence.mountedItemViews).toBeGreaterThan(0)
		expect(byWorkload["grid-traversal"].evidence.crossAxisCount).toBe(3)
		expect(byWorkload["masonry-traversal"].evidence.crossAxisCount).toBe(3)
		expect(byWorkload["measured-update-traversal"].evidence.submittedMeasurements).toBeGreaterThan(0)
		expect(byWorkload["measured-update-traversal"].evidence.acceptedMeasurements).toBeGreaterThan(0)
		expect(byWorkload["within-band-scrolling"].arms.uniform.sampleCount).toBe(1)
		expect(byWorkload["recycling-scope-sync"].evidence.diagnosticEvents).toBeGreaterThan(0)
		expect(byWorkload["recycling-scope-sync"].evidence.leaseTokensObserved).toBeGreaterThan(0)

		local mutation = byWorkload["atomic-data-mutation"]
		expect(mutation.evidence.changes).toBe(mutation.evidence.batches * 3)
		expect(mutation.evidence.highestItemRevision).toBeGreaterThan(0)
		local anchoring = byWorkload["atomic-anchor-preservation"]
		expect(anchoring.evidence.scrollCorrections).toBeGreaterThan(0)
		expect(anchoring.evidence.correctionMagnitude).toBeGreaterThan(0)

		local overscan = byWorkload["custom-overscan-hysteresis"]
		expect(overscan.evidence.policyCalls).toBeGreaterThan(0)
		expect(overscan.evidence.mountedItems).toBeGreaterThan(overscan.evidence.visibleItems)
		local prefetch = byWorkload["edge-data-prefetch"]
		expect(prefetch.evidence.prefetchRequests).toBeGreaterThan(0)
		expect(prefetch.evidence.currentRequestsObserved).toBeGreaterThan(0)

		local programmaticScroll = byWorkload["programmatic-scroll-snapshot"]
		expect(programmaticScroll.evidence.snapshotsCaptured).toBe(3)
		expect(programmaticScroll.evidence.restoredOffsetChecksum).toBeGreaterThan(0)
		local measurementAnchor = byWorkload["measurement-anchor-preservation"]
		expect(measurementAnchor.evidence.scrollCorrections).toBeGreaterThan(0)
		expect(measurementAnchor.evidence.measuredItemIndex).toBeLessThan(measurementAnchor.evidence.visibleAnchorIndex)

		local pinnedSticky = byWorkload["sticky-pinned-placement"]
		expect(pinnedSticky.evidence.stickyViewportRelative).toBe(true)
		expect(pinnedSticky.evidence.contentStartOffset).toBe(24)
		expect(pinnedSticky.evidence.pinnedStartOffset).toBe(0)
		expect(pinnedSticky.evidence.pinnedEndOffset).toBe(448)
		expect(pinnedSticky.evidence.observablePlacementChecksum).toBeGreaterThan(0)

		local scrollPolicy = byWorkload["initial-follow-pagination-policy"]
		expect(scrollPolicy.evidence.initialScrolls).toBeGreaterThan(0)
		expect(scrollPolicy.evidence.endFollowWrites).toBeGreaterThan(0)
		expect(scrollPolicy.evidence.paginationHits).toBeGreaterThan(0)

		local retention = byWorkload["recycling-scope-retention-pressure"]
		expect(retention.evidence.retainedVacancies).toBe(4)
		expect(retention.evidence.evictions).toBeGreaterThan(0)
		expect(retention.evidence.leaseTokensObserved).toBeGreaterThan(0)
		expect(byWorkload["active-state-toggle"].evidence.releasedAssignments).toBeGreaterThan(0)
		expect(byWorkload["active-state-toggle"].evidence.mountedAfterReactivation).toBeGreaterThan(0)

		local initialization = byWorkload["virtualizer-initialization"]
		expect(initialization.evidence.initialized).toBe(initialization.evidence.destroyed)
		expect(initialization.evidence.mountedAssignments).toBeGreaterThan(0)
		local teardown = byWorkload["virtualizer-teardown"]
		expect(teardown.evidence.destroyed).toBeGreaterThan(0)
		expect(teardown.evidence.releasedAssignments).toBeGreaterThan(0)
	end)

	it("reports canonical evidence independently of adaptive iteration count", function()
		local function evidenceByWorkload(iterationsPerSample)
			local records = CoreTiming.run(Core, BenchmarkStats, BenchmarkContract, {
				itemCounts = { 50 },
				scrollStepCount = 2,
				coordinatorItemCount = 6,
				coordinatorStepCount = 2,
				sampleCount = 1,
				warmupCount = 1,
				iterationsPerSample = iterationsPerSample,
				bootstrapResamples = 0,
			})
			local result = {}
			for _, record in records do
				result[record.workload] = record.evidence
			end
			return result
		end

		local singleIteration = evidenceByWorkload(1)
		local severalIterations = evidenceByWorkload(3)
		for _, workload in
			{
				"active-state-toggle",
				"initial-follow-pagination-policy",
				"measurement-anchor-preservation",
				"sticky-pinned-placement",
				"virtualizer-initialization",
				"virtualizer-teardown",
				"within-band-scrolling",
			}
		do
			expect(severalIterations[workload]).toEqual(singleIteration[workload])
		end
	end)
end)
