export type Options = {
	sampleCount: number?,
	minSampleCount: number?,
	maxSampleCount: number?,
	warmupCount: number?,
	iterationsPerSample: number?,
	targetSampleMs: number?,
	maxIterationsPerSample: number?,
	targetRelativeHalfWidth: number?,
	convergenceCheckInterval: number?,
	timeBudgetSeconds: number?,
	bootstrapResamples: number?,
	randomSeed: number?,
	clock: (() -> number)?,
	itemCounts: { number }?,
	scrollStepCount: number?,
	coordinatorItemCount: number?,
	coordinatorStepCount: number?,
}

type Item = {
	id: number,
	kind: string,
}

type CoreApi = any
type BenchmarkStatsApi = {
	measure: (operation: () -> (), options: Options?) -> { [string]: any },
}
type BenchmarkContractApi = {
	create: (options: any) -> any,
}
type Counters = {
	synchronizations: number,
	reassignedAssignments: number,
	acquiredAssignments: number,
	releasedAssignments: number,
	acceptedMeasurements: number,
}

local Src = script:FindFirstAncestor("ViewRecycler")
local ResponsibilityCatalog = require(script.Parent.ResponsibilityCatalog)
local Signals = require(Src.Parent.Signals)
local buildPlacementPlan = require(Src.Core.PinnedItems.buildPlacementPlan)

local DEFAULT_ITEM_COUNTS = { 1000, 100000 }
local DEFAULT_SCROLL_STEP_COUNT = 100
local DEFAULT_COORDINATOR_ITEM_COUNT = 40
local DEFAULT_COORDINATOR_STEP_COUNT = 100
local ITEM_LENGTH = 40
local VIEWPORT_LENGTH = 480
local CROSS_AXIS_LENGTH = 800

local function createItems(itemCount: number): { Item }
	local items = table.create(itemCount)
	for index = 1, itemCount do
		items[index] = {
			id = index,
			kind = if index % 20 == 0 then "header" else "row",
		}
	end
	return items
end

local function createOffsets(itemCount: number, scrollStepCount: number, scrollPattern: string?): { number }
	local maximumOffset = math.max(0, itemCount * ITEM_LENGTH - VIEWPORT_LENGTH)
	local offsets = table.create(scrollStepCount)
	for step = 1, scrollStepCount - 1 do
		if scrollPattern == "short" then
			offsets[step] = math.min(maximumOffset, step * ITEM_LENGTH)
		else
			local unit = ((step * 7919) % 104729) / 104729
			offsets[step] = math.floor(unit * maximumOffset)
		end
	end
	offsets[scrollStepCount] = 0
	return offsets
end

local function snapshotPlacementChecksum(snapshot): number
	local checksum = 0
	for _, entry in snapshot.entries do
		checksum += entry.itemLayout.startOffset
		checksum += entry.canvasPlacement.mainAxisOffset or 0
		checksum += if entry.viewportPlacement == nil then 0 else entry.viewportPlacement.mainAxisOffset or 0
	end
	return checksum
end

local function consumeCommittedSnapshot(snapshot): number
	return snapshot.version + #snapshot.entries
end

local function createCounters(): Counters
	return {
		synchronizations = 0,
		reassignedAssignments = 0,
		acquiredAssignments = 0,
		releasedAssignments = 0,
		acceptedMeasurements = 0,
	}
end

local function resetCounters(counters: Counters)
	counters.synchronizations = 0
	counters.reassignedAssignments = 0
	counters.acquiredAssignments = 0
	counters.releasedAssignments = 0
	counters.acceptedMeasurements = 0
end

local function createVirtualizer(Core: CoreApi, itemCount: number, measured: boolean)
	local nextItemViewId = 0
	local counters = createCounters()
	local layout = if measured
		then Core.Layout.measured({ estimatedItemLength = ITEM_LENGTH })
		else Core.Layout.uniform({ itemLength = ITEM_LENGTH })
	local recyclingScope = Core.Adapter.createRecyclingScope({
		adapter = {
			create = function()
				nextItemViewId += 1
				return nextItemViewId
			end,
			destroy = function() end,
		},
		maxPoolSize = 4,
	})
	local virtualizer = Core.Adapter.createVirtualizer({
		dataSource = Core.DataSource.snapshot(createItems(itemCount), function(item: Item)
			return tostring(item.id)
		end),
		layout = layout,
		recyclingScope = recyclingScope,
		getItemViewType = function(item: Item)
			return item.kind
		end,
		overscan = 2,
		diagnostics = function(event)
			if event.kind == "itemViewsSynchronized" then
				counters.synchronizations += 1
				counters.reassignedAssignments += event.reassigned
				counters.acquiredAssignments += event.acquired
				counters.releasedAssignments += event.released
			elseif event.kind == "measurementsProcessed" then
				counters.acceptedMeasurements += event.accepted
			end
		end,
	})
	virtualizer.dispatch({ type = Core.VirtualizerCommandType.Activate })
	virtualizer.dispatch({
		type = Core.VirtualizerCommandType.SetViewportSize,
		scrollAxisLength = VIEWPORT_LENGTH,
		crossAxisLength = CROSS_AXIS_LENGTH,
	})
	return virtualizer, layout, counters, recyclingScope
end

