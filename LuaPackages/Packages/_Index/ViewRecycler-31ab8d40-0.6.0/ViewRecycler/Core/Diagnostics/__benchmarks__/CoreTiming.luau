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
	touchedKeys: number,
	logicalKeyReads: number,
	layoutItemReads: number,
	payloadReads: number,
	viewTypeReads: number,
	publicationCallbacks: number,
}

local Src = script:FindFirstAncestor("ViewRecycler")
local ResponsibilityCatalog = require(script.Parent.ResponsibilityCatalog)
local createScrollPolicy = require(Src.Core.ViewportBehavior.ScrollPolicy)

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
	if scrollPattern == "slide" then
		for step = 1, scrollStepCount do
			offsets[step] = math.min(maximumOffset, step * ITEM_LENGTH)
		end
		return offsets
	end
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

local function recordPlacementChecksum(record): number
	local checksum = 0
	for _, mountedView in record.mountedViews do
		local state = mountedView.state
		checksum += state.itemLayout.startOffset
		checksum += state.canvasPlacement.mainAxisOffset or 0
		checksum += if state.viewportPlacement == nil then 0 else state.viewportPlacement.mainAxisOffset or 0
	end
	return checksum
end

local function consumeCommittedRecord(record): number
	return record.contentLength + #record.mountedViews
end

local function createCounters(): Counters
	return {
		synchronizations = 0,
		reassignedAssignments = 0,
		acquiredAssignments = 0,
		releasedAssignments = 0,
		acceptedMeasurements = 0,
		touchedKeys = 0,
		logicalKeyReads = 0,
		layoutItemReads = 0,
		payloadReads = 0,
		viewTypeReads = 0,
		publicationCallbacks = 0,
	}
end

local function resetCounters(counters: Counters, resetWorkEvidence: boolean?)
	counters.synchronizations = 0
	counters.reassignedAssignments = 0
	counters.acquiredAssignments = 0
	counters.releasedAssignments = 0
	counters.acceptedMeasurements = 0
	if resetWorkEvidence then
		counters.touchedKeys = 0
		counters.logicalKeyReads = 0
		counters.layoutItemReads = 0
		counters.payloadReads = 0
		counters.viewTypeReads = 0
		counters.publicationCallbacks = 0
	end
end

local function createBoundedRecyclingScope(Core: CoreApi, options, capacity: number)
	local rawScope = Core.Adapter.createRecyclingScope(options)
	return {
		bind = function(binding)
			local bounded = table.clone(binding)
			bounded.capacity = capacity
			return rawScope.bind(bounded)
		end,
		dispose = rawScope.dispose,
	}
end

