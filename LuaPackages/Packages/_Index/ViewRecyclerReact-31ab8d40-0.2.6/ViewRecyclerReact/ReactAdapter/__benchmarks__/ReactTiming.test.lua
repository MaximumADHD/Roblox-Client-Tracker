local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

local Root = script:FindFirstAncestor("ViewRecyclerReact")
local CoreRoot = ReplicatedStorage.Packages._Workspace.ViewRecycler.ViewRecycler
local TestDependencies = require(Root.TestDependencies)
local JestGlobals = TestDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local BenchmarkContract = require(CoreRoot.Core.Diagnostics.__benchmarks__.BenchmarkContract)
local BenchmarkStats = require(CoreRoot.Core.Diagnostics.__benchmarks__.BenchmarkStats)
local React = require(Root.Parent.React)
local ResponsibilityCatalog = require(CoreRoot.Core.Diagnostics.__benchmarks__.ResponsibilityCatalog)
local ReactRoblox = TestDependencies.ReactRoblox
local LifecycleWorkloads = require(script.Parent.LifecycleWorkloads)
local ReactTiming = require(script.Parent.ReactTiming)
local SignalsReact = require(Root.Parent.SignalsReact)
local ViewRecycler = require(Root)

local dependencies = {
	React = React,
	ReactRoblox = ReactRoblox,
	RunService = RunService,
	LifecycleWorkloads = LifecycleWorkloads,
	SignalsReact = SignalsReact,
	ViewRecycler = ViewRecycler,
}

local function runTinyBenchmark()
	return ReactTiming.run(dependencies, BenchmarkStats, BenchmarkContract, {
		itemCount = 20,
		scrollStepCount = 2,
		mountVisibleRows = { 2 },
		recyclingStateVisibleRows = 2,
		lifecycleItemCount = 2,
		propagationItemCount = 20,
		sampleCount = 1,
		warmupCount = 0,
		bootstrapResamples = 0,
	})
end