local function measureTraversal(
	Core: CoreApi,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemCount: number,
	scrollStepCount: number,
	measured: boolean,
	submitMeasurements: boolean,
	scrollPattern: string,
	workload: string,
	description: string,
	responsibility: string,
	options: Options
)
	local virtualizer, layout, counters, recyclingScope = createVirtualizer(Core, itemCount, measured)
	local offsets = createOffsets(itemCount, scrollStepCount, scrollPattern)
	local phase = 0
	local checksum = 0
	local observablePlacementChecksum = 0
	local submittedMeasurements = 0
	local committedSnapshotTouch = 0

	local function runTraversal(collectPlacementEvidence: boolean)
		resetCounters(counters)
		submittedMeasurements = 0
		observablePlacementChecksum = 0
		committedSnapshotTouch = 0
		checksum = 0
		phase = (phase + 1) % 5
		for _, offset in offsets do
			local scrollUpdate =
				virtualizer.dispatch({ type = Core.VirtualizerCommandType.SetScrollOffset, offset = offset })
			committedSnapshotTouch += consumeCommittedSnapshot(scrollUpdate.snapshot)
			if collectPlacementEvidence then
				observablePlacementChecksum += snapshotPlacementChecksum(scrollUpdate.snapshot)
			end
			if submitMeasurements then
				local measurements = {}
				for _, itemView in virtualizer.query({ type = Core.VirtualizerQueryType.GetItemViews }) do
					local intent =
						virtualizer.query({ type = Core.VirtualizerQueryType.GetPlacementIntent, itemView = itemView })
					local identity = if intent == nil then nil else intent.measurementIdentity
					if identity ~= nil then
						table.insert(measurements, {
							itemIndex = identity.itemIndex,
							itemKey = identity.itemKey,
							assignmentGeneration = identity.assignmentGeneration,
							itemRevision = identity.itemRevision,
							length = 36 + ((identity.itemIndex + phase) % 5) * 2,
						})
					end
				end
				submittedMeasurements += #measurements
				local measurementUpdate = virtualizer.dispatch({
					type = Core.VirtualizerCommandType.SubmitMeasurements,
					measurements = measurements,
				})
				committedSnapshotTouch += consumeCommittedSnapshot(measurementUpdate.snapshot)
				if collectPlacementEvidence then
					observablePlacementChecksum += snapshotPlacementChecksum(measurementUpdate.snapshot)
				end
				checksum += #measurements
			end
		end
		local visibleRange = virtualizer.getSnapshot().visibleRange
		checksum += visibleRange.firstIndex + visibleRange.lastIndex
	end

	local summary = benchmarkStats.measure(function()
		runTraversal(false)
	end, options)
	runTraversal(true)
	local mountedItemViews = #virtualizer.query({ type = Core.VirtualizerQueryType.GetItemViews })
	local settlementSynchronizationBudget = scrollStepCount * (if submitMeasurements then 2 else 1)

	virtualizer.dispatch({ type = Core.VirtualizerCommandType.Destroy })
	recyclingScope.destroy()
	layout.destroy()
	assert(
		checksum > 0 and committedSnapshotTouch > 0 and observablePlacementChecksum > 0,
		`{workload} benchmark did not expose mounted placements`
	)
	assert(
		counters.synchronizations <= settlementSynchronizationBudget,
		`{workload} synchronized more than once per accepted scroll or measurement mutation`
	)
	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "core",
		owner = "core",
		responsibility = responsibility,
		timingClass = "integrated",
		workload = workload,
		description = description,
		scale = {
			items = itemCount,
			scrollSteps = scrollStepCount,
			scrollPattern = scrollPattern,
			layout = if measured then "measured" else "uniform",
			submitsMeasurements = submitMeasurements,
		},
		timing = {
			unit = "ms",
			basis = "scrollTraversal",
			operationsPerSample = scrollStepCount,
			includesSchedulerWaits = false,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			mountedItemViews = mountedItemViews,
			synchronizations = counters.synchronizations,
			settlementSynchronizationBudget = settlementSynchronizationBudget,
			reassignedAssignments = counters.reassignedAssignments,
			acquiredAssignments = counters.acquiredAssignments,
			releasedAssignments = counters.releasedAssignments,
			submittedMeasurements = submittedMeasurements,
			acceptedMeasurements = counters.acceptedMeasurements,
			observablePlacementChecksum = observablePlacementChecksum,
		},
	})
end

local function measureCoordinator(
	Core: CoreApi,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemCount: number,
	stepCount: number,
	pattern: "retained" | "churn",
	options: Options
)
	local function createFixture(trackDiagnostics: boolean)
		local nextResource = 0
		local diagnosticEvents = 0
		local leaseTokensObserved = 0
		local scope = Core.Adapter.createRecyclingScope({
			adapter = {
				create = function()
					nextResource += 1
					return nextResource
				end,
				destroy = function() end,
			},
			onPoolChanged = if trackDiagnostics
				then function()
					diagnosticEvents += 1
				end
				else nil,
		})
		local first = table.create(itemCount)
		local second = table.create(itemCount)
		for index = 1, itemCount do
			first[index] = {
				key = `a{index}`,
				index = index,
				value = index,
			}
			second[index] = if pattern == "retained"
				then first[index]
				else {
					key = `b{index}`,
					index = index,
					value = index,
				}
		end
		local leases = {}
		local leasesByKey = {}
		local owner = {}
		local function synchronize(desired)
			local releases = {}
			local requests = {}
			local requestedAssignments = {}
			local nextLeasesByKey = {}
			for _, assignment in desired do
				local retained = leasesByKey[assignment.key]
				if retained ~= nil then
					nextLeasesByKey[assignment.key] = retained
				else
					table.insert(requests, { viewType = "row" })
					table.insert(requestedAssignments, assignment)
				end
			end
			for key, lease in leasesByKey do
				if nextLeasesByKey[key] == nil then
					table.insert(releases, { view = lease.view, leaseToken = lease.leaseToken })
				end
			end
			local result = scope.exchange(owner, releases, requests)
			leaseTokensObserved += #result.acquired
			for index, acquired in result.acquired do
				nextLeasesByKey[requestedAssignments[index].key] = acquired
			end
			leasesByKey = nextLeasesByKey
			leases = table.create(#desired)
			for index, assignment in desired do
				leases[index] = leasesByKey[assignment.key]
			end
		end
		synchronize(first)
		local phase = false
		return {
			run = function()
				for _ = 1, stepCount do
					phase = not phase
					synchronize(if phase then second else first)
				end
			end,
			getDiagnosticEvents = function()
				return diagnosticEvents
			end,
			getLeaseTokensObserved = function()
				return leaseTokensObserved
			end,
			getScopeInventory = scope.getScopeInventory,
			destroy = function()
				scope.exchange(owner, leases, {})
				leases = {}
				leasesByKey = {}
				scope.destroy()
			end,
		}
	end

	local withoutDiagnostics = createFixture(false)
	local withDiagnostics = createFixture(true)
	local withoutSummary = benchmarkStats.measure(withoutDiagnostics.run, options)
	local withSummary = benchmarkStats.measure(withDiagnostics.run, options)
	local resources = #withoutDiagnostics.getScopeInventory()
	local diagnosticEvents = withDiagnostics.getDiagnosticEvents()
	local leaseTokensObserved = withoutDiagnostics.getLeaseTokensObserved()
	withoutDiagnostics.destroy()
	withDiagnostics.destroy()

	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "subsystem",
		owner = "core",
		responsibility = ResponsibilityCatalog.Core.Diagnostics,
		timingClass = "integrated",
		workload = "recycling-scope-sync",
		description = "Synchronizes a Recycling scope with retained or fully replaced desired keys.",
		scale = {
			items = itemCount,
			synchronizations = stepCount,
			pattern = pattern,
		},
		timing = {
			unit = "ms",
			basis = "coordinatorSynchronizationBatch",
			operationsPerSample = stepCount,
			includesSchedulerWaits = false,
		},
		arms = {
			diagnosticsDisabled = withoutSummary,
			diagnosticsEnabled = withSummary,
		},
		evidence = {
			resources = resources,
			diagnosticEvents = diagnosticEvents,
			leaseTokensObserved = leaseTokensObserved,
		},
	})
end