local function createVirtualizer(Core: CoreApi, itemCount: number, measured: boolean, collectWorkEvidence: boolean?)
	local nextItemViewId = 0
	local counters = createCounters()
	local baseLayout = if measured
		then Core.Layout.measured({ estimatedItemLength = ITEM_LENGTH })
		else Core.Layout.uniform({ itemLength = ITEM_LENGTH })
	local layout = if measured and collectWorkEvidence
		then (function()
			local instrumented = table.clone(baseLayout)
			instrumented.getItemLayout = function(index)
				counters.layoutItemReads += 1
				return baseLayout.getItemLayout(index)
			end
			instrumented.getItemLayouts = function(firstIndex, lastIndex, layouts)
				counters.layoutItemReads += math.max(0, lastIndex - firstIndex + 1)
				return baseLayout.getItemLayouts(firstIndex, lastIndex, layouts)
			end
			return instrumented
		end)()
		else baseLayout
	local recyclingScope = createBoundedRecyclingScope(Core, {
		adapter = {
			create = function()
				nextItemViewId += 1
				return nextItemViewId
			end,
			destroy = function() end,
		},
	}, 4)
	local source = Core.DataSource.snapshot(createItems(itemCount), function(item: Item)
		return tostring(item.id)
	end)
	local dataSource = if collectWorkEvidence
		then (function()
			local instrumented = table.clone(source)
			instrumented.getItemKey = function(index)
				counters.logicalKeyReads += 1
				return source.getItemKey(index)
			end
			instrumented.getItem = function(index)
				counters.payloadReads += 1
				return source.getItem(index)
			end
			return instrumented
		end)()
		else source
	local virtualizer = Core.Adapter.createVirtualizer({
		dataSource = dataSource,
		layout = layout,
		recyclingScope = recyclingScope,
		getItemViewType = if collectWorkEvidence
			then function(item: Item)
				counters.viewTypeReads += 1
				return item.kind
			end
			else function(item: Item)
				return item.kind
			end,
		overscan = 2,
		diagnostics = function(event)
			if event.kind == "itemViewsSynchronized" then
				counters.synchronizations += 1
				counters.reassignedAssignments += event.reassigned
				counters.acquiredAssignments += event.acquired
				counters.releasedAssignments += event.released
				if collectWorkEvidence then
					counters.touchedKeys += event.touched
					counters.publicationCallbacks += event.reassigned + event.acquired + event.released
				end
			elseif event.kind == "measurementsProcessed" then
				counters.acceptedMeasurements += event.accepted
			end
		end,
	})
	virtualizer.activate()
	virtualizer.setViewportSize(VIEWPORT_LENGTH, CROSS_AXIS_LENGTH)
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
	local maximumMountedItemViews = 0

	local function runTraversal(collectPlacementEvidence: boolean)
		resetCounters(counters, collectPlacementEvidence)
		submittedMeasurements = 0
		observablePlacementChecksum = 0
		committedSnapshotTouch = 0
		checksum = 0
		maximumMountedItemViews = 0
		phase = (phase + 1) % 5
		for _, offset in offsets do
			local scrollUpdate = virtualizer.setScrollOffset(offset)
			committedSnapshotTouch += consumeCommittedRecord(scrollUpdate)
			if collectPlacementEvidence then
				observablePlacementChecksum += recordPlacementChecksum(scrollUpdate)
				maximumMountedItemViews = math.max(maximumMountedItemViews, #scrollUpdate.mountedViews)
			end
			if submitMeasurements then
				local measurements = {}
				for _, mountedView in scrollUpdate.mountedViews do
					local itemView = mountedView.itemView
					local state = mountedView.state
					if state ~= nil and state.index ~= nil then
						table.insert(measurements, {
							itemView = itemView,
							state = state,
							length = 36 + ((state.index + phase) % 5) * 2,
						})
					end
				end
				submittedMeasurements += #measurements
				local measurementUpdate = virtualizer.submitMeasurements(measurements)
				committedSnapshotTouch += consumeCommittedRecord(measurementUpdate)
				if collectPlacementEvidence then
					observablePlacementChecksum += recordPlacementChecksum(measurementUpdate)
					maximumMountedItemViews = math.max(maximumMountedItemViews, #measurementUpdate.mountedViews)
				end
				checksum += #measurements
			end
		end
		local visibleRange = virtualizer.getCurrent().visibleRange
		checksum += visibleRange.firstIndex + visibleRange.lastIndex
	end

	local summary = benchmarkStats.measure(function()
		runTraversal(false)
	end, options)
	virtualizer.destroy()
	recyclingScope.dispose()
	layout.destroy()
	virtualizer, layout, counters, recyclingScope = createVirtualizer(Core, itemCount, measured, true)
	runTraversal(true)
	local mountedItemViews = maximumMountedItemViews
	local settlementSynchronizationBudget = scrollStepCount * (if submitMeasurements then 2 else 1)
	local logicalKeyReadBudget = if scrollPattern == "slide"
		then scrollStepCount * 2
		else counters.synchronizations * mountedItemViews * 2
	local layoutItemReadBudget = if measured and scrollPattern == "slide"
		-- One entered-row geometry read plus the mounted-band boundary reads.
		then scrollStepCount * 3 + 2
		else nil
	local enrichmentReadBudget = counters.touchedKeys
	local touchedKeyBudget = counters.synchronizations * mountedItemViews * (if scrollPattern == "jump" then 2 else 1)
	local publicationCallbackBudget = counters.touchedKeys * 2

	virtualizer.destroy()
	recyclingScope.dispose()
	layout.destroy()
	assert(
		checksum > 0 and committedSnapshotTouch > 0 and observablePlacementChecksum > 0,
		`{workload} benchmark did not expose mounted placements`
	)
	assert(
		counters.synchronizations <= settlementSynchronizationBudget,
		`{workload} synchronized more than once per accepted scroll or measurement mutation`
	)
	if
		workload == "one-row-window-slide"
		or workload == "measured-one-row-window-slide"
		or workload == "disjoint-window-jump"
	then
		if workload == "one-row-window-slide" or workload == "measured-one-row-window-slide" then
			assert(
				counters.logicalKeyReads <= logicalKeyReadBudget,
				`{workload} exceeded its two-key-reads-per-row budget ({counters.logicalKeyReads} > {logicalKeyReadBudget})`
			)
			if measured then
				local layoutBudget = layoutItemReadBudget :: number
				assert(
					counters.layoutItemReads <= layoutBudget,
					`{workload} exceeded its edge-and-band Layout-read budget ({counters.layoutItemReads} > {layoutBudget})`
				)
			end
		else
			assert(
				counters.logicalKeyReads <= logicalKeyReadBudget,
				`{workload} exceeded its logical-key read budget ({counters.logicalKeyReads} > {logicalKeyReadBudget})`
			)
		end
		assert(counters.payloadReads <= enrichmentReadBudget, `{workload} exceeded its payload-read budget`)
		assert(counters.viewTypeReads <= enrichmentReadBudget, `{workload} exceeded its view-type read budget`)
		assert(
			counters.touchedKeys <= touchedKeyBudget,
			`{workload} exceeded its reconciler touch budget ({counters.touchedKeys} > {touchedKeyBudget})`
		)
		assert(
			counters.publicationCallbacks <= publicationCallbackBudget,
			`{workload} exceeded its publication callback budget`
		)
	end
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
			logicalKeyReadBudget = logicalKeyReadBudget,
			layoutItemReadBudget = layoutItemReadBudget,
			enrichmentReadBudget = enrichmentReadBudget,
			touchedKeyBudget = touchedKeyBudget,
			publicationCallbackBudget = publicationCallbackBudget,
			reassignedAssignments = counters.reassignedAssignments,
			acquiredAssignments = counters.acquiredAssignments,
			releasedAssignments = counters.releasedAssignments,
			touchedKeys = counters.touchedKeys,
			logicalKeyReads = counters.logicalKeyReads,
			layoutItemReads = counters.layoutItemReads,
			payloadReads = counters.payloadReads,
			viewTypeReads = counters.viewTypeReads,
			publicationCallbacks = counters.publicationCallbacks,
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
		local createdViews = 0
		local diagnosticEvents = 0
		local acquiredViews = 0
		local submissions = 0
		local scope = Core.Adapter.createRecyclingScope({
			adapter = {
				create = function()
					createdViews += 1
					return createdViews
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
		local views = {}
		local viewsByKey = {}
		local function synchronize(desired)
			local releases = {}
			local requests = {}
			local requestedAssignments = {}
			local nextViewsByKey = {}
			for _, assignment in desired do
				local retained = viewsByKey[assignment.key]
				if retained ~= nil then
					nextViewsByKey[assignment.key] = retained
				else
					table.insert(requests, { viewType = "row" })
					table.insert(requestedAssignments, assignment)
				end
			end
			for key, view in viewsByKey do
				if nextViewsByKey[key] == nil then
					table.insert(releases, view)
				end
			end
			local result = scope.bind({
				releases = releases,
				requests = requests,
				capacity = itemCount,
			})
			submissions += 1
			acquiredViews += #result.acquired
			for index, acquiredView in result.acquired do
				nextViewsByKey[requestedAssignments[index].key] = acquiredView
			end
			viewsByKey = nextViewsByKey
			views = table.create(#desired)
			for index, assignment in desired do
				views[index] = viewsByKey[assignment.key]
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
			getAcquiredViews = function()
				return acquiredViews
			end,
			getCreatedViews = function()
				return createdViews
			end,
			getSubmissions = function()
				return submissions
			end,
			destroy = function()
				scope.bind({
					releases = views,
					requests = {},
					capacity = itemCount,
				})
				views = {}
				viewsByKey = {}
				scope.dispose()
			end,
		}
	end

	local withoutDiagnostics = createFixture(false)
	local withDiagnostics = createFixture(true)
	local withoutSummary = benchmarkStats.measure(withoutDiagnostics.run, options)
	local withSummary = benchmarkStats.measure(withDiagnostics.run, options)
	local diagnosticEvents = withDiagnostics.getDiagnosticEvents()
	local acquiredViews = withoutDiagnostics.getAcquiredViews()
	local createdViews = withoutDiagnostics.getCreatedViews()
	local submissions = withoutDiagnostics.getSubmissions()
	withoutDiagnostics.destroy()
	withDiagnostics.destroy()

	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "subsystem",
		owner = "core",
		responsibility = ResponsibilityCatalog.Core.Diagnostics,
		timingClass = "integrated",
		workload = "typed-pool-submission-sync",
		description = "Submits retained or fully replaced desired keys through one typed Recycling pool.",
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
			createdViews = createdViews,
			acquiredViews = acquiredViews,
			submissions = submissions,
			diagnosticEvents = diagnosticEvents,
		},
	})
end

local function measureSubItemScrolling(
	Core: CoreApi,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemCount: number,
	stepCount: number,
	options: Options
)
	local function createArm(measured: boolean, collectWorkEvidence: boolean?)
		local virtualizer, layout, counters, recyclingScope =
			createVirtualizer(Core, itemCount, measured, collectWorkEvidence)
		local direction = 1
		local traversalLength = math.max(1, math.floor(ITEM_LENGTH / 2))
		local observablePlacementChecksum = 0
		local committedSnapshotTouch = 0
		local function run(collectPlacementEvidence: boolean)
			resetCounters(counters, collectWorkEvidence)
			observablePlacementChecksum = 0
			committedSnapshotTouch = 0
			for step = 1, stepCount do
				local offsetWithinItem = (step - 1) % traversalLength + 1
				local update = virtualizer.setScrollOffset(
					if direction == 1 then offsetWithinItem else traversalLength - offsetWithinItem
				)
				committedSnapshotTouch += consumeCommittedRecord(update)
				if collectPlacementEvidence then
					observablePlacementChecksum += recordPlacementChecksum(update)
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
				virtualizer.destroy()
				recyclingScope.dispose()
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
	uniform.destroy()
	measured.destroy()
	uniform = createArm(false, true)
	measured = createArm(true, true)
	uniform.run(true)
	measured.run(true)
	local evidence = {
		uniformSynchronizations = uniform.counters.synchronizations,
		measuredSynchronizations = measured.counters.synchronizations,
		payloadReads = uniform.counters.payloadReads + measured.counters.payloadReads,
		viewTypeReads = uniform.counters.viewTypeReads + measured.counters.viewTypeReads,
		uniformObservablePlacementChecksum = uniform.getObservablePlacementChecksum(),
		measuredObservablePlacementChecksum = measured.getObservablePlacementChecksum(),
	}
	assert(
		uniform.getCommittedSnapshotTouch() > 0
			and measured.getCommittedSnapshotTouch() > 0
			and evidence.uniformObservablePlacementChecksum > 0
			and evidence.measuredObservablePlacementChecksum > 0,
		"sub-item scrolling benchmark did not consume committed mounted placements"
	)
	assert(
		evidence.uniformSynchronizations == 1 and evidence.measuredSynchronizations == 1,
		"sub-item scrolling benchmark did not reconcile exactly one range boundary"
	)
	uniform.destroy()
	measured.destroy()

	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "core",
		owner = "core",
		responsibility = ResponsibilityCatalog.Core.ViewportRange,
		timingClass = "integrated",
		workload = "sub-item-scrolling",
		description = "Scrolls within one item while reconciling each crossed visible-range boundary.",
		scale = {
			items = itemCount,
			scrollSteps = stepCount,
			stickyOrPinned = false,
		},
		timing = {
			unit = "ms",
			basis = "subItemScrollBatch",
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
			local targetOffset = virtualizer.getScrollOffsetForItem(itemIndex, Core.ScrollAlignment.Center)
			local scrollUpdate = virtualizer.scrollToOffset(targetOffset)
			committedSnapshotTouch += consumeCommittedRecord(scrollUpdate)
			if collectPlacementEvidence then
				observablePlacementChecksum += recordPlacementChecksum(scrollUpdate)
			end
			local snapshot = virtualizer.captureScrollAnchorSnapshot()
			snapshots += 1
			local deltaUpdate = virtualizer.scrollBy(ITEM_LENGTH)
			committedSnapshotTouch += consumeCommittedRecord(deltaUpdate)
			if collectPlacementEvidence then
				observablePlacementChecksum += recordPlacementChecksum(deltaUpdate)
			end
			local restoreUpdate = virtualizer.restoreScrollAnchorSnapshot(snapshot)
			committedSnapshotTouch += consumeCommittedRecord(restoreUpdate)
			if collectPlacementEvidence then
				observablePlacementChecksum += recordPlacementChecksum(restoreUpdate)
			end
			restoredOffsetChecksum += restoreUpdate.scrollState.scrollOffset
		end
	end
	local summary = benchmarkStats.measure(function()
		runProgrammaticScroll(false)
	end, options)
	runProgrammaticScroll(true)
	local finalState = virtualizer.getCurrent().scrollState
	virtualizer.destroy()
	recyclingScope.dispose()
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
	local current = virtualizer.setScrollOffset(ITEM_LENGTH * 10)
	local visible = current.visibleRange
	local measuredView = nil
	local measuredState = nil
	for _, mountedView in current.mountedViews do
		local itemView = mountedView.itemView
		local state = mountedView.state
		if state ~= nil and state.index ~= nil and state.index < visible.firstIndex then
			measuredView = itemView
			measuredState = state
			break
		end
	end
	assert(
		measuredView ~= nil and measuredState ~= nil,
		"measurement anchoring benchmark requires an overscanned item above the visible anchor"
	)
	local corrections = 0
	local correctionMagnitude = 0
	local observablePlacementChecksum = 0
	local function stateForView(itemView)
		for _, mountedView in virtualizer.getCurrent().mountedViews do
			if mountedView.itemView == itemView then
				return mountedView.state
			end
		end
		return nil
	end
	local function runMeasurementAnchoring()
		corrections = 0
		correctionMagnitude = 0
		observablePlacementChecksum = 0
		for step = 1, stepCount do
			local currentState = stateForView(measuredView)
			assert(currentState ~= nil, "measurement anchoring view must remain occupied")
			local update = virtualizer.submitMeasurements({
				{
					itemView = measuredView,
					state = currentState,
					length = if step % 2 == 0 then ITEM_LENGTH else ITEM_LENGTH * 2,
				},
			})
			if update.scrollCorrection ~= 0 then
				corrections += 1
				correctionMagnitude += math.abs(update.scrollCorrection)
			end
			observablePlacementChecksum += consumeCommittedRecord(update)
		end
	end
	local measurementOptions = table.clone(options)
	measurementOptions.iterationsPerSample = 1
	local summary = benchmarkStats.measure(runMeasurementAnchoring, measurementOptions)
	local currentState = stateForView(measuredView)
	assert(currentState ~= nil, "measurement anchoring view must remain occupied")
	virtualizer.submitMeasurements({
		{
			itemView = measuredView,
			state = currentState,
			length = ITEM_LENGTH,
		},
	})
	virtualizer.setScrollOffset(ITEM_LENGTH * 10)
	runMeasurementAnchoring()
	observablePlacementChecksum = recordPlacementChecksum(virtualizer.getCurrent())
	local finalOffset = virtualizer.getCurrent().scrollState.scrollOffset
	virtualizer.destroy()
	recyclingScope.dispose()
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
			measuredItemIndex = (measuredState :: any).index,
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
	local recyclingScope = createBoundedRecyclingScope(Core, {
		adapter = {
			create = function()
				return {}
			end,
			destroy = function() end,
		},
	}, itemCount)
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
	virtualizer.activate()
	virtualizer.setViewportSize(VIEWPORT_LENGTH, CROSS_AXIS_LENGTH)
	local checksum = 0
	local observablePlacementChecksum = 0
	local committedSnapshotTouch = 0
	local function runCrossAxisTraversal(collectPlacementEvidence: boolean)
		observablePlacementChecksum = 0
		committedSnapshotTouch = 0
		checksum = 0
		for step = 1, stepCount do
			local update = virtualizer.setScrollOffset(step * ITEM_LENGTH)
			committedSnapshotTouch += consumeCommittedRecord(update)
			if collectPlacementEvidence then
				observablePlacementChecksum += recordPlacementChecksum(update)
			end
			local range = update.visibleRange
			checksum += range.firstIndex + range.lastIndex
			checksum += virtualizer.getItemLayout(range.firstIndex).crossAxisCount
		end
	end
	local summary = benchmarkStats.measure(function()
		runCrossAxisTraversal(false)
	end, options)
	runCrossAxisTraversal(true)
	local range = virtualizer.getCurrent().visibleRange
	local crossAxisCount = virtualizer.getItemLayout(range.firstIndex).crossAxisCount
	virtualizer.destroy()
	recyclingScope.dispose()
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
	anchorFocused: boolean,
	options: Options
)
	local changesPerTransaction = if anchorFocused then 2 else 3

	local function createFixture(collectEvidence: boolean)
		local source = Core.DataSource.sequence(createItems(itemCount), function(item: Item)
			return tostring(item.id)
		end)
		local counters = createCounters()
		local dataSource = if collectEvidence
			then (function()
				local instrumented = table.clone(source)
				instrumented.getItemKey = function(index)
					counters.logicalKeyReads += 1
					return source.getItemKey(index)
				end
				instrumented.getItem = function(index)
					counters.payloadReads += 1
					return source.getItem(index)
				end
				return instrumented
			end)()
			else source
		local layout = Core.Layout.uniform({ itemLength = ITEM_LENGTH })
		local batchCount = 0
		local changes = 0
		local corrections = 0
		local correctionMagnitude = 0
		local maximumMountedItemViews = 0
		local committedSnapshotTouch = 0
		local phase = 0
		local nextItemViewId = 0
		if collectEvidence then
			dataSource.subscribe(function(batch)
				batchCount += 1
				changes += #batch.changes
			end)
		end
		local recyclingScope = createBoundedRecyclingScope(Core, {
			adapter = {
				create = function()
					nextItemViewId += 1
					return nextItemViewId
				end,
				destroy = function() end,
			},
		}, itemCount)
		local virtualizer = Core.Adapter.createVirtualizer({
			dataSource = dataSource,
			layout = layout,
			recyclingScope = recyclingScope,
			getItemViewType = if collectEvidence
				then function(item: Item)
					counters.viewTypeReads += 1
					return item.kind
				end
				else function(item: Item)
					return item.kind
				end,
			overscan = 1,
			preserveScrollPositionOnChange = anchorFocused,
			onTransaction = if collectEvidence
				then function(_, current)
					if current.scrollCorrection ~= 0 then
						corrections += 1
						correctionMagnitude += math.abs(current.scrollCorrection)
					end
				end
				else nil,
			diagnostics = if collectEvidence
				then function(event)
					if event.kind == "itemViewsSynchronized" then
						counters.synchronizations += 1
						counters.reassignedAssignments += event.reassigned
						counters.acquiredAssignments += event.acquired
						counters.releasedAssignments += event.released
						counters.touchedKeys += event.touched
						counters.publicationCallbacks += event.reassigned + event.acquired + event.released
					end
				end
				else nil,
		})
		virtualizer.activate()
		virtualizer.setViewportSize(VIEWPORT_LENGTH, CROSS_AXIS_LENGTH)
		virtualizer.setScrollOffset(ITEM_LENGTH * 10)
		resetCounters(counters, true)
		maximumMountedItemViews = #virtualizer.getCurrent().mountedViews

		local function applyMutation()
			phase += 1
			committedSnapshotTouch = 0
			local index = virtualizer.getCurrent().visibleRange.firstIndex
			local current = source.getItem(index)
			source.transaction(function()
				if anchorFocused then
					source.prepend({
						id = -phase,
						kind = "row",
					})
					source.remove(source.getItemCount())
				else
					source.setItem(index, {
						id = current.id,
						kind = current.kind,
					})
					source.append({
						id = itemCount + phase,
						kind = "row",
					})
					source.remove(source.getItemCount())
				end
			end)
			committedSnapshotTouch += consumeCommittedRecord(virtualizer.getCurrent())
		end

		local runMutation = applyMutation
		if collectEvidence then
			runMutation = function()
				applyMutation()
				maximumMountedItemViews = math.max(maximumMountedItemViews, #virtualizer.getCurrent().mountedViews)
			end
		end

		local function readEvidence()
			local current = virtualizer.getCurrent()
			return {
				batches = batchCount,
				changes = changes,
				revisedViews = #current.entered + #current.updated,
				scrollCorrections = corrections,
				correctionMagnitude = correctionMagnitude,
				finalScrollOffset = virtualizer.getCurrent().scrollState.scrollOffset,
				observablePlacementChecksum = recordPlacementChecksum(virtualizer.getCurrent()),
				committedSnapshotTouch = committedSnapshotTouch,
				maximumMountedItemViews = maximumMountedItemViews,
				counters = counters,
			}
		end

		local function destroy()
			virtualizer.destroy()
			recyclingScope.dispose()
			layout.destroy()
		end

		return runMutation, readEvidence, destroy
	end

	local runTimedMutation, _, destroyTimedFixture = createFixture(false)
	local summary = benchmarkStats.measure(runTimedMutation, options)
	destroyTimedFixture()

	local runEvidenceMutation, readEvidence, destroyEvidenceFixture = createFixture(true)
	runEvidenceMutation()
	local evidence = readEvidence()
	destroyEvidenceFixture()

	local counters = evidence.counters
	local logicalKeyReadBudget = evidence.changes * evidence.maximumMountedItemViews * 2
	local enrichmentReadBudget = counters.touchedKeys
	local touchedKeyBudget = counters.synchronizations * evidence.maximumMountedItemViews
	local publicationCallbackBudget = counters.touchedKeys * 2
	assert(
		evidence.batches == 1 and evidence.changes == changesPerTransaction,
		"atomic mutation benchmark did not emit grouped changes"
	)
	assert(
		evidence.revisedViews > 0 and evidence.committedSnapshotTouch > 0 and evidence.observablePlacementChecksum > 0,
		"atomic mutation benchmark did not expose revised placements"
	)
	assert(not anchorFocused or evidence.scrollCorrections > 0, "atomic mutation benchmark did not preserve its anchor")
	if workload == "prepend-remove-mutation" then
		assert(
			counters.logicalKeyReads <= logicalKeyReadBudget,
			`atomic mutation exceeded its logical-key read budget ({counters.logicalKeyReads} > {logicalKeyReadBudget})`
		)
		assert(counters.payloadReads <= enrichmentReadBudget, "atomic mutation exceeded its payload-read budget")
		assert(counters.viewTypeReads <= enrichmentReadBudget, "atomic mutation exceeded its view-type read budget")
		assert(counters.touchedKeys <= touchedKeyBudget, "atomic mutation exceeded its reconciler touch budget")
		assert(
			counters.publicationCallbacks <= publicationCallbackBudget,
			"atomic mutation exceeded its publication callback budget"
		)
	end
	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "core",
		owner = "core",
		responsibility = responsibility,
		timingClass = "integrated",
		workload = workload,
		description = if anchorFocused
			then "Prepends and trims one atomic batch while preserving the visible anchor."
			else "Applies one atomic visible update and balanced tail mutation without anchor preservation.",
		scale = {
			items = itemCount,
			changesPerTransaction = changesPerTransaction,
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
			batches = evidence.batches,
			changes = evidence.changes,
			revisedViews = evidence.revisedViews,
			scrollCorrections = evidence.scrollCorrections,
			correctionMagnitude = evidence.correctionMagnitude,
			finalScrollOffset = evidence.finalScrollOffset,
			observablePlacementChecksum = evidence.observablePlacementChecksum,
			mountedItemViews = evidence.maximumMountedItemViews,
			synchronizations = counters.synchronizations,
			reassignedAssignments = counters.reassignedAssignments,
			acquiredAssignments = counters.acquiredAssignments,
			releasedAssignments = counters.releasedAssignments,
			touchedKeys = counters.touchedKeys,
			logicalKeyReads = counters.logicalKeyReads,
			payloadReads = counters.payloadReads,
			viewTypeReads = counters.viewTypeReads,
			publicationCallbacks = counters.publicationCallbacks,
			logicalKeyReadBudget = logicalKeyReadBudget,
			enrichmentReadBudget = enrichmentReadBudget,
			touchedKeyBudget = touchedKeyBudget,
			publicationCallbackBudget = publicationCallbackBudget,
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
	local requests = 0
	local currentRequests = 0
	local layout = Core.Layout.uniform({ itemLength = ITEM_LENGTH })
	local recyclingScope = createBoundedRecyclingScope(Core, {
		adapter = {
			create = function()
				return {}
			end,
			destroy = function() end,
		},
	}, itemCount)
	local virtualizer = Core.Adapter.createVirtualizer({
		dataSource = Core.DataSource.snapshot(createItems(itemCount), function(item: Item)
			return tostring(item.id)
		end),
		layout = layout,
		recyclingScope = recyclingScope,
		getItemViewType = function()
			return "row"
		end,
		overscan = 3,
		dataPrefetch = {
			startItems = 2,
			endItems = 4,
		},
	})
	virtualizer.activate()
	virtualizer.setViewportSize(VIEWPORT_LENGTH, CROSS_AXIS_LENGTH)
	local summary = benchmarkStats.measure(function()
		for step = 1, stepCount do
			local update = virtualizer.setScrollOffset(step * ITEM_LENGTH * 2)
			for _, request in update.dataPrefetchRequests do
				requests += 1
				if request.isCurrent() then
					currentRequests += 1
				end
			end
		end
		virtualizer.setScrollOffset(ITEM_LENGTH)
	end, options)
	local visible = virtualizer.getCurrent().visibleRange
	local mounted = virtualizer.getCurrent().mountedRange
	virtualizer.destroy()
	recyclingScope.dispose()
	layout.destroy()
	assert(requests > 0, "overscan/prefetch benchmark did not exercise prefetch")
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
			responsibility = ResponsibilityCatalog.Core.Overscan,
			timingClass = "integrated",
			workload = "fixed-overscan",
			description = "Expands each current Visible range by a fixed number of Layout units.",
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
		isItemStickyHeader = function(key: string)
			return (tonumber(key) :: number) % 20 == 0
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
	local recyclingScope = createBoundedRecyclingScope(Core, {
		adapter = {
			create = function()
				return {}
			end,
			destroy = function() end,
		},
	}, itemCount)
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
	virtualizer.activate()
	virtualizer.setViewportSize(VIEWPORT_LENGTH, CROSS_AXIS_LENGTH)
	virtualizer.setPolicy({
		overscan = 0,
		dataPrefetch = nil,
		contentAlignment = nil,
		endThreshold = nil,
		pinnedItems = pinnedOptions,
		preserveScrollPositionOnChange = true,
	})
	local startView = nil
	local startState = nil
	local endView = nil
	local endState = nil
	for _, mountedView in virtualizer.getCurrent().mountedViews do
		local itemView = mountedView.itemView
		local state = mountedView.state
		if state ~= nil then
			if state.assignment.key == "$pinned-start" then
				startView = itemView
				startState = state
			elseif state.assignment.key == "$pinned-end" then
				endView = itemView
				endState = state
			end
		end
	end
	assert(
		startView ~= nil and startState ~= nil and endView ~= nil and endState ~= nil,
		"pinned benchmark requires active pinned View states"
	)
	virtualizer.submitMeasurements({
		{
			itemView = startView,
			state = startState,
			length = 24,
		},
		{
			itemView = endView,
			state = endState,
			length = 32,
		},
	})
	local observablePlacementChecksum = 0
	local committedSnapshotTouch = 0
	local lastSnapshot = nil
	local summary = benchmarkStats.measure(function()
		committedSnapshotTouch = 0
		for step = 1, stepCount do
			local update = virtualizer.setScrollOffset(ITEM_LENGTH * (20 + step))
			lastSnapshot = update
			committedSnapshotTouch += consumeCommittedRecord(update)
		end
	end, options)
	assert(lastSnapshot ~= nil, "pinned/sticky benchmark did not retain a committed snapshot")
	observablePlacementChecksum = recordPlacementChecksum(lastSnapshot)
	local stickyViewportRelative = false
	local pinnedStart = nil
	local pinnedEnd = nil
	for _, mountedView in (lastSnapshot :: any).mountedViews do
		local state = mountedView.state
		if state.index ~= nil and state.viewportPlacement ~= nil then
			stickyViewportRelative = true
		elseif state.assignment.key == "$pinned-start" then
			pinnedStart = state.viewportPlacement
		elseif state.assignment.key == "$pinned-end" then
			pinnedEnd = state.viewportPlacement
		end
	end
	local contentStartOffset = virtualizer.getCurrent().contentStartOffset
	virtualizer.destroy()
	recyclingScope.dispose()
	layout.destroy()
	assert(
		committedSnapshotTouch > 0
			and observablePlacementChecksum > 0
			and stickyViewportRelative
			and pinnedStart ~= nil
			and pinnedEnd ~= nil,
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
			pinnedStartOffset = (pinnedStart :: any).mainAxisOffset,
			pinnedEndOffset = (pinnedEnd :: any).mainAxisOffset,
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
			local policy = createScrollPolicy({
				initialScrollAlignment = Core.ScrollAlignment.End,
				autoScrollOnChange = Core.AutoScrollPolicy.WhenAtEnd,
				startReachedThreshold = 0,
				startReachedEnabled = false,
				endReachedEnabled = true,
			})
			local function scrollState()
				local distanceFromEnd = math.max(0, contentLength - 30 - viewportOffset)
				return {
					scrollOffset = viewportOffset,
					viewportLength = 30,
					contentLength = contentLength,
					distanceFromEnd = distanceFromEnd,
					atStart = viewportOffset == 0,
					atEnd = distanceFromEnd <= 1,
				}
			end
			local function context()
				return {
					itemCount = 20,
					scrollState = scrollState(),
					getScrollOffsetForItem = function(index)
						return index * 10
					end,
				}
			end
			local function apply(offset: number?)
				if offset == nil then
					return
				end
				if firstHostWrite then
					initialScrolls += 1
					firstHostWrite = false
				else
					endFollows += 1
				end
				viewportOffset = offset
				hostOffsetChecksum += offset
			end
			local function checkEdges(rearm: boolean)
				local _, endReached = policy.checkEdges(scrollState(), 20, rearm)
				if endReached then
					paginationHits += 1
				end
			end
			apply(policy.viewportChanged(context()))
			policy.observe(scrollState())
			apply(policy.dataChanged(context(), {
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
			}))
			checkEdges(true)
			contentLength = 220
			apply(policy.contentLengthChanged(scrollState()))
			checkEdges(false)
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
	local acquiredViews = 0
	local submissions = 0
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
	})
	local summary = benchmarkStats.measure(function()
		for _ = 1, stepCount do
			local requests = table.create(itemCount)
			for index = 1, itemCount do
				requests[index] = {
					viewType = "row",
				}
			end
			local acquired = scope.bind({
				releases = {},
				requests = requests,
				capacity = 4,
			}).acquired
			submissions += 1
			acquiredViews += #acquired
			scope.bind({
				releases = acquired,
				requests = {},
				capacity = 4,
			})
			submissions += 1
		end
	end, options)
	local retained = creations - evictions
	scope.dispose()
	assert(
		retained == 4 and evictions > 0 and acquiredViews > 0 and submissions > 0,
		"typed-pool retention benchmark did not apply view capacity pressure"
	)
	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "subsystem",
		owner = "core",
		responsibility = ResponsibilityCatalog.Core.RecyclingScope,
		timingClass = "integrated",
		workload = "typed-pool-retention-pressure",
		description = "Submits and releases view batches above a typed Recycling pool's vacancy capacity.",
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
			acquiredViews = acquiredViews,
			submissions = submissions,
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
	local counters = createCounters()
	local layout = Core.Layout.uniform({ itemLength = ITEM_LENGTH })
	local recyclingScope = createBoundedRecyclingScope(Core, {
		adapter = {
			create = function()
				return {}
			end,
			destroy = function() end,
		},
	}, itemCount)
	local source = Core.DataSource.snapshot(createItems(itemCount), function(item: Item)
		return tostring(item.id)
	end)
	local dataSource = table.clone(source)
	dataSource.getItemKey = function(index)
		counters.logicalKeyReads += 1
		return source.getItemKey(index)
	end
	dataSource.getItem = function(index)
		counters.payloadReads += 1
		return source.getItem(index)
	end
	local virtualizer = Core.Adapter.createVirtualizer({
		dataSource = dataSource,
		layout = layout,
		recyclingScope = recyclingScope,
		getItemViewType = function()
			counters.viewTypeReads += 1
			return "row"
		end,
		diagnostics = function(event)
			if event.kind == "itemViewsSynchronized" then
				counters.synchronizations += 1
				counters.reassignedAssignments += event.reassigned
				counters.acquiredAssignments += event.acquired
				counters.releasedAssignments += event.released
				counters.touchedKeys += event.touched
				counters.publicationCallbacks += event.reassigned + event.acquired + event.released
			end
		end,
	})
	virtualizer.activate()
	virtualizer.setViewportSize(VIEWPORT_LENGTH, CROSS_AXIS_LENGTH)
	local releases = 0
	local function runActiveToggle()
		for _ = 1, stepCount do
			local inactive = virtualizer.setActive(false)
			assert(#inactive.mountedViews == 0, "active toggle must clear mounted Views")
			virtualizer.setActive(true)
		end
	end
	local summary = benchmarkStats.measure(runActiveToggle, options)
	resetCounters(counters, true)
	runActiveToggle()
	local mountedAfterReactivation = #virtualizer.getCurrent().mountedViews
	releases = mountedAfterReactivation * stepCount
	local synchronizationBudget = stepCount * 2
	local touchedKeyBudget = mountedAfterReactivation * synchronizationBudget
	local enrichmentReadBudget = mountedAfterReactivation * stepCount
	local publicationCallbackBudget = counters.touchedKeys * 2
	virtualizer.destroy()
	recyclingScope.dispose()
	layout.destroy()
	assert(releases > 0 and mountedAfterReactivation > 0, "active toggle benchmark did not release and reactivate")
	assert(counters.logicalKeyReads == 0, "active toggle reread logical keys from its retained projection")
	assert(counters.payloadReads <= enrichmentReadBudget, "active toggle exceeded its payload-read budget")
	assert(counters.viewTypeReads <= enrichmentReadBudget, "active toggle exceeded its view-type read budget")
	assert(counters.synchronizations <= synchronizationBudget, "active toggle exceeded its synchronization budget")
	assert(counters.touchedKeys <= touchedKeyBudget, "active toggle exceeded its reconciler touch budget")
	assert(
		counters.publicationCallbacks <= publicationCallbackBudget,
		"active toggle exceeded its publication callback budget"
	)
	return benchmarkContract.create({
		suite = "view-recycler-core",
		layer = "core",
		owner = "core",
		responsibility = ResponsibilityCatalog.Core.ListRows,
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
			synchronizations = counters.synchronizations,
			touchedKeys = counters.touchedKeys,
			logicalKeyReads = counters.logicalKeyReads,
			payloadReads = counters.payloadReads,
			viewTypeReads = counters.viewTypeReads,
			publicationCallbacks = counters.publicationCallbacks,
			logicalKeyReadBudget = 0,
			enrichmentReadBudget = enrichmentReadBudget,
			synchronizationBudget = synchronizationBudget,
			touchedKeyBudget = touchedKeyBudget,
			publicationCallbackBudget = publicationCallbackBudget,
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
		local recyclingScope = createBoundedRecyclingScope(Core, {
			adapter = {
				create = function()
					return {}
				end,
				destroy = function() end,
			},
		}, itemCount)
		local virtualizer = Core.Adapter.createVirtualizer({
			dataSource = Core.DataSource.snapshot(createItems(itemCount), function(item: Item)
				return tostring(item.id)
			end),
			layout = layout,
			recyclingScope = recyclingScope,
			getItemViewType = function()
				return "row"
			end,
		})
		virtualizer.activate()
		virtualizer.setViewportSize(VIEWPORT_LENGTH, CROSS_AXIS_LENGTH)
		initialized += 1
		mounted += #virtualizer.getCurrent().mountedViews
		local beforeDestroy = #virtualizer.getCurrent().mountedViews
		virtualizer.destroy()
		released += beforeDestroy
		recyclingScope.dispose()
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
				ResponsibilityCatalog.Core.ListRows,
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
		measureSubItemScrolling(Core, benchmarkStats, benchmarkContract, itemCounts[1], scrollStepCount, resolved)
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
			false,
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
			true,
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

local function runSubItemScrolling(
	Core: CoreApi,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	options: Options?
): any
	local resolved: Options = options or {}
	local itemCounts = resolved.itemCounts or DEFAULT_ITEM_COUNTS
	local scrollStepCount = resolved.scrollStepCount or DEFAULT_SCROLL_STEP_COUNT
	assert(#itemCounts > 0, "itemCounts must not be empty")
	assert(scrollStepCount >= 1 and scrollStepCount % 1 == 0, "scrollStepCount must be a positive integer")
	return measureSubItemScrolling(Core, benchmarkStats, benchmarkContract, itemCounts[1], scrollStepCount, resolved)
end

local function runStructuralEvidence(
	Core: CoreApi,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	options: Options?
): { any }
	local resolved: Options = options or {}
	local itemCounts = resolved.itemCounts or DEFAULT_ITEM_COUNTS
	local scrollStepCount = resolved.scrollStepCount or DEFAULT_SCROLL_STEP_COUNT
	assert(#itemCounts > 0, "itemCounts must not be empty")
	assert(itemCounts[1] >= 40, "the smallest item count must cover structural workloads")
	assert(scrollStepCount >= 1 and scrollStepCount % 1 == 0, "scrollStepCount must be a positive integer")
	local itemCount = itemCounts[1]
	return {
		measureTraversal(
			Core,
			benchmarkStats,
			benchmarkContract,
			itemCount,
			scrollStepCount,
			false,
			false,
			"slide",
			"one-row-window-slide",
			"Slides the mounted window by one row and budgets sparse projection work.",
			ResponsibilityCatalog.Core.ListRows,
			resolved
		),
		measureTraversal(
			Core,
			benchmarkStats,
			benchmarkContract,
			itemCount,
			scrollStepCount,
			true,
			false,
			"slide",
			"measured-one-row-window-slide",
			"Slides a measured mounted window by one row and budgets edge-only Layout reads.",
			ResponsibilityCatalog.Core.ListRows,
			resolved
		),
		measureTraversal(
			Core,
			benchmarkStats,
			benchmarkContract,
			itemCount,
			scrollStepCount,
			false,
			false,
			"jump",
			"disjoint-window-jump",
			"Jumps between disjoint mounted windows and budgets dense replacement work.",
			ResponsibilityCatalog.Core.ListRows,
			resolved
		),
		measureAtomicMutation(
			Core,
			benchmarkStats,
			benchmarkContract,
			itemCount,
			ResponsibilityCatalog.Core.DataAnchoring,
			"prepend-remove-mutation",
			true,
			resolved
		),
		measureActiveToggle(Core, benchmarkStats, benchmarkContract, itemCount, scrollStepCount, resolved),
	}
end

return {
	run = run,
	runStructuralEvidence = runStructuralEvidence,
	runSubItemScrolling = runSubItemScrolling,
}