describe("ReactTiming", function()
	it("completes repeated declarative reconciliation at native sampling scale", function()
		local record = ReactTiming.runDeclarativeDataReconciliation(dependencies, BenchmarkStats, BenchmarkContract, {
			sampleCount = 200,
			warmupCount = 5,
			bootstrapResamples = 0,
		}, true)

		expect(record.workload).toBe("declarative-data-reconciliation")
		expect(record.arms.viewRecycler.sampleCount).toBe(200)
		expect(record.arms.viewRecycler.warmupCount).toBe(5)
		expect(record.evidence.reconciliations).toBe(205)
	end)

	it("reports completed host, propagation, and lifecycle workloads", function()
		local records = runTinyBenchmark()

		expect(#records).toBe(20)
		expect(records[1].workload).toBe("completed-mount")
		expect(records[1].timing.basis).toBe("completedMount")
		expect(records[2].workload).toBe("completed-uniform-traversal")
		expect(records[2].evidence.completionBarrier).toBe("destinationRowCommitted")
		expect(records[2].evidence.reactWorkFlush).toBe("ReactRoblox.actWithMockScheduler")
		expect(records[3].workload).toBe("completed-measured-traversal")
		expect(records[3].evidence.completionBarrier).toBe("destinationRowCommittedAndMeasurementAccepted")
		expect(records[3].evidence.acceptedMeasurementsPerTraversal).toBeGreaterThan(0)
		expect(records[4].workload).toBe("measurement-settle-phases")
		expect(records[4].evidence.completionPhaseCounts.measurementAccepted.afterMutation).toBeNil()
		expect(records[4].evidence.completionPhaseCounts.measurementAccepted.afterAct).toBeNil()
		expect(records[4].evidence.completionPhaseCounts.measurementAccepted.deferred).toBeNil()
		expect(records[4].evidence.completionPhaseCounts.measurementAccepted.heartbeat1Settled).toBe(1)
		expect(records[4].evidence.settledHostSizeCounts["0"]).toBeNil()
		for index, scenario in { "at-start", "in-middle", "before-visible-anchor", "at-end" } do
			local record = records[index + 4]
			expect(record.workload).toBe("measured-insertion-propagation")
			expect(record.scale.scenario).toBe(scenario)
			expect(record.evidence.contentLength).toBe(880)
			expect(record.arms.assignmentToMeasurementStart.medianMs).toBeGreaterThan(0)
			expect(record.arms.measurementProcessing.medianMs).toBeGreaterThanOrEqual(0)
			expect(record.arms.measurementProcessedToLibraryPublication.medianMs).toBeGreaterThanOrEqual(0)
			expect(record.arms.libraryPublicationToHostObservation.medianMs).toBeGreaterThanOrEqual(0)
			expect(record.arms.assignmentToHostObservation.medianMs).toBeGreaterThan(0)
		end
		expect(records[9].workload).toBe("completed-recycling-transfer")
		expect(records[9].scale.physicalHosts).toBe(1)
		expect(records[9].evidence.untilCommit.mounts).toBe(1)
		expect(records[9].evidence.untilCommit.unmounts).toBe(0)
		expect(records[9].evidence.untilCommit.sameContentInstance).toBe(true)
		expect(records[9].evidence.untilCommit.transfers).toBe(1)
		expect(records[9].evidence.untilCommit.activations).toBe(1)
		expect(records[9].evidence.untilCommit.deactivations).toBe(1)
		expect(records[9].evidence.untilCommit.firstListWidth).toBe(400)
		expect(records[9].evidence.untilCommit.secondListWidth).toBe(200)
		expect(records[9].evidence.immediate.mounts).toBe(1)
		expect(records[9].evidence.immediate.unmounts).toBe(0)
		expect(records[9].evidence.immediate.sameContentInstance).toBe(true)
		expect(records[9].evidence.immediate.transfers).toBe(1)
		expect(records[9].evidence.immediate.activations).toBe(1)
		expect(records[9].evidence.immediate.deactivations).toBe(1)
		expect(records[9].evidence.untilCommit.milestones.assignmentMs).toBeGreaterThanOrEqual(0)
		expect(records[9].evidence.untilCommit.milestones.commitMs).toBeGreaterThanOrEqual(0)
		expect(records[9].evidence.untilCommit.milestones.layoutMs).toBeGreaterThanOrEqual(0)
		expect(records[9].evidence.untilCommit.milestones.hostMs).toBeGreaterThanOrEqual(0)
		expect(records[9].evidence.fixedSizeMeasurementMilestone).toBe("notRequiredUniformLayout")
		expect(records[10].workload).toBe("completed-automatic-size-recycling-transfer")
		expect(records[10].evidence.wrappedUntilCommit.mounts).toBe(1)
		expect(records[10].evidence.wrappedUntilCommit.unmounts).toBe(0)
		expect(records[10].evidence.wrappedUntilCommit.sameContentInstance).toBe(true)
		expect(records[10].evidence.wrappedUntilCommit.acceptedMeasurements).toBeGreaterThan(0)
		expect(records[10].evidence.wrappedUntilCommit.milestones.measurementMs).toBeGreaterThanOrEqual(0)
		expect(records[10].evidence.wrappedImmediate.sameContentInstance).toBe(true)
		expect(records[11].workload).toBe("viewport-active-gating")
		expect(records[11].evidence.untilCommit.activations).toBeGreaterThan(0)
		expect(records[11].evidence.untilCommit.deactivations).toBeGreaterThan(0)
		expect(records[12].workload).toBe("recycling-scope-high-water-lifecycle")
		expect(records[12].evidence.createdHosts).toBe(4)
		expect(records[12].evidence.listItemHosts).toBe(4)
		expect(records[12].evidence.publishedHosts).toBe(4)
		expect(records[12].evidence.sameListRecyclingScope).toBe(true)
		expect(records[12].evidence.scopeWideHostScans).toBe(0)
		expect(records[13].workload).toBe("composed-recyclable-churn")
		expect(records[13].evidence.assignmentUpdates).toBe(1)
		expect(records[13].evidence.placementFlushes).toBe(1)
		expect(records[14].workload).toBe("declarative-data-reconciliation")
		expect(records[14].evidence.finalCommittedText).toBe("Reconciled 10")
		expect(records[14].evidence.finalContentLength).toBe(800)
		expect(records[15].workload).toBe("data-layout-prop-replacement")
		expect(records[15].evidence.finalCommittedText).toBe("Replacement first")
		expect(records[15].evidence.finalContentLength).toBe(924)
		expect(records[16].workload).toBe("item-binding-delivery")
		expect(records[16].evidence.rerendersDuringDelivery).toBe(0)
		expect(records[16].evidence.deliveredAssignments).toBeGreaterThan(0)
		expect(records[17].workload).toBe("signal-item-publication")
		expect(records[17].evidence.publishedAssignments).toBeGreaterThan(0)
		expect(records[18].workload).toBe("recyclable-view-readiness")
		expect(records[18].evidence.readyOnCommitVisible.presentations).toBeGreaterThan(0)
		expect(records[18].evidence.readyOnCommitHidden.presentations).toBeGreaterThan(0)
		expect(records[18].evidence.readyOnAssignment.presentations).toBeGreaterThan(0)
		expect(records[18].evidence.readyOnCommitVisible.completionPhaseCounts.presentationCommitted.afterMutation).toBeNil()
		expect(records[18].evidence.readyOnCommitVisible.completionPhaseCounts.presentationCommitted.afterAct).toBe(1)
		expect(records[18].evidence.readyOnCommitHidden.completionPhaseCounts.presentationCommitted.afterAct).toBe(1)
		expect(records[18].evidence.readyOnAssignment.completionPhaseCounts.presentationCommitted.afterMutation).toBe(1)
		expect(records[19].workload).toBe("virtual-list-teardown")
		expect(records[19].evidence.unmountedRows).toBe(records[19].evidence.mountedRows)
		expect(records[19].evidence.descendantsAfterUnmount).toBe(0)
		expect(records[20].workload).toBe("recycling-state-mount-overhead")
		expect(records[20].arms.reactState.sampleCount).toBe(1)
		expect(records[20].arms.recyclingState.sampleCount).toBe(1)
		expect(records[20].evidence.reactStateMountedItemViews).toBe(2)
		expect(records[20].evidence.recyclingStateMountedItemViews).toBe(2)
	end)

	it("covers every cataloged React responsibility with contract metadata", function()
		local records = runTinyBenchmark()
		local covered = {}
		for _, record in records do
			expect(record.owner).toBe("react")
			expect(record.timingClass).never.toBeNil()
			covered[record.responsibility] = true
		end

		for _, responsibility in ResponsibilityCatalog.byOwner.react do
			expect(covered[responsibility]).toBe(true)
		end
	end)

	it("reports the earliest completed-work phase without unconditional frame waits", function()
		local records = runTinyBenchmark()
		local uniformRowPhases = records[2].evidence.completionPhaseCounts.destinationRowCommitted
		local measuredRowPhases = records[3].evidence.completionPhaseCounts.destinationRowCommitted
		local measurementPhases = records[3].evidence.completionPhaseCounts.measurementAccepted
		local untilCommitTransferPhases = records[9].evidence.untilCommit.completionPhaseCounts.destinationPresented
		local immediateTransferPhases = records[9].evidence.immediate.completionPhaseCounts.destinationPresented
		local wrappedMeasurementPhases =
			records[10].evidence.wrappedUntilCommit.completionPhaseCounts.measurementSettled

		expect(
			(uniformRowPhases.afterMutation or 0) + (uniformRowPhases.afterAct or 0) + (uniformRowPhases.deferred or 0)
		).toBe(2)
		expect(uniformRowPhases.heartbeatSettled).toBeNil()
		expect(
			(measuredRowPhases.afterMutation or 0)
				+ (measuredRowPhases.afterAct or 0)
				+ (measuredRowPhases.deferred or 0)
		).toBe(2)
		expect(measuredRowPhases.heartbeatSettled).toBeNil()
		expect(measurementPhases.afterMutation).toBeNil()
		expect(measurementPhases.afterAct).toBeNil()
		expect(measurementPhases.deferred).toBeNil()
		expect(measurementPhases.heartbeatSettled).toBe(2)
		expect(untilCommitTransferPhases.heartbeatSettled).toBeNil()
		expect(immediateTransferPhases.heartbeatSettled).toBeNil()
		expect(wrappedMeasurementPhases.heartbeatSettled).toBeGreaterThanOrEqual(1)
		expect(records[14].evidence.completionPhaseCounts.reconciledContentCommitted.afterAct).toBe(1)
		expect(records[15].evidence.completionPhaseCounts.dataAndLayoutPropsCommitted.afterAct).toBe(1)
		expect(records[16].evidence.completionPhaseCounts.bindingDelivered.afterMutation).toBe(1)
		expect(records[19].evidence.completionPhaseCounts.allRowsUnmountedAndHostsRemoved.afterAct).toBe(1)
	end)
end)