local function measureWithinBand(
	Core: CoreApi,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemCount: number,
	stepCount: number,
	options: Options
)
	local function createArm(measured: boolean)
		local virtualizer, layout, counters, recyclingScope = createVirtualizer(Core, itemCount, measured)
		local direction = 1
		local observablePlacementChecksum = 0
		local committedSnapshotTouch = 0
		local function run(collectPlacementEvidence: boolean)
			resetCounters(counters)
			observablePlacementChecksum = 0
			committedSnapshotTouch = 0
			for step = 1, stepCount do
				local update = virtualizer.dispatch({
					type = Core.VirtualizerCommandType.SetScrollOffset,
					offset = if direction == 1 then step else stepCount - step,
				})
				committedSnapshotTouch += consumeCommittedSnapshot(update.snapshot)
				if collectPlacementEvidence then
					observablePlacementChecksum += snapshotPlacementChecksum(update.snapshot)
				end
			end
			direction = -direction
		end
		return {
			run = run,
			counters = counters,
			getObservablePlacementChecksum = function()
				return observablePlacementChecksum
			end,
			getCommittedSnapshotTouch = function()
				return committedSnapshotTouch
			end,
			prepareCanonicalEvidence = function()
				direction = 1
			end,
			destroy = function()
				virtualizer.dispatch({ type = Core.VirtualizerCommandType.Destroy })
				recyclingScope.destroy()
				layout.destroy()
			end,
		}
	end

	local uniform = createArm(false)
	local measured = createArm(true)
	local uniformSummary = benchmarkStats.measure(function()
		uniform.run(false)
	end, options)
	local measuredSummary = benchmarkStats.measure(function()
		measured.run(false)
	end, options)
	uniform.prepareCanonicalEvidence()
	measured.prepareCanonicalEvidence()
	uniform.run(true)
	measured.run(true)
	local evidence = {
		uniformSynchronizations = uniform.counters.synchronizations,
		measuredSynchronizations = measured.counters.synchronizations,
		uniformObservablePlacementChecksum = uniform.getObservablePlacementChecksum(),
		measuredObservablePlacementChecksum = measured.getObservablePlacementChecksum(),
	}
	assert(
		uniform.getCommittedSnapshotTouch() > 0
			and measured.getCommittedSnapshotTouch() > 0
			and evidence.uniformObservablePlacementChecksum > 0
			and evidence.measuredObservablePlacementChecksum > 0,
		"within-Band benchmark did not consume committed mounted placements"
	)
	uniform.destroy()
	measured.destroy()

	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "core",
		owner = "core",
		responsibility = ResponsibilityCatalog.Core.ViewportRange,
		timingClass = "integrated",
		workload = "within-band-scrolling",
		description = "Scrolls by sub-item increments inside one render-window band without sticky or pinned items.",
		scale = {
			items = itemCount,
			scrollSteps = stepCount,
			stickyOrPinned = false,
		},
		timing = {
			unit = "ms",
			basis = "withinBandScrollBatch",
			operationsPerSample = stepCount,
			includesSchedulerWaits = false,
		},
		arms = {
			uniform = uniformSummary,
			measured = measuredSummary,
		},
		evidence = evidence,
	})
end

local function measureProgrammaticScroll(
	Core: CoreApi,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemCount: number,
	stepCount: number,
	options: Options
)
	local virtualizer, layout, _, recyclingScope = createVirtualizer(Core, itemCount, false)
	local snapshots = 0
	local restoredOffsetChecksum = 0
	local observablePlacementChecksum = 0
	local committedSnapshotTouch = 0
	local function runProgrammaticScroll(collectPlacementEvidence: boolean)
		snapshots = 0
		restoredOffsetChecksum = 0
		observablePlacementChecksum = 0
		committedSnapshotTouch = 0
		for step = 1, stepCount do
			local itemIndex = ((step * 17) % itemCount) + 1
			local targetOffset = virtualizer.query({
				type = Core.VirtualizerQueryType.GetScrollOffsetForItem,
				index = itemIndex,
				alignment = Core.ScrollAlignment.Center,
			})
			local scrollUpdate =
				virtualizer.dispatch({ type = Core.VirtualizerCommandType.ScrollToOffset, offset = targetOffset })
			committedSnapshotTouch += consumeCommittedSnapshot(scrollUpdate.snapshot)
			if collectPlacementEvidence then
				observablePlacementChecksum += snapshotPlacementChecksum(scrollUpdate.snapshot)
			end
			local snapshot = virtualizer.query({ type = Core.VirtualizerQueryType.CaptureScrollAnchorSnapshot })
			snapshots += 1
			local deltaUpdate =
				virtualizer.dispatch({ type = Core.VirtualizerCommandType.ScrollBy, delta = ITEM_LENGTH })
			committedSnapshotTouch += consumeCommittedSnapshot(deltaUpdate.snapshot)
			if collectPlacementEvidence then
				observablePlacementChecksum += snapshotPlacementChecksum(deltaUpdate.snapshot)
			end
			local restoreUpdate =
				virtualizer.dispatch({ type = Core.VirtualizerCommandType.RestoreScrollAnchorSnapshot, snapshot = snapshot })
			committedSnapshotTouch += consumeCommittedSnapshot(restoreUpdate.snapshot)
			if collectPlacementEvidence then
				observablePlacementChecksum += snapshotPlacementChecksum(restoreUpdate.snapshot)
			end
			restoredOffsetChecksum += restoreUpdate.result
		end
	end
	local summary = benchmarkStats.measure(function()
		runProgrammaticScroll(false)
	end, options)
	runProgrammaticScroll(true)
	local finalState = virtualizer.query({ type = Core.VirtualizerQueryType.GetScrollState })
	virtualizer.dispatch({ type = Core.VirtualizerCommandType.Destroy })
	recyclingScope.destroy()
	layout.destroy()
	assert(
		snapshots == stepCount
			and restoredOffsetChecksum > 0
			and committedSnapshotTouch > 0
			and observablePlacementChecksum > 0,
		"programmatic scroll benchmark did not restore snapshots"
	)
	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "core",
		owner = "core",
		responsibility = ResponsibilityCatalog.Core.ProgrammaticScroll,
		timingClass = "integrated",
		workload = "programmatic-scroll-snapshot",
		description = "Resolves item targets, scrolls by offset and delta, and captures and restores stable-key snapshots.",
		scale = {
			items = itemCount,
			scrollCycles = stepCount,
		},
		timing = {
			unit = "ms",
			basis = "programmaticScrollAnchorSnapshotCycle",
			operationsPerSample = stepCount,
			includesSchedulerWaits = false,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			snapshotsCaptured = snapshots,
			restoredOffsetChecksum = restoredOffsetChecksum,
			finalScrollOffset = finalState.scrollOffset,
			observablePlacementChecksum = observablePlacementChecksum,
		},
	})
end

