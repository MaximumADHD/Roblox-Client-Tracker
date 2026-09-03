local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local CoreRoot = ReplicatedStorage.Packages._Workspace.ViewRecycler.ViewRecycler
local Core = require(Root.Parent.ViewRecycler)
local JestGlobals = require(Root.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local BenchmarkContract = require(CoreRoot.Core.Diagnostics.__benchmarks__.BenchmarkContract)
local BenchmarkStats = require(CoreRoot.Core.Diagnostics.__benchmarks__.BenchmarkStats)
local CanvasItemPlacer = require(Root.RobloxAdapter.CanvasItemPlacer)
local HostPlacement = require(Root.RobloxAdapter.HostPlacement)
local Measurer = require(Root.RobloxAdapter.Measurer)
local ResponsibilityCatalog = require(CoreRoot.Core.Diagnostics.__benchmarks__.ResponsibilityCatalog)
local RobloxTiming = require(script.Parent.RobloxTiming)
local ScrollingFrameSync = require(Root.RobloxAdapter.ScrollingFrameSync)
local Signals = require(Root.Parent.Signals)
local ViewportCoordinator = require(Root.RobloxAdapter.ViewportCoordinator)

local function runTinyBenchmark()
	return RobloxTiming.run(
		{
			Axis = Core.Axis,
			CanvasItemPlacer = CanvasItemPlacer,
			HostPlacement = HostPlacement,
			Measurer = Measurer,
			ScrollingFrameSync = ScrollingFrameSync,
			Signals = Signals,
			ViewportCoordinator = ViewportCoordinator,
		},
		BenchmarkStats,
		BenchmarkContract,
		{
			operationCount = 2,
			sampleCount = 1,
			warmupCount = 0,
			iterationsPerSample = 1,
			bootstrapResamples = 0,
		}
	)
end

describe("RobloxTiming", function()
	it("emits deterministic evidence for every grouped Roblox workload", function()
		local records = runTinyBenchmark()

		expect(#records).toBe(10)
		expect(records[1].workload).toBe("geometry-placement-paths")
		expect(records[1].evidence.placementCalls).toBe(8)
		expect(records[1].evidence.changedPropertyWrites).toBe(2)
		expect(records[1].evidence.unchangedPropertyWrites).toBe(0)
		expect(records[1].evidence.reparentPropertyWrites).toBe(24)

		expect(records[2].workload).toBe("viewport-overlay-placement-routing")
		expect(records[2].evidence.canvasFallbackGeometryPublications).toBe(2)
		expect(records[2].evidence.overlayGeometryPublications).toBe(2)
		expect(records[2].evidence.routingPublications).toBe(2)
		expect(records[2].evidence.routingReparents).toBe(2)
		expect(records[2].evidence.canvasFallbackHostParent).toBe(true)
		expect(records[2].evidence.overlayHostParent).toBe(true)
		expect(records[2].evidence.routedHostInOverlay).toBe(true)
		expect(records[2].evidence.canvasFallbackHostOffset).toBe(2)
		expect(records[2].evidence.overlayHostOffset).toBe(2)

		expect(records[3].workload).toBe("reparent-selection-cleanup")
		expect(records[3].evidence.placements).toBe(2)
		expect(records[3].evidence.selectionClears).toBe(1)
		expect(records[3].evidence.detachments).toBe(2)
		expect(records[3].evidence.finalParentIsNil).toBe(true)

		expect(records[4].workload).toBe("canvas-item-view-runtime-lease-lifecycle")
		expect(records[4].evidence.attachments).toBe(2)
		expect(records[4].evidence.detachments).toBe(2)
		expect(records[4].evidence.finalParentIsNil).toBe(true)

		expect(records[5].workload).toBe("scroll-viewport-offset-correction-sync")
		expect(records[5].evidence.viewportUpdates).toBe(2)
		expect(records[5].evidence.runtimeUpdates).toBe(4)
		expect(records[5].evidence.finalScrollOffset).toBe(2)

		expect(records[6].workload).toBe("canvas-size-publication")
		expect(records[6].evidence.canvasPublications).toBe(2)
		expect(records[6].evidence.finalCanvasLength).toBe(80)

		expect(records[7].workload).toBe("measurement-adapter-scheduling")
		expect(records[7].evidence.settleRequests).toBe(4)
		expect(records[7].evidence.uniquePendingHeartbeats).toBe(2)
		expect(records[7].evidence.batchFlushes).toBe(2)
		expect(records[7].evidence.batchedMeasurements).toBe(4)
		expect(records[7].evidence.cancellations).toBe(2)
		expect(records[7].evidence.deferredCallbacksRemaining).toBe(0)

		expect(records[8].workload).toBe("measurement-heartbeat-observation")
		expect(records[8].evidence.observedMeasurements).toBe(1)
		expect(records[8].evidence.lastMeasuredLength).toBe(40)
		expect(records[8].evidence.pendingHeartbeats).toBe(0)
		expect(records[8].evidence.completionBarrier).toBe("RunService.Heartbeat")

		expect(records[9].workload).toBe("viewport-activation-transitions")
		expect(records[9].evidence.evaluations).toBe(6)
		expect(records[9].evidence.transitions).toBe(4)
		expect(records[9].evidence.noOpEvaluations).toBe(2)

		expect(records[10].workload).toBe("full-adapter-teardown")
		expect(records[10].evidence.adaptersDestroyed).toBe(2)
		expect(records[10].evidence.itemViewsDestroyed).toBeGreaterThan(0)
		expect(records[10].evidence.idempotentDestroyCalls).toBe(2)
	end)

	it("attributes every cataloged Roblox responsibility with explicit timing boundaries", function()
		local records = runTinyBenchmark()
		local covered = {}
		for _, record in records do
			expect(record.owner).toBe("roblox")
			expect(record.layer).toBe("robloxHost")
			expect(type(record.timingClass)).toBe("string")
			expect(type(record.timing.includesSchedulerWaits)).toBe("boolean")
			covered[record.responsibility] = true
		end

		for _, responsibility in ResponsibilityCatalog.byOwner.roblox do
			expect(covered[responsibility]).toBe(true)
		end
		expect(records[1].timingClass).toBe("hostBoundary")
		expect(records[4].timingClass).toBe("integrated")
		expect(records[7].timingClass).toBe("phased")
		expect(records[8].timingClass).toBe("hostBoundary")
		expect(records[8].timing.includesSchedulerWaits).toBe(true)
		for index, record in records do
			if index ~= 8 then
				expect(record.timing.includesSchedulerWaits).toBe(false)
			end
		end
	end)
end)