local function measureMeasurementAnchoring(
	Core: CoreApi,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemCount: number,
	stepCount: number,
	options: Options
)
	local virtualizer, layout, _, recyclingScope = createVirtualizer(Core, itemCount, true)
	virtualizer.dispatch({ type = Core.VirtualizerCommandType.SetScrollOffset, offset = ITEM_LENGTH * 10 })
	local visible = virtualizer.getSnapshot().visibleRange
	local identity = nil
	for _, itemView in virtualizer.query({ type = Core.VirtualizerQueryType.GetItemViews }) do
		local intent = virtualizer.query({ type = Core.VirtualizerQueryType.GetPlacementIntent, itemView = itemView })
		local candidate = if intent == nil then nil else intent.measurementIdentity
		if candidate ~= nil and candidate.itemIndex < visible.firstIndex then
			identity = candidate
			break
		end
	end
	assert(identity ~= nil, "measurement anchoring benchmark requires an overscanned item above the visible anchor")
	local corrections = 0
	local correctionMagnitude = 0
	local observablePlacementChecksum = 0
	local function runMeasurementAnchoring()
		corrections = 0
		correctionMagnitude = 0
		observablePlacementChecksum = 0
		for step = 1, stepCount do
			local update = virtualizer.dispatch({
				type = Core.VirtualizerCommandType.SubmitMeasurements,
				measurements = {
					{
						itemIndex = identity.itemIndex,
						itemKey = identity.itemKey,
						assignmentGeneration = identity.assignmentGeneration,
						itemRevision = identity.itemRevision,
						length = if step % 2 == 0 then ITEM_LENGTH else ITEM_LENGTH * 2,
					},
				},
			})
			for _, effect in update.effects do
				if effect.type == Core.VirtualizerEffectType.ScrollCorrection then
					corrections += 1
					correctionMagnitude += math.abs(effect.delta)
				end
			end
			observablePlacementChecksum += consumeCommittedSnapshot(update.snapshot)
		end
	end
	local measurementOptions = table.clone(options)
	measurementOptions.iterationsPerSample = 1
	local summary = benchmarkStats.measure(runMeasurementAnchoring, measurementOptions)
	virtualizer.dispatch({
		type = Core.VirtualizerCommandType.SubmitMeasurements,
		measurements = {
			{
				itemIndex = identity.itemIndex,
				itemKey = identity.itemKey,
				assignmentGeneration = identity.assignmentGeneration,
				itemRevision = identity.itemRevision,
				length = ITEM_LENGTH,
			},
		},
	})
	virtualizer.dispatch({ type = Core.VirtualizerCommandType.SetScrollOffset, offset = ITEM_LENGTH * 10 })
	runMeasurementAnchoring()
	observablePlacementChecksum = snapshotPlacementChecksum(virtualizer.getSnapshot())
	local finalOffset = virtualizer.query({ type = Core.VirtualizerQueryType.GetScrollState }).scrollOffset
	virtualizer.dispatch({ type = Core.VirtualizerCommandType.Destroy })
	recyclingScope.destroy()
	layout.destroy()
	assert(
		corrections > 0 and correctionMagnitude > 0 and observablePlacementChecksum > 0,
		"measurement anchoring benchmark did not expose corrected mounted placements"
	)
	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "core",
		owner = "core",
		responsibility = ResponsibilityCatalog.Core.MeasurementAnchoring,
		timingClass = "integrated",
		workload = "measurement-anchor-preservation",
		description = "Changes a measured overscan item above the visible anchor and preserves the visible position.",
		scale = {
			items = itemCount,
			measurementUpdates = stepCount,
		},
		timing = {
			unit = "ms",
			basis = "measurementAnchorUpdateBatch",
			operationsPerSample = stepCount,
			includesSchedulerWaits = false,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			scrollCorrections = corrections,
			correctionMagnitude = correctionMagnitude,
			finalScrollOffset = finalOffset,
			observablePlacementChecksum = observablePlacementChecksum,
			measuredItemIndex = identity.itemIndex,
			visibleAnchorIndex = visible.firstIndex,
		},
	})
end

local function measureCrossAxisTraversal(
	Core: CoreApi,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemCount: number,
	stepCount: number,
	layoutKind: "grid" | "masonry",
	options: Options
)
	local lengths = table.create(itemCount)
	for index = 1, itemCount do
		lengths[index] = 32 + (index % 5) * 8
	end
	local layout = if layoutKind == "grid"
		then Core.Layout.grid({ itemLength = ITEM_LENGTH, crossAxisCount = 3 })
		else Core.Layout.masonry({
			getItemLength = function(index)
				return lengths[index]
			end,
			crossAxisCount = 3,
			spacing = 4,
		})
	local recyclingScope = Core.Adapter.createRecyclingScope({
		adapter = {
			create = function()
				return {}
			end,
			destroy = function() end,
		},
	})
	local virtualizer = Core.Adapter.createVirtualizer({
		dataSource = Core.DataSource.snapshot(createItems(itemCount), function(item: Item)
			return tostring(item.id)
		end),
		layout = layout,
		recyclingScope = recyclingScope,
		getItemViewType = function()
			return "row"
		end,
		overscan = 1,
	})
	virtualizer.dispatch({ type = Core.VirtualizerCommandType.Activate })
	virtualizer.dispatch({
		type = Core.VirtualizerCommandType.SetViewportSize,
		scrollAxisLength = VIEWPORT_LENGTH,
		crossAxisLength = CROSS_AXIS_LENGTH,
	})
	local checksum = 0
	local observablePlacementChecksum = 0
	local committedSnapshotTouch = 0
	local function runCrossAxisTraversal(collectPlacementEvidence: boolean)
		observablePlacementChecksum = 0
		committedSnapshotTouch = 0
		checksum = 0
		for step = 1, stepCount do
			local update = virtualizer.dispatch({
				type = Core.VirtualizerCommandType.SetScrollOffset,
				offset = step * ITEM_LENGTH,
			})
			committedSnapshotTouch += consumeCommittedSnapshot(update.snapshot)
			if collectPlacementEvidence then
				observablePlacementChecksum += snapshotPlacementChecksum(update.snapshot)
			end
			local range = update.snapshot.visibleRange
			checksum += range.firstIndex + range.lastIndex
			checksum += virtualizer.query({ type = Core.VirtualizerQueryType.GetItemLayout, index = range.firstIndex }).crossAxisCount
		end
	end
	local summary = benchmarkStats.measure(function()
		runCrossAxisTraversal(false)
	end, options)
	runCrossAxisTraversal(true)
	local range = virtualizer.getSnapshot().visibleRange
	local crossAxisCount =
		virtualizer.query({ type = Core.VirtualizerQueryType.GetItemLayout, index = range.firstIndex }).crossAxisCount
	virtualizer.dispatch({ type = Core.VirtualizerCommandType.Destroy })
	recyclingScope.destroy()
	layout.destroy()
	assert(
		checksum > 0 and committedSnapshotTouch > 0 and observablePlacementChecksum > 0,
		`{layoutKind} traversal benchmark did not expose mounted placements`
	)
	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "core",
		owner = "core",
		responsibility = ResponsibilityCatalog.Core.LayoutGeometry,
		timingClass = "integrated",
		workload = `{layoutKind}-traversal`,
		description = `Traverses representative {layoutKind} geometry through the complete Virtualizer path.`,
		scale = {
			items = itemCount,
			scrollSteps = stepCount,
			layout = layoutKind,
		},
		timing = {
			unit = "ms",
			basis = "scrollTraversal",
			operationsPerSample = stepCount,
			includesSchedulerWaits = false,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			queries = stepCount,
			crossAxisCount = crossAxisCount,
			finalVisibleFirst = range.firstIndex,
			finalVisibleLast = range.lastIndex,
			observablePlacementChecksum = observablePlacementChecksum,
		},
	})
end

local function measureAtomicMutation(
	Core: CoreApi,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemCount: number,
	responsibility: string,
	workload: string,
	options: Options
)
	local dataSource = Core.DataSource.sequence(createItems(itemCount), function(item: Item)
		return tostring(item.id)
	end)
	local layout = Core.Layout.uniform({ itemLength = ITEM_LENGTH })
	local batchCount = 0
	local changes = 0
	local corrections = 0
	local correctionMagnitude = 0
	local nextItemViewId = 0
	dataSource.subscribe(function(batch)
		batchCount += 1
		changes += #batch.changes
	end)
	local recyclingScope = Core.Adapter.createRecyclingScope({
		adapter = {
			create = function()
				nextItemViewId += 1
				return nextItemViewId
			end,
			destroy = function() end,
		},
	})
	local virtualizer = Core.Adapter.createVirtualizer({
		dataSource = dataSource,
		layout = layout,
		recyclingScope = recyclingScope,
		getItemViewType = function(item: Item)
			return item.kind
		end,
		overscan = 1,
		preserveScrollPositionOnChange = true,
		onUpdate = function(_, update)
			for _, effect in update.effects do
				if effect.type == Core.VirtualizerEffectType.ScrollCorrection then
					corrections += 1
					correctionMagnitude += math.abs(effect.delta)
				end
			end
		end,
	})
	virtualizer.dispatch({ type = Core.VirtualizerCommandType.Activate })
	virtualizer.dispatch({
		type = Core.VirtualizerCommandType.SetViewportSize,
		scrollAxisLength = VIEWPORT_LENGTH,
		crossAxisLength = CROSS_AXIS_LENGTH,
	})
	virtualizer.dispatch({ type = Core.VirtualizerCommandType.SetScrollOffset, offset = ITEM_LENGTH * 10 })
	local phase = 0
	local observablePlacementChecksum = 0
	local committedSnapshotTouch = 0
	local summary = benchmarkStats.measure(function()
		phase += 1
		committedSnapshotTouch = 0
		local index = virtualizer.getSnapshot().visibleRange.firstIndex
		local current = dataSource.getItem(index)
		dataSource.transaction(function()
			dataSource.setItem(index, {
				id = current.id,
				kind = current.kind,
			})
			dataSource.prepend({
				id = -phase,
				kind = "row",
			})
			dataSource.remove(dataSource.getItemCount())
		end)
		committedSnapshotTouch += consumeCommittedSnapshot(virtualizer.getSnapshot())
	end, options)
	observablePlacementChecksum = snapshotPlacementChecksum(virtualizer.getSnapshot())
	local highestRevision = 0
	for _, itemView in virtualizer.query({ type = Core.VirtualizerQueryType.GetItemViews }) do
		local intent = virtualizer.query({ type = Core.VirtualizerQueryType.GetPlacementIntent, itemView = itemView })
		local identity = if intent == nil then nil else intent.measurementIdentity
		if identity ~= nil then
			highestRevision = math.max(highestRevision, identity.itemRevision)
		end
	end
	local finalOffset = virtualizer.query({ type = Core.VirtualizerQueryType.GetScrollState }).scrollOffset
	virtualizer.dispatch({ type = Core.VirtualizerCommandType.Destroy })
	recyclingScope.destroy()
	layout.destroy()
	assert(batchCount > 0 and changes == batchCount * 3, "atomic mutation benchmark did not emit grouped changes")
	assert(
		highestRevision > 0 and committedSnapshotTouch > 0 and observablePlacementChecksum > 0,
		"atomic mutation benchmark did not expose revised placements"
	)
	assert(corrections > 0, "atomic mutation benchmark did not preserve its anchor")
	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "core",
		owner = "core",
		responsibility = responsibility,
		timingClass = "integrated",
		workload = workload,
		description = "Applies one atomic update/prepend/remove batch while preserving the visible anchor and item revisions.",
		scale = {
			items = itemCount,
			changesPerTransaction = 3,
		},
		timing = {
			unit = "ms",
			basis = "atomicMutation",
			operationsPerSample = 1,
			includesSchedulerWaits = false,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			batches = batchCount,
			changes = changes,
			highestItemRevision = highestRevision,
			scrollCorrections = corrections,
			correctionMagnitude = correctionMagnitude,
			finalScrollOffset = finalOffset,
			observablePlacementChecksum = observablePlacementChecksum,
		},
	})
end

local function measureOverscanPrefetch(
	Core: CoreApi,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemCount: number,
	stepCount: number,
	options: Options
)
	local policyCalls = 0
	local requests = 0
	local currentRequests = 0
	local layout = Core.Layout.uniform({ itemLength = ITEM_LENGTH })
	local recyclingScope = Core.Adapter.createRecyclingScope({
		adapter = {
			create = function()
				return {}
			end,
			destroy = function() end,
		},
	})
	local virtualizer = Core.Adapter.createVirtualizer({
		dataSource = Core.DataSource.snapshot(createItems(itemCount), function(item: Item)
			return tostring(item.id)
		end),
		layout = layout,
		recyclingScope = recyclingScope,
		getItemViewType = function()
			return "row"
		end,
		overscanPolicy = {
			compute = function(context)
				policyCalls += 1
				return if context.scrollDirection == "backward"
					then { before = 3, after = 1 }
					else { before = 1, after = 3 }
			end,
		},
		dataPrefetch = {
			startItems = 2,
			endItems = 4,
		},
	})
	virtualizer.dispatch({ type = Core.VirtualizerCommandType.Activate })
	virtualizer.dispatch({
		type = Core.VirtualizerCommandType.SetViewportSize,
		scrollAxisLength = VIEWPORT_LENGTH,
		crossAxisLength = CROSS_AXIS_LENGTH,
	})
	local summary = benchmarkStats.measure(function()
		for step = 1, stepCount do
			local update = virtualizer.dispatch({
				type = Core.VirtualizerCommandType.SetScrollOffset,
				offset = step * ITEM_LENGTH * 2,
			})
			for _, effect in update.effects do
				if effect.type == Core.VirtualizerEffectType.DataPrefetchRequested then
					requests += 1
					if effect.request.isCurrent() then
						currentRequests += 1
					end
				end
			end
		end
		virtualizer.dispatch({ type = Core.VirtualizerCommandType.SetScrollOffset, offset = ITEM_LENGTH })
	end, options)
	local visible = virtualizer.getSnapshot().visibleRange
	local mounted = virtualizer.getSnapshot().mountedRange
	virtualizer.dispatch({ type = Core.VirtualizerCommandType.Destroy })
	recyclingScope.destroy()
	layout.destroy()
	assert(policyCalls > 0 and requests > 0, "overscan/prefetch benchmark did not exercise both policies")
	local scale = {
		items = itemCount,
		scrollSteps = stepCount + 1,
		prefetchStartItems = 2,
		prefetchEndItems = 4,
	}
	local timing = {
		unit = "ms",
		basis = "overscanPrefetchTraversal",
		operationsPerSample = stepCount + 1,
		includesSchedulerWaits = false,
	}
	local arms = {
		viewRecycler = summary,
	}
	local evidence = {
		policyCalls = policyCalls,
		prefetchRequests = requests,
		currentRequestsObserved = currentRequests,
		visibleItems = visible.lastIndex - visible.firstIndex + 1,
		mountedItems = mounted.lastIndex - mounted.firstIndex + 1,
	}
	return {
		benchmarkContract.create({
			suite = "view-recycler-core",
			layer = "core",
			owner = "core",
			responsibility = ResponsibilityCatalog.Core.OverscanHysteresis,
			timingClass = "integrated",
			workload = "custom-overscan-hysteresis",
			description = "Computes directional custom overscan and maintains the mounted render band.",
			scale = scale,
			timing = timing,
			arms = arms,
			evidence = evidence,
		}),
		benchmarkContract.create({
			suite = "view-recycler-core",
			layer = "core",
			owner = "core",
			responsibility = ResponsibilityCatalog.Core.Prefetch,
			timingClass = "integrated",
			workload = "edge-data-prefetch",
			description = "Publishes edge-scoped prefetch requests during the same representative traversal.",
			scale = scale,
			timing = timing,
			arms = arms,
			evidence = evidence,
		}),
	}
end

local function measurePinnedSticky(
	Core: CoreApi,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemCount: number,
	stepCount: number,
	options: Options
)
	local layout = Core.Layout.uniform({ itemLength = ITEM_LENGTH })
	local pinnedOptions = {
		isItemStickyHeader = function(item: Item)
			return item.kind == "header"
		end,
		pinnedStartItem = {
			key = "$pinned-start",
			value = { id = -1, kind = "pinned" },
			itemViewType = "pinned",
			revision = 1,
			length = 24,
			position = "start",
		},
		pinnedEndItem = {
			key = "$pinned-end",
			value = { id = -2, kind = "pinned" },
			itemViewType = "pinned",
			revision = 1,
			length = 32,
			position = "finish",
		},
	}
	local dataSource = Core.DataSource.snapshot(createItems(itemCount), function(item: Item)
		return tostring(item.id)
	end)
	local recyclingScope = Core.Adapter.createRecyclingScope({
		adapter = {
			create = function()
				return {}
			end,
			destroy = function() end,
		},
	})
	local virtualizer = Core.Adapter.createVirtualizer({
		dataSource = dataSource,
		layout = layout,
		recyclingScope = recyclingScope,
		getItemViewType = function(item: Item)
			return item.kind
		end,
		overscan = 0,
		isItemStickyHeader = pinnedOptions.isItemStickyHeader,
		pinnedStartItem = pinnedOptions.pinnedStartItem,
		pinnedEndItem = pinnedOptions.pinnedEndItem,
	})
	virtualizer.dispatch({ type = Core.VirtualizerCommandType.Activate })
	virtualizer.dispatch({
		type = Core.VirtualizerCommandType.SetViewportSize,
		scrollAxisLength = VIEWPORT_LENGTH,
		crossAxisLength = CROSS_AXIS_LENGTH,
	})
	virtualizer.dispatch({
		type = Core.VirtualizerCommandType.SetPolicy,
		policy = {
			overscan = 0,
			overscanPolicy = nil,
			dataPrefetch = nil,
			contentAlignment = nil,
			endThreshold = nil,
			pinnedItems = pinnedOptions,
			preserveScrollPositionOnChange = true,
		},
	})
	local startIdentity = nil
	local endIdentity = nil
	for _, itemView in virtualizer.query({ type = Core.VirtualizerQueryType.GetItemViews }) do
		local intent = virtualizer.query({ type = Core.VirtualizerQueryType.GetPlacementIntent, itemView = itemView })
		local identity = if intent == nil then nil else intent.measurementIdentity
		if identity ~= nil then
			if identity.itemKey == "$pinned-start" then
				startIdentity = identity
			elseif identity.itemKey == "$pinned-end" then
				endIdentity = identity
			end
		end
	end
	assert(startIdentity ~= nil and endIdentity ~= nil, "pinned benchmark requires active pinned assignment identities")
	virtualizer.dispatch({
		type = Core.VirtualizerCommandType.SubmitMeasurements,
		measurements = {
			{
				itemIndex = nil,
				itemKey = "$pinned-start",
				assignmentGeneration = startIdentity.assignmentGeneration,
				itemRevision = startIdentity.itemRevision,
				pinnedPosition = "start",
				length = 24,
			},
			{
				itemIndex = nil,
				itemKey = "$pinned-end",
				assignmentGeneration = endIdentity.assignmentGeneration,
				itemRevision = endIdentity.itemRevision,
				pinnedPosition = "finish",
				length = 32,
			},
		},
	})
	local checksum = 0
	local observablePlacementChecksum = 0
	local committedSnapshotTouch = 0
	local finalPlan = nil
	local lastSnapshot = nil
	local summary = benchmarkStats.measure(function()
		committedSnapshotTouch = 0
		for step = 1, stepCount do
			local update = virtualizer.dispatch({
				type = Core.VirtualizerCommandType.SetScrollOffset,
				offset = ITEM_LENGTH * (20 + step),
			})
			lastSnapshot = update.snapshot
			committedSnapshotTouch += consumeCommittedSnapshot(update.snapshot)
			finalPlan = buildPlacementPlan({
				dataSource = dataSource,
				layout = layout,
				stickyIndices = { 20, 40 },
				scrollOffset = virtualizer.query({ type = Core.VirtualizerQueryType.GetScrollState }).scrollOffset,
				viewportLength = VIEWPORT_LENGTH,
				contentStartOffset = virtualizer.getSnapshot().contentStartOffset,
				pinnedStartItem = pinnedOptions.pinnedStartItem,
				pinnedEndItem = pinnedOptions.pinnedEndItem,
			})
			checksum += finalPlan.placements["$pinned-start"].mainAxisLength
			checksum += finalPlan.placements["$pinned-end"].mainAxisLength
		end
	end, options)
	assert(lastSnapshot ~= nil, "pinned/sticky benchmark did not retain a committed snapshot")
	observablePlacementChecksum = snapshotPlacementChecksum(lastSnapshot)
	local plan = finalPlan :: any
	local firstStickyPlacement = plan.placements["20"]
	local secondStickyPlacement = plan.placements["40"]
	local stickyViewportRelative = (firstStickyPlacement ~= nil and firstStickyPlacement.viewportRelative)
		or (secondStickyPlacement ~= nil and secondStickyPlacement.viewportRelative)
	local pinnedStart = plan.placements["$pinned-start"]
	local pinnedEnd = plan.placements["$pinned-end"]
	local contentStartOffset = virtualizer.getSnapshot().contentStartOffset
	virtualizer.dispatch({ type = Core.VirtualizerCommandType.Destroy })
	recyclingScope.destroy()
	layout.destroy()
	assert(
		checksum > 0 and committedSnapshotTouch > 0 and observablePlacementChecksum > 0 and stickyViewportRelative,
		"pinned/sticky benchmark did not expose viewport placements"
	)
	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "core",
		owner = "core",
		responsibility = ResponsibilityCatalog.Core.PinnedSticky,
		timingClass = "integrated",
		workload = "sticky-pinned-placement",
		description = "Plans sticky retention, synthetic pinned assignments, and pinned content insets.",
		scale = {
			items = itemCount,
			scrollSteps = stepCount,
			pinnedItems = 2,
		},
		timing = {
			unit = "ms",
			basis = "pinnedStickyTraversal",
			operationsPerSample = stepCount,
			includesSchedulerWaits = false,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			stickyViewportRelative = stickyViewportRelative,
			pinnedStartOffset = pinnedStart.mainAxisOffset,
			pinnedEndOffset = pinnedEnd.mainAxisOffset,
			contentStartOffset = contentStartOffset,
			observablePlacementChecksum = observablePlacementChecksum,
		},
	})
end

local function measureScrollPolicy(
	Core: CoreApi,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	stepCount: number,
	options: Options
)
	local initialScrolls = 0
	local endFollows = 0
	local paginationHits = 0
	local hostOffsetChecksum = 0
	local function runScrollPolicy()
		for _ = 1, stepCount do
			local contentLength = 200
			local viewportOffset = 170
			local firstHostWrite = true
			local coordinator = Core.Adapter.ScrollPolicy.createCoordinator({
				getItemCount = function()
					return 20
				end,
				getScrollState = function()
					local distanceFromEnd = math.max(0, contentLength - 30 - viewportOffset)
					return {
						scrollOffset = viewportOffset,
						viewportLength = 30,
						contentLength = contentLength,
						distanceFromEnd = distanceFromEnd,
						atStart = viewportOffset == 0,
						atEnd = distanceFromEnd <= 1,
					}
				end,
				getScrollOffsetForItem = function(index)
					return index * 10
				end,
				applyScrollAnchorOffset = function(offset)
					if firstHostWrite then
						initialScrolls += 1
						firstHostWrite = false
					else
						endFollows += 1
					end
					viewportOffset = offset
					hostOffsetChecksum += offset
					return offset
				end,
				getViewportState = function()
					return { scrollOffset = viewportOffset, viewportLength = 30 }
				end,
				getInitialScrollAlignment = function()
					return Core.ScrollAlignment.End
				end,
				getAutoScrollPolicy = function()
					return Core.AutoScrollPolicy.WhenAtEnd
				end,
				getStartReachedThreshold = function()
					return 0
				end,
				getOnStartReached = function()
					return nil
				end,
				getOnEndReached = function()
					return function()
						paginationHits += 1
					end
				end,
			})
			coordinator.onViewportChanged()
			coordinator.onDataSourceChanged({
				changes = {
					{ type = Core.DataSourceChangeType.Insert, index = 21, keys = { "21" } },
				},
				previousItemCount = 20,
				itemCount = 21,
			}, {
				scrollOffset = 170,
				viewportLength = 30,
				contentLength = 200,
				distanceFromEnd = 0,
				atStart = false,
				atEnd = true,
			})
			contentLength = 220
			coordinator.onContentLengthChanged(contentLength)
			coordinator.checkEdges()
		end
	end
	local summary = benchmarkStats.measure(runScrollPolicy, options)
	initialScrolls = 0
	endFollows = 0
	paginationHits = 0
	hostOffsetChecksum = 0
	runScrollPolicy()
	assert(
		initialScrolls > 0 and endFollows > 0 and paginationHits > 0,
		"scroll policy benchmark missed a policy phase"
	)
	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "subsystem",
		owner = "core",
		responsibility = ResponsibilityCatalog.Core.ScrollPolicy,
		timingClass = "phased",
		workload = "initial-follow-pagination-policy",
		description = "Coordinates initial end alignment, end-follow settlement, and pagination edge delivery.",
		scale = {
			policyCycles = stepCount,
			initialAlignment = "end",
			autoScroll = "whenAtEnd",
		},
		timing = {
			unit = "ms",
			basis = "scrollPolicyCycle",
			operationsPerSample = stepCount,
			includesSchedulerWaits = false,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			initialScrolls = initialScrolls,
			endFollowWrites = endFollows,
			paginationHits = paginationHits,
			hostOffsetChecksum = hostOffsetChecksum,
		},
	})
end

local function measureRecyclingScopeRetention(
	Core: CoreApi,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemCount: number,
	stepCount: number,
	options: Options
)
	local creations = 0
	local evictions = 0
	local leaseTokensObserved = 0
	local scope = Core.Adapter.createRecyclingScope({
		adapter = {
			create = function()
				creations += 1
				return { id = creations }
			end,
			destroy = function()
				evictions += 1
			end,
		},
		maxPoolSize = 4,
	})
	local owner = {}
	local summary = benchmarkStats.measure(function()
		for _ = 1, stepCount do
			local requests = table.create(itemCount)
			for index = 1, itemCount do
				requests[index] = {
					viewType = "row",
				}
			end
			local acquired = scope.exchange(owner, {}, requests).acquired
			leaseTokensObserved += #acquired
			scope.exchange(owner, acquired, {})
		end
	end, options)
	local retained = #scope.getVacantViews()
	scope.destroy()
	assert(
		retained == 4 and evictions > 0 and leaseTokensObserved > 0,
		"RecyclingScope retention benchmark did not apply retention pressure with Lease tokens"
	)
	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "subsystem",
		owner = "core",
		responsibility = ResponsibilityCatalog.Core.RecyclingScope,
		timingClass = "integrated",
		workload = "recycling-scope-retention-pressure",
		description = "Acquires and releases Lease batches above the RecyclingScope per-type vacancy limit.",
		scale = {
			itemsPerBatch = itemCount,
			batches = stepCount,
			maxVacanciesPerType = 4,
		},
		timing = {
			unit = "ms",
			basis = "recyclingScopePressureBatch",
			operationsPerSample = stepCount,
			includesSchedulerWaits = false,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			creations = creations,
			evictions = evictions,
			retainedVacancies = retained,
			leaseTokensObserved = leaseTokensObserved,
		},
	})
end

local function measureActiveToggle(
	Core: CoreApi,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemCount: number,
	stepCount: number,
	options: Options
)
	local active, setActive = Signals.createSignal(true)
	local releases = 0
	local layout = Core.Layout.uniform({ itemLength = ITEM_LENGTH })
	local recyclingScope = Core.Adapter.createRecyclingScope({
		adapter = {
			create = function()
				return {}
			end,
			destroy = function() end,
		},
	})
	local virtualizer = Core.Adapter.createVirtualizer({
		dataSource = Core.DataSource.snapshot(createItems(itemCount), function(item: Item)
			return tostring(item.id)
		end),
		layout = layout,
		recyclingScope = recyclingScope,
		getItemViewType = function()
			return "row"
		end,
		postCommitAssignment = function(_, assignment)
			if assignment == nil then
				releases += 1
			end
		end,
		active = active,
	})
	virtualizer.dispatch({ type = Core.VirtualizerCommandType.Activate })
	virtualizer.dispatch({
		type = Core.VirtualizerCommandType.SetViewportSize,
		scrollAxisLength = VIEWPORT_LENGTH,
		crossAxisLength = CROSS_AXIS_LENGTH,
	})
	local function runActiveToggle()
		for _ = 1, stepCount do
			setActive(false)
			setActive(true)
		end
	end
	local summary = benchmarkStats.measure(runActiveToggle, options)
	releases = 0
	runActiveToggle()
	local mountedAfterReactivation = #virtualizer.query({ type = Core.VirtualizerQueryType.GetItemViews })
	virtualizer.dispatch({ type = Core.VirtualizerCommandType.Destroy })
	recyclingScope.destroy()
	layout.destroy()
	assert(releases > 0 and mountedAfterReactivation > 0, "active toggle benchmark did not release and reactivate")
	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "core",
		owner = "core",
		responsibility = ResponsibilityCatalog.Core.ListPresentation,
		timingClass = "integrated",
		workload = "active-state-toggle",
		description = "Releases all assignments while inactive and synchronizes the latest desired window on reactivation.",
		scale = {
			items = itemCount,
			toggles = stepCount,
		},
		timing = {
			unit = "ms",
			basis = "deactivateReactivate",
			operationsPerSample = stepCount,
			includesSchedulerWaits = false,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			releasedAssignments = releases,
			mountedAfterReactivation = mountedAfterReactivation,
		},
	})
end

local function measureLifecycle(
	Core: CoreApi,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemCount: number,
	responsibility: string,
	workload: string,
	options: Options
)
	local initialized = 0
	local destroyed = 0
	local mounted = 0
	local released = 0
	local function runLifecycle()
		local layout = Core.Layout.uniform({ itemLength = ITEM_LENGTH })
		local recyclingScope = Core.Adapter.createRecyclingScope({
			adapter = {
				create = function()
					return {}
				end,
				destroy = function() end,
			},
		})
		local virtualizer = Core.Adapter.createVirtualizer({
			dataSource = Core.DataSource.snapshot(createItems(itemCount), function(item: Item)
				return tostring(item.id)
			end),
			layout = layout,
			recyclingScope = recyclingScope,
			getItemViewType = function()
				return "row"
			end,
			postCommitAssignment = function(_, assignment)
				if assignment == nil then
					released += 1
				end
			end,
		})
		virtualizer.dispatch({ type = Core.VirtualizerCommandType.Activate })
		virtualizer.dispatch({
			type = Core.VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = VIEWPORT_LENGTH,
			crossAxisLength = CROSS_AXIS_LENGTH,
		})
		initialized += 1
		mounted += #virtualizer.query({ type = Core.VirtualizerQueryType.GetItemViews })
		virtualizer.dispatch({ type = Core.VirtualizerCommandType.Destroy })
		recyclingScope.destroy()
		layout.destroy()
		destroyed += 1
	end
	local summary = benchmarkStats.measure(runLifecycle, options)
	initialized = 0
	destroyed = 0
	mounted = 0
	released = 0
	runLifecycle()
	assert(
		initialized > 0 and initialized == destroyed and released > 0,
		"lifecycle benchmark did not complete cleanup"
	)
	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "core",
		owner = "core",
		responsibility = responsibility,
		timingClass = "phased",
		workload = workload,
		description = "Builds a populated Virtualizer lifecycle and synchronously releases all owned resources.",
		scale = {
			items = itemCount,
		},
		timing = {
			unit = "ms",
			basis = "virtualizerLifecycle",
			operationsPerSample = 1,
			includesSchedulerWaits = false,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			initialized = initialized,
			destroyed = destroyed,
			mountedAssignments = mounted,
			releasedAssignments = released,
		},
	})
end

local function run(
	Core: CoreApi,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	options: Options?
): { any }
	local resolved: Options = options or {}
	local itemCounts: { number } = resolved.itemCounts or DEFAULT_ITEM_COUNTS
	local scrollStepCount = resolved.scrollStepCount or DEFAULT_SCROLL_STEP_COUNT
	local coordinatorItemCount = resolved.coordinatorItemCount or DEFAULT_COORDINATOR_ITEM_COUNT
	local coordinatorStepCount = resolved.coordinatorStepCount or DEFAULT_COORDINATOR_STEP_COUNT
	assert(scrollStepCount >= 1 and scrollStepCount % 1 == 0, "scrollStepCount must be a positive integer")
	assert(#itemCounts > 0, "itemCounts must not be empty")

	local records = {}
	for _, itemCount in itemCounts do
		assert(itemCount >= 1 and itemCount % 1 == 0, "item counts must be positive integers")
		table.insert(
			records,
			measureTraversal(
				Core,
				benchmarkStats,
				benchmarkContract,
				itemCount,
				scrollStepCount,
				false,
				false,
				"jump",
				"uniform-traversal",
				"Runs the complete Virtualizer scroll, range, placement, and recycling path for a uniform layout.",
				ResponsibilityCatalog.Core.LayoutGeometry,
				resolved
			)
		)
		table.insert(
			records,
			measureTraversal(
				Core,
				benchmarkStats,
				benchmarkContract,
				itemCount,
				scrollStepCount,
				true,
				false,
				"jump",
				"measured-offset-traversal",
				"Runs measured-layout offset lookup and propagation without submitting new item sizes.",
				ResponsibilityCatalog.Core.LayoutGeometry,
				resolved
			)
		)
		table.insert(
			records,
			measureTraversal(
				Core,
				benchmarkStats,
				benchmarkContract,
				itemCount,
				scrollStepCount,
				true,
				true,
				"jump",
				"measured-update-traversal",
				"Runs the complete measured Virtualizer path and submits mounted-item size batches at every step.",
				ResponsibilityCatalog.Core.Measurement,
				resolved
			)
		)
		table.insert(
			records,
			measureCrossAxisTraversal(
				Core,
				benchmarkStats,
				benchmarkContract,
				itemCount,
				scrollStepCount,
				"grid",
				resolved
			)
		)
		table.insert(
			records,
			measureCrossAxisTraversal(
				Core,
				benchmarkStats,
				benchmarkContract,
				itemCount,
				scrollStepCount,
				"masonry",
				resolved
			)
		)
	end

	local churnItemCount = itemCounts[1]
	assert(churnItemCount >= 40, "the smallest item count must cover sticky and mutation workloads")
	for _, scrollPattern in { "short", "jump" } do
		table.insert(
			records,
			measureTraversal(
				Core,
				benchmarkStats,
				benchmarkContract,
				churnItemCount,
				scrollStepCount,
				false,
				false,
				scrollPattern,
				"recycling-assignment-churn",
				"Contrasts nearby scrolling with large jumps through the same uniform Virtualizer.",
				ResponsibilityCatalog.Core.ListPresentation,
				resolved
			)
		)
	end
	for _, pattern in { "retained", "churn" } do
		table.insert(
			records,
			measureCoordinator(
				Core,
				benchmarkStats,
				benchmarkContract,
				coordinatorItemCount,
				coordinatorStepCount,
				pattern,
				resolved
			)
		)
	end
	table.insert(
		records,
		measureWithinBand(Core, benchmarkStats, benchmarkContract, itemCounts[1], scrollStepCount, resolved)
	)
	table.insert(
		records,
		measureLifecycle(
			Core,
			benchmarkStats,
			benchmarkContract,
			churnItemCount,
			ResponsibilityCatalog.Core.Initialization,
			"virtualizer-initialization",
			resolved
		)
	)
	table.insert(
		records,
		measureAtomicMutation(
			Core,
			benchmarkStats,
			benchmarkContract,
			churnItemCount,
			ResponsibilityCatalog.Core.DataMutation,
			"atomic-data-mutation",
			resolved
		)
	)
	table.insert(
		records,
		measureAtomicMutation(
			Core,
			benchmarkStats,
			benchmarkContract,
			churnItemCount,
			ResponsibilityCatalog.Core.DataAnchoring,
			"atomic-anchor-preservation",
			resolved
		)
	)
	for _, record in
		measureOverscanPrefetch(Core, benchmarkStats, benchmarkContract, churnItemCount, scrollStepCount, resolved)
	do
		table.insert(records, record)
	end
	table.insert(
		records,
		measureProgrammaticScroll(Core, benchmarkStats, benchmarkContract, churnItemCount, scrollStepCount, resolved)
	)
	table.insert(
		records,
		measureMeasurementAnchoring(Core, benchmarkStats, benchmarkContract, churnItemCount, scrollStepCount, resolved)
	)
	table.insert(
		records,
		measurePinnedSticky(Core, benchmarkStats, benchmarkContract, churnItemCount, scrollStepCount, resolved)
	)
	table.insert(records, measureScrollPolicy(Core, benchmarkStats, benchmarkContract, scrollStepCount, resolved))
	table.insert(
		records,
		measureRecyclingScopeRetention(
			Core,
			benchmarkStats,
			benchmarkContract,
			coordinatorItemCount,
			coordinatorStepCount,
			resolved
		)
	)
	table.insert(
		records,
		measureActiveToggle(Core, benchmarkStats, benchmarkContract, churnItemCount, scrollStepCount, resolved)
	)
	table.insert(
		records,
		measureLifecycle(
			Core,
			benchmarkStats,
			benchmarkContract,
			churnItemCount,
			ResponsibilityCatalog.Core.Teardown,
			"virtualizer-teardown",
			resolved
		)
	)
	return records
end

return {
	run = run,
}
