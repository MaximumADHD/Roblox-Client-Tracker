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
	operationCount: number?,
}

type Dependencies = {
	Axis: any,
	CanvasItemPlacer: any,
	HostPlacement: any,
	Measurer: any,
	ScrollHost: any,
	Signals: any,
	ViewportCoordinator: any,
}

type BenchmarkStatsApi = {
	run: (sample: () -> number, options: Options?) -> { [string]: any },
	measure: (operation: () -> (), options: Options?) -> { [string]: any },
}

type BenchmarkContractApi = {
	create: (options: any) -> any,
}

local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local CoreRoot = Root.Parent.Parent.ViewRecycler.ViewRecycler
local Core = require(Root.Parent.ViewRecycler)
local MeasurementBatcher = require(Root.RobloxAdapter.MeasurementBatcher)
local ReparentableHost = require(Root.RobloxAdapter.ReparentableHost)
local ResponsibilityCatalog = require(CoreRoot.Core.Diagnostics.__benchmarks__.ResponsibilityCatalog)
local createRecyclingScope = require(Root.RobloxAdapter.createRecyclingScope).create
local createVirtualizer = require(Root.RobloxAdapter.createVirtualizer)

local DEFAULT_OPERATION_COUNT = 100
-- Each activation operation waits on four frames, so samples are frame-bound;
-- more operations only lengthen the run.
local MAX_VIEWPORT_ACTIVATION_OPERATIONS = 10

local function record(
	benchmarkContract: BenchmarkContractApi,
	responsibility: string,
	timingClass: string,
	workload: string,
	description: string,
	basis: string,
	includesSchedulerWaits: boolean,
	operationCount: number,
	summary: { [string]: any },
	evidence: { [string]: any }
)
	return benchmarkContract.create({
		suite = "view-recycler-roblox",
		layer = "robloxHost",
		owner = "roblox",
		responsibility = responsibility,
		timingClass = timingClass,
		workload = workload,
		description = description,
		scale = {
			operations = operationCount,
		},
		timing = {
			unit = "ms",
			basis = basis,
			operationsPerSample = operationCount,
			includesSchedulerWaits = includesSchedulerWaits,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = evidence,
	})
end

local function placementWorkload(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	operationCount: number,
	options: Options
)
	local firstParent = Instance.new("Folder")
	local secondParent = Instance.new("Folder")
	local host = Instance.new("Frame")
	local state = dependencies.CanvasItemPlacer.createState()
	local firstGeometry = {
		position = UDim2.fromOffset(0, 40),
		size = UDim2.new(1, 0, 0, 40),
		automaticSize = Enum.AutomaticSize.None,
	}
	local secondGeometry = {
		position = UDim2.fromOffset(0, 80),
		size = firstGeometry.size,
		automaticSize = firstGeometry.automaticSize,
	}
	dependencies.CanvasItemPlacer.place(host, firstParent, firstGeometry, state, true)
	local changedWrites = 0
	local unchangedWrites = 0
	local reparentWrites = 0
	local summary = benchmarkStats.measure(function()
		changedWrites = 0
		unchangedWrites = 0
		reparentWrites = 0
		for _ = 1, operationCount do
			changedWrites += dependencies.CanvasItemPlacer.place(host, firstParent, secondGeometry, state, true)
			unchangedWrites += dependencies.CanvasItemPlacer.place(host, firstParent, secondGeometry, state, true)
			reparentWrites += dependencies.CanvasItemPlacer.place(host, secondParent, secondGeometry, state, true)
			reparentWrites += dependencies.CanvasItemPlacer.place(host, firstParent, firstGeometry, state, true)
		end
	end, options)
	local result = record(
		benchmarkContract,
		ResponsibilityCatalog.Roblox.GeometryPlacement,
		"hostBoundary",
		"geometry-placement-paths",
		"Groups changed, unchanged, and reparented CanvasItemPlacer paths.",
		"placementPathBatch",
		false,
		operationCount,
		summary,
		{
			placementCalls = operationCount * 4,
			changedPropertyWrites = changedWrites,
			unchangedPropertyWrites = unchangedWrites,
			reparentPropertyWrites = reparentWrites,
		}
	)
	dependencies.CanvasItemPlacer.detach(host, state)
	host:Destroy()
	firstParent:Destroy()
	secondParent:Destroy()
	return result
end

local function createPlacementRoutingFixture(
	dependencies: Dependencies,
	useViewportOverlay: boolean,
	initialViewportRelative: boolean
)
	local canvas = Instance.new("ScrollingFrame")
	local overlay = Instance.new("Frame")
	local host = Instance.new("Frame")
	local viewportRelative = initialViewportRelative
	local mainAxisOffset = 0
	local assignment = {
		key = "row",
		value = "row",
	}
	local hostPlacement = dependencies.HostPlacement.new({
		container = canvas,
		viewportContainer = if useViewportOverlay then overlay else nil,
		axis = dependencies.Axis.Y,
		selfSizing = false,
		onItemMeasurements = function() end,
		onItemViewPresentationChanged = function() end,
	})
	local function placementIntent()
		return {
			assignment = assignment,
			index = 1,
			itemLayout = {
				startOffset = 0,
				length = 40,
			},
			canvasPlacement = {
				mainAxisOffset = mainAxisOffset,
				mainAxisLength = 40,
			},
			viewportPlacement = if viewportRelative
				then {
					mainAxisOffset = mainAxisOffset,
					mainAxisLength = 40,
					viewportRelative = true,
				}
				else nil,
			contentStartOffset = 0,
		}
	end
	hostPlacement.apply(host, {
		host = host,
		phase = "presented",
		state = placementIntent(),
	})
	return {
		canvas = canvas,
		overlay = overlay,
		host = host,
		hostPlacement = hostPlacement,
		setPlacement = function(nextOffset: number, nextViewportRelative: boolean)
			mainAxisOffset = nextOffset
			viewportRelative = nextViewportRelative
		end,
		publishPlacementGeometry = function()
			hostPlacement.apply(host, {
				host = host,
				phase = "presented",
				state = placementIntent(),
			})
		end,
	}
end

local function destroyPlacementRoutingFixture(fixture)
	fixture.hostPlacement.destroy()
	fixture.host:Destroy()
	fixture.overlay:Destroy()
	fixture.canvas:Destroy()
end

local function placementRoutingWorkload(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	operationCount: number,
	options: Options
)
	local canvasFallbackFixture = createPlacementRoutingFixture(dependencies, false, true)
	local overlayFixture = createPlacementRoutingFixture(dependencies, true, true)
	local routingFixture = createPlacementRoutingFixture(dependencies, true, true)

	local canvasFallbackSummary = benchmarkStats.measure(function()
		for step = 1, operationCount do
			canvasFallbackFixture.setPlacement(step, true)
			canvasFallbackFixture.publishPlacementGeometry(step)
		end
	end, options)
	local overlaySummary = benchmarkStats.measure(function()
		for step = 1, operationCount do
			overlayFixture.setPlacement(step, true)
			overlayFixture.publishPlacementGeometry(step)
		end
	end, options)
	local routingSummary = benchmarkStats.measure(function()
		for step = 1, operationCount do
			routingFixture.setPlacement(step, step % 2 == 0)
			routingFixture.publishPlacementGeometry(step)
		end
	end, options)

	local result = benchmarkContract.create({
		suite = "view-recycler-roblox",
		layer = "robloxHost",
		owner = "roblox",
		responsibility = ResponsibilityCatalog.Roblox.GeometryPlacement,
		timingClass = "integrated",
		workload = "viewport-overlay-placement-routing",
		description = "Compares retained overlay and canvas-fallback geometry with canvas-to-overlay routing transitions.",
		scale = {
			operations = operationCount,
		},
		timing = {
			unit = "ms",
			basis = "placementPublicationBatch",
			operationsPerSample = operationCount,
			includesSchedulerWaits = false,
		},
		arms = {
			canvasFallback = canvasFallbackSummary,
			viewportOverlay = overlaySummary,
			routingTransitions = routingSummary,
		},
		evidence = {
			canvasFallbackGeometryPublications = operationCount,
			overlayGeometryPublications = operationCount,
			routingPublications = operationCount,
			routingReparents = operationCount,
			canvasFallbackHostParent = canvasFallbackFixture.host.Parent == canvasFallbackFixture.canvas,
			overlayHostParent = overlayFixture.host.Parent == overlayFixture.overlay,
			routedHostInOverlay = routingFixture.host.Parent == routingFixture.overlay,
			canvasFallbackHostOffset = canvasFallbackFixture.host.Position.Y.Offset,
			overlayHostOffset = overlayFixture.host.Position.Y.Offset,
		},
	})

	destroyPlacementRoutingFixture(canvasFallbackFixture)
	destroyPlacementRoutingFixture(overlayFixture)
	destroyPlacementRoutingFixture(routingFixture)
	return result
end

local function reparentSelectionWorkload(
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	operationCount: number,
	options: Options
)
	local screen = Instance.new("ScreenGui")
	screen.Parent = game:GetService("CoreGui")
	local firstPlaceholder = Instance.new("Frame")
	firstPlaceholder.Parent = screen
	local secondPlaceholder = Instance.new("Frame")
	secondPlaceholder.Parent = screen
	local host = ReparentableHost.create("BenchmarkHost")
	local selected = Instance.new("TextButton")
	selected.Selectable = true
	selected.Parent = host
	local placements = 0
	local selectionClears = 0
	local detachments = 0
	local summary = benchmarkStats.measure(function()
		placements = 0
		selectionClears = 0
		detachments = 0
		for step = 1, operationCount do
			ReparentableHost.place(host, {
				placeholder = if step % 2 == 0 then firstPlaceholder else secondPlaceholder,
				automaticSize = Enum.AutomaticSize.Y,
			})
			placements += 1
			if step == 1 then
				GuiService.SelectedObject = selected
			end
			ReparentableHost.detach(host)
			detachments += 1
			if step == 1 and GuiService.SelectedObject == nil then
				selectionClears += 1
			end
		end
	end, options)
	local result = record(
		benchmarkContract,
		ResponsibilityCatalog.Roblox.ReparentSelection,
		"hostBoundary",
		"reparent-selection-cleanup",
		"Places ReparentableHost instances and clears descendant selection while detaching.",
		"reparentSelectionBatch",
		false,
		operationCount,
		summary,
		{
			placements = placements,
			selectionClears = selectionClears,
			detachments = detachments,
			finalParentIsNil = host.Parent == nil,
		}
	)
	ReparentableHost.destroy(host)
	screen:Destroy()
	return result
end

local function physicalLifecycleWorkload(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	operationCount: number,
	options: Options
)
	local container = Instance.new("Folder")
	local host = Instance.new("Frame")
	local hostPlacement = dependencies.HostPlacement.new({
		container = container,
		axis = dependencies.Axis.Y,
		selfSizing = false,
		onItemMeasurements = function() end,
		onItemViewPresentationChanged = function() end,
	})
	local attachments = 0
	local detachments = 0
	local summary = benchmarkStats.measure(function()
		attachments = 0
		detachments = 0
		for step = 1, operationCount do
			local nextAssignment = {
				key = "row",
				value = "row",
			}
			hostPlacement.apply(host, {
				host = host,
				phase = "presented",
				state = {
					assignment = nextAssignment,
					index = 1,
					itemLayout = { startOffset = 0, length = 40 },
					canvasPlacement = {},
					viewportPlacement = nil,
					contentStartOffset = 0,
				},
			})
			if host.Parent == container then
				attachments += 1
			end
			hostPlacement.apply(host, nil)
			if host.Parent == nil and not host.Visible then
				detachments += 1
			end
		end
	end, options)
	local result = record(
		benchmarkContract,
		ResponsibilityCatalog.Roblox.PhysicalLifecycle,
		"integrated",
		"canvas-item-view-physical-lifecycle",
		"Transitions one HostPlacement view through attachment and detachment without measurement work.",
		"physicalAttachDetachBatch",
		false,
		operationCount,
		summary,
		{
			attachments = attachments,
			detachments = detachments,
			finalParentIsNil = host.Parent == nil,
		}
	)
	hostPlacement.destroy()
	host:Destroy()
	container:Destroy()
	return result
end

local function createScrollHost(dependencies: Dependencies, scrollingFrame: ScrollingFrame)
	local contentLength = scrollingFrame.CanvasSize.Y.Offset
	local viewportUpdates = 0
	local runtimeUpdates = 0
	local dataSource = Core.DataSource.snapshot({}, function(item)
		return item
	end)
	local virtualizer
	virtualizer = {
		setViewportSize = function()
			viewportUpdates += 1
			return virtualizer.getCurrent()
		end,
		observeScrollOffset = function()
			runtimeUpdates += 1
			return virtualizer.getCurrent()
		end,
		getCurrent = function()
			return {
				mountedViews = {},
				visibleRange = { firstIndex = 0, lastIndex = 0 },
				mountedRange = { firstIndex = 0, lastIndex = 0 },
				scrollState = {
					scrollOffset = scrollingFrame.CanvasPosition.Y,
					viewportLength = scrollingFrame.AbsoluteWindowSize.Y,
					contentLength = contentLength,
					distanceFromEnd = contentLength,
					atStart = true,
					atEnd = false,
				},
				contentStartOffset = 0,
				contentLength = contentLength,
				requiresItemMeasurement = false,
				scrollCorrection = 0,
				scrollPositionChanged = false,
				contentLengthChanged = false,
				startReached = false,
				endReached = false,
				dataPrefetchRequests = {},
				diagnostics = {},
			}
		end,
	}
	local sync = dependencies.ScrollHost.new({
		observeScrollOffset = virtualizer.observeScrollOffset,
		setViewportSize = virtualizer.setViewportSize,
		getCurrent = virtualizer.getCurrent,
		getInstance = function()
			return scrollingFrame
		end,
		getConfiguration = function()
			return {
				axis = dependencies.Axis.Y,
				dataSource = dataSource,
				initialScrollAlignment = nil,
				autoScrollOnChange = nil,
				startReachedThreshold = nil,
				onStartReached = nil,
				onEndReached = nil,
				onViewportChanged = nil,
				onScrollOffsetChanged = nil,
				onContentLengthChanged = nil,
			}
		end,
	})
	local disconnect = sync.connect()
	viewportUpdates = 0
	runtimeUpdates = 0
	return sync,
		function()
			return viewportUpdates, runtimeUpdates
		end,
		function(offset: number)
			local updateRecord = virtualizer.getCurrent()
			updateRecord.scrollPositionChanged = true
			updateRecord.scrollState.scrollOffset = offset
			sync.applyRecord(updateRecord, function() end)
		end,
		function(nextContentLength: number)
			contentLength = nextContentLength
		end,
		disconnect
end

local function scrollSynchronizationWorkload(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	operationCount: number,
	options: Options
)
	local scrollingFrame = Instance.new("ScrollingFrame")
	scrollingFrame.Size = UDim2.fromOffset(400, 400)
	scrollingFrame.CanvasSize = UDim2.fromOffset(400, 4000)
	local sync, getUpdates, emitScrollPosition, _, disconnect = createScrollHost(dependencies, scrollingFrame)
	local summary = benchmarkStats.measure(function()
		for step = 1, operationCount do
			sync.scrollingFrameChanged()
			emitScrollPosition(step)
			scrollingFrame.CanvasPosition = scrollingFrame.CanvasPosition
		end
	end, options)
	local viewportUpdates, runtimeUpdates = getUpdates()
	local result = record(
		benchmarkContract,
		ResponsibilityCatalog.Roblox.ScrollViewportSync,
		"hostBoundary",
		"scroll-viewport-offset-correction-sync",
		"Synchronizes viewport geometry and attributes host-reported offsets to Programmatic or User scroll.",
		"scrollSynchronizationBatch",
		false,
		operationCount,
		summary,
		{
			viewportUpdates = viewportUpdates,
			runtimeUpdates = runtimeUpdates,
			finalScrollOffset = scrollingFrame.CanvasPosition.Y,
		}
	)
	disconnect()
	scrollingFrame:Destroy()
	return result
end

local function canvasPublicationWorkload(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	operationCount: number,
	options: Options
)
	local scrollingFrame = Instance.new("ScrollingFrame")
	local _, _, emitScrollPosition, setContentLength, disconnect = createScrollHost(dependencies, scrollingFrame)
	local publications = 0
	local summary = benchmarkStats.measure(function()
		publications = 0
		for step = 1, operationCount do
			setContentLength(step * 40)
			emitScrollPosition(0)
			publications += 1
		end
	end, options)
	local result = record(
		benchmarkContract,
		ResponsibilityCatalog.Roblox.CanvasPublication,
		"hostBoundary",
		"canvas-size-publication",
		"Computes and publishes adapter canvas sizes to a ScrollingFrame.",
		"canvasPublicationBatch",
		false,
		operationCount,
		summary,
		{
			canvasPublications = publications,
			finalCanvasLength = scrollingFrame.CanvasSize.Y.Offset,
		}
	)
	disconnect()
	scrollingFrame:Destroy()
	return result
end

local function measurementSchedulingWorkload(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	operationCount: number,
	options: Options
)
	local host = Instance.new("Frame")
	host.Size = UDim2.fromOffset(100, 40)
	local state = {
		key = "row",
		index = 1,
		itemRevision = 0,
	}
	local evidence = {}
	local summary = benchmarkStats.measure(function()
		local deferred = {}
		local batchFlushes = 0
		local batchedMeasurements = 0
		local cancellations = 0
		local measurer = dependencies.Measurer.attach({
			instance = host,
			axis = dependencies.Axis.Y,
			getState = function()
				return state
			end,
			onItemMeasured = function() end,
		})
		local batcher = MeasurementBatcher.new(function(measurements)
			batchFlushes += 1
			batchedMeasurements += #measurements
		end, function(callback)
			table.insert(deferred, callback)
		end)
		for step = 1, operationCount do
			state = { key = "row", index = 1, itemRevision = step }
			measurer.scheduleSettle()
			measurer.scheduleSettle()
			batcher.add({ itemView = host, state = state, length = 40 })
			batcher.add({ itemView = host, state = state, length = 41 })
			table.remove(deferred, 1)()
			batcher.add({
				itemView = host,
				state = state,
				length = 0,
			})
			batcher.cancelPending()
			table.remove(deferred, 1)()
			cancellations += 1
		end
		evidence = {
			settleRequests = operationCount * 2,
			uniquePendingHeartbeats = measurer.getPendingCount(),
			batchFlushes = batchFlushes,
			batchedMeasurements = batchedMeasurements,
			cancellations = cancellations,
			deferredCallbacksRemaining = #deferred,
		}
		batcher.destroy()
		measurer.disconnect()
	end, options)
	host:Destroy()
	return record(
		benchmarkContract,
		ResponsibilityCatalog.Roblox.MeasurementScheduling,
		"phased",
		"measurement-adapter-scheduling",
		"Schedules deduplicated settles, flushes measurement batches, and cancels stale batches without yielding.",
		"adapterMeasurementSchedulingBatch",
		false,
		operationCount,
		summary,
		evidence
	)
end

local function measurementHeartbeatWorkload(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	options: Options
)
	local screen = Instance.new("ScreenGui")
	screen.Parent = game:GetService("CoreGui")
	local host = Instance.new("Frame")
	host.Size = UDim2.fromOffset(100, 40)
	host.Parent = screen
	RunService.Heartbeat:Wait()
	local state = {
		key = "row",
		index = 1,
		itemRevision = 0,
	}
	local observedMeasurements = 0
	local lastSampleMeasurements = 0
	local lastLength = -1
	local completed = Instance.new("BindableEvent")
	local measurer = dependencies.Measurer.attach({
		instance = host,
		axis = dependencies.Axis.Y,
		getState = function()
			return state
		end,
		onItemMeasured = function(_, length)
			observedMeasurements += 1
			lastLength = length
			completed:Fire()
		end,
	})
	local clock = options.clock or os.clock
	local summary = benchmarkStats.run(function()
		state = { key = "row", index = 1, itemRevision = state.itemRevision + 1 }
		local before = observedMeasurements
		measurer.scheduleSettle()
		local started = clock()
		completed.Event:Wait()
		local elapsedMs = (clock() - started) * 1000
		lastSampleMeasurements = observedMeasurements - before
		assert(lastSampleMeasurements == 1, "scheduled measurement did not settle on Heartbeat")
		return elapsedMs
	end, options)
	local result = record(
		benchmarkContract,
		ResponsibilityCatalog.Roblox.MeasurementScheduling,
		"hostBoundary",
		"measurement-heartbeat-observation",
		"Observes one scheduled Roblox measurement after its required Heartbeat boundary.",
		"heartbeatMeasurementObservation",
		true,
		1,
		summary,
		{
			observedMeasurements = lastSampleMeasurements,
			lastMeasuredLength = lastLength,
			pendingHeartbeats = measurer.getPendingCount(),
			completionBarrier = "RunService.Heartbeat",
		}
	)
	measurer.disconnect()
	completed:Destroy()
	screen:Destroy()
	return result
end

local function createFakeGui(options)
	local propertyEvents = {}
	local allEvents = {}
	local destroying = Instance.new("BindableEvent")
	table.insert(allEvents, destroying)
	local object = {
		AbsolutePosition = options.position or Vector2.zero,
		AbsoluteSize = options.size or Vector2.zero,
		AbsoluteWindowSize = options.windowSize or Vector2.zero,
		CanvasPosition = options.canvasPosition or Vector2.zero,
		Parent = options.parent,
		Destroying = destroying.Event,
	}
	function object:GetPropertyChangedSignal(property)
		local event = propertyEvents[property]
		if event == nil then
			event = Instance.new("BindableEvent")
			propertyEvents[property] = event
			table.insert(allEvents, event)
		end
		return event.Event
	end
	function object:IsDescendantOf(ancestor)
		local parent = self.Parent
		while parent ~= nil do
			if parent == ancestor then
				return true
			end
			parent = parent.Parent
		end
		return false
	end
	function object:fire(property)
		local event = propertyEvents[property]
		if event ~= nil then
			event:Fire()
		end
	end
	function object:destroy()
		for _, event in allEvents do
			event:Destroy()
		end
	end
	return object
end

local function viewportActivationWorkload(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	operationCount: number,
	options: Options
)
	operationCount = math.min(operationCount, MAX_VIEWPORT_ACTIVATION_OPERATIONS)
	local viewport = createFakeGui({
		position = Vector2.new(0, 0),
		windowSize = Vector2.new(100, 100),
	})
	local target = createFakeGui({
		position = Vector2.new(0, 150),
		size = Vector2.new(10, 10),
		parent = viewport,
	})
	local transitions = 0
	local coordinator = dependencies.ViewportCoordinator.new({ axis = dependencies.Axis.Y })
	coordinator.setViewport(viewport)
	local unregister = coordinator.register(target, function()
		transitions += 1
	end)
	local initialTransitions = transitions
	local summary = benchmarkStats.measure(function()
		for _ = 1, operationCount do
			target.AbsolutePosition = Vector2.new(0, 50)
			target:fire("AbsolutePosition")
			target:fire("AbsolutePosition")
			RunService.Heartbeat:Wait()
			task.wait()
			target.AbsolutePosition = Vector2.new(0, 150)
			target:fire("AbsolutePosition")
			RunService.Heartbeat:Wait()
			task.wait()
		end
	end, options)
	local result = record(
		benchmarkContract,
		ResponsibilityCatalog.Roblox.ViewportActivation,
		"integrated",
		"viewport-activation-transitions",
		"Coalesces repeated layout geometry and evaluates each settled activation transition at Heartbeat.",
		"viewportActivationBatch",
		true,
		operationCount,
		summary,
		{
			evaluations = operationCount * 2,
			transitions = transitions - initialTransitions,
			noOpEvaluations = 0,
			completionBarrier = "RunService.Heartbeat",
		}
	)
	unregister()
	coordinator.destroy()
	target:destroy()
	viewport:destroy()
	return result
end

local FRAME_WORK_ITEM_COUNT = 1000
local FRAME_WORK_ESTIMATE = 60
local FRAME_WORK_SCROLL_STEP = 37
local FRAME_WORK_SETTLE_FRAMES = 15
local MAX_FRAME_WORK_FRAMES_PER_SAMPLE = 10

local function frameWorkItemLength(index: number): number
	return 40 + (index * 7) % 41
end

local function createFrameWorkList(dependencies: Dependencies, layoutKind: string)
	local clock = os.clock
	local frameActive = false
	local windowStarted = 0
	local pendingFrames = 0
	local busyMs = 0
	local frameAction: (() -> ())? = nil
	local sampled = Instance.new("BindableEvent")
	-- Frame pacing sleeps between Heartbeat and RenderStepped, so a frame's
	-- work is timed as two windows: PreAnimation through Heartbeat, and
	-- RenderStepped through PreRender. Connections to one event fire
	-- last-connected first, so the end markers, connected before the list,
	-- fire after its handlers; deferring the reading also counts deferred
	-- work those handlers queued.
	local function closeWindow()
		busyMs += (clock() - windowStarted) * 1000
	end
	local heartbeatEnd = RunService.Heartbeat:Connect(function()
		if frameActive then
			task.defer(closeWindow)
		end
	end)
	local preRenderEnd = RunService.PreRender:Connect(function()
		if not frameActive then
			return
		end
		task.defer(function()
			closeWindow()
			frameActive = false
			pendingFrames -= 1
			if pendingFrames == 0 then
				sampled:Fire()
			end
		end)
	end)

	local screen = Instance.new("ScreenGui")
	screen.Parent = game:GetService("CoreGui")
	local scrollingFrame = Instance.new("ScrollingFrame")
	scrollingFrame.Size = UDim2.fromOffset(300, 600)
	scrollingFrame.Parent = screen
	local values = table.create(FRAME_WORK_ITEM_COUNT)
	for index = 1, FRAME_WORK_ITEM_COUNT do
		table.insert(values, { id = `row-{index}`, length = frameWorkItemLength(index) })
	end
	local layout = if layoutKind == "measured"
		then Core.Layout.measured({ estimatedItemLength = FRAME_WORK_ESTIMATE })
		else Core.Layout.uniform({ itemLength = FRAME_WORK_ESTIMATE })
	local recyclingScope = createRecyclingScope({
		itemViewAdapter = {
			create = function()
				local instance = Instance.new("Frame")
				instance.BackgroundTransparency = 1
				local content = Instance.new("Frame")
				content.Name = "Content"
				content.Parent = instance
				return instance
			end,
		},
	})
	local virtualizer = createVirtualizer({
		scrollingFrame = scrollingFrame,
		axis = dependencies.Axis.Y,
		dataSource = Core.DataSource.sequence(values, function(value)
			return value.id
		end),
		layout = layout,
		recyclingScope = recyclingScope,
		getItemViewType = function()
			return "row"
		end,
		transition = function(instance, assignment)
			if assignment ~= nil then
				local content = instance:FindFirstChild("Content") :: Frame
				content.Size = UDim2.new(1, 0, 0, assignment.value.length)
			end
		end,
	})
	-- The adapter connects to neither PreAnimation nor RenderStepped, so these
	-- start markers precede all of its frame work.
	local frameStart = RunService.PreAnimation:Connect(function()
		if pendingFrames <= 0 then
			return
		end
		frameActive = true
		windowStarted = clock()
		if frameAction ~= nil then
			frameAction()
		end
	end)
	local renderStart = RunService.RenderStepped:Connect(function()
		if frameActive then
			windowStarted = clock()
		end
	end)

	local function mountedHosts(): number
		local count = 0
		for _, descendant in scrollingFrame:GetDescendants() do
			if descendant.Name == "Content" then
				count += 1
			end
		end
		return count
	end

	for _ = 1, FRAME_WORK_SETTLE_FRAMES do
		RunService.Heartbeat:Wait()
	end

	return {
		scrollingFrame = scrollingFrame,
		sample = function(frames: number, action: (() -> ())?): number
			busyMs = 0
			frameAction = action
			frameActive = false
			pendingFrames = frames
			sampled.Event:Wait()
			frameAction = nil
			return busyMs
		end,
		visibleContent = function(): Frame?
			local top = scrollingFrame.AbsolutePosition.Y
			local bottom = top + scrollingFrame.AbsoluteWindowSize.Y
			for _, descendant in scrollingFrame:GetDescendants() do
				if descendant.Name == "Content" and (descendant.Parent :: GuiObject).Visible then
					local y = (descendant :: Frame).AbsolutePosition.Y
					if y >= top and y < bottom then
						return descendant :: Frame
					end
				end
			end
			return nil
		end,
		evidence = function()
			return {
				stacked = scrollingFrame:FindFirstChild("ViewRecyclerStack") ~= nil,
				mountedHosts = mountedHosts(),
			}
		end,
		destroy = function()
			frameStart:Disconnect()
			renderStart:Disconnect()
			heartbeatEnd:Disconnect()
			preRenderEnd:Disconnect()
			virtualizer.destroy()
			recyclingScope.dispose()
			layout.destroy()
			screen:Destroy()
			sampled:Destroy()
		end,
	}
end

local FRAME_WORK_SCENARIOS = {
	{
		name = "scroll",
		workload = "layout-scroll-frame-work",
		description = "Main-thread adapter work per frame, before render, while scrolling 37 px per frame through 1,000 Items: a uniform list placed absolutely beside a measured list stacked.",
		layouts = { "uniform", "measured" },
	},
	{
		name = "resize",
		workload = "measured-resize-frame-work",
		description = "Main-thread adapter work per frame, before render, while one visible measured Item changes length every frame.",
		layouts = { "measured" },
	},
	{
		name = "idle",
		workload = "layout-idle-frame-work",
		description = "Main-thread adapter work per frame, before render, for a settled list with no scroll or content change: a uniform list placed absolutely beside a measured list stacked.",
		layouts = { "uniform", "measured" },
	},
}

local function frameWorkWorkloads(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	operationCount: number,
	options: Options
)
	local framesPerSample = math.min(operationCount, MAX_FRAME_WORK_FRAMES_PER_SAMPLE)
	local results = {}
	for _, scenario in FRAME_WORK_SCENARIOS do
		local arms = {}
		local evidence = { framesPerSample = framesPerSample, items = FRAME_WORK_ITEM_COUNT }
		for _, layoutKind in scenario.layouts do
			local list = createFrameWorkList(dependencies, layoutKind)
			local grown = false
			local action: (() -> ())? = nil
			if scenario.name == "scroll" then
				action = function()
					local position = list.scrollingFrame.CanvasPosition
					list.scrollingFrame.CanvasPosition = position + Vector2.new(0, FRAME_WORK_SCROLL_STEP)
				end
			elseif scenario.name == "resize" then
				local target = list.visibleContent()
				assert(target ~= nil, "frame-work benchmark found no visible Item")
				local baseLength = target.Size.Y.Offset
				action = function()
					grown = not grown
					target.Size = UDim2.new(1, 0, 0, if grown then baseLength + 20 else baseLength)
				end
			end
			-- Measured Items are stacked; uniform Items are placed absolutely.
			local armName = `{layoutKind}{if layoutKind == "measured" then "Stacked" else "Absolute"}`
			arms[armName] = benchmarkStats.run(function()
				return list.sample(framesPerSample, action)
			end, options)
			evidence[armName] = list.evidence()
			list.destroy()
		end
		table.insert(
			results,
			benchmarkContract.create({
				suite = "view-recycler-roblox",
				layer = "robloxHost",
				owner = "roblox",
				responsibility = ResponsibilityCatalog.Roblox.GeometryPlacement,
				timingClass = "integrated",
				workload = scenario.workload,
				description = scenario.description,
				scale = {
					items = FRAME_WORK_ITEM_COUNT,
					frames = framesPerSample,
				},
				timing = {
					unit = "ms",
					basis = "mainThreadFrameWorkBeforeRender",
					operationsPerSample = framesPerSample,
					includesSchedulerWaits = false,
				},
				arms = arms,
				evidence = evidence,
			})
		)
	end
	return results
end

local function teardownWorkload(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	operationCount: number,
	options: Options
)
	local clock = options.clock or os.clock
	local adaptersDestroyed = 0
	local itemViewsDestroyed = 0
	local idempotentDestroyCalls = 0
	local fixtureGeneration = 0
	local hostTeardownMs = 0
	local scopeTeardownMs = 0
	local summary = benchmarkStats.run(function()
		adaptersDestroyed = 0
		itemViewsDestroyed = 0
		idempotentDestroyCalls = 0
		hostTeardownMs = 0
		scopeTeardownMs = 0
		local elapsedMs = 0
		for _ = 1, operationCount do
			fixtureGeneration += 1
			local scrollingFrame = Instance.new("ScrollingFrame")
			scrollingFrame.Size = UDim2.fromOffset(100, 40)
			local layout = Core.Layout.uniform({ itemLength = 20 })
			local recyclingScope = createRecyclingScope({
				itemViewAdapter = {
					create = function()
						return Instance.new("Frame")
					end,
				},
				destroyItemView = function(itemView)
					itemViewsDestroyed += 1
					itemView:Destroy()
				end,
			})
			local virtualizer = createVirtualizer({
				scrollingFrame = scrollingFrame,
				axis = dependencies.Axis.Y,
				dataSource = Core.DataSource.snapshot(
					{ `a-{fixtureGeneration}`, `b-{fixtureGeneration}` },
					function(value)
						return value
					end
				),
				layout = layout,
				recyclingScope = recyclingScope,
				transition = function() end,
				getItemViewType = function()
					return "row"
				end,
			})
			local started = clock()
			virtualizer.destroy()
			local hostElapsedMs = (clock() - started) * 1000
			started = clock()
			recyclingScope.dispose()
			local scopeElapsedMs = (clock() - started) * 1000
			hostTeardownMs += hostElapsedMs
			scopeTeardownMs += scopeElapsedMs
			elapsedMs += hostElapsedMs + scopeElapsedMs
			adaptersDestroyed += 1
			virtualizer.destroy()
			recyclingScope.dispose()
			idempotentDestroyCalls += 1
			layout.destroy()
			scrollingFrame:Destroy()
		end
		return elapsedMs
	end, options)
	return record(
		benchmarkContract,
		ResponsibilityCatalog.Roblox.Teardown,
		"integrated",
		"full-adapter-teardown",
		"Destroys populated Roblox virtualizers, physical hosts, connections, measurement state, and owned RecyclingScopes.",
		"fullAdapterTeardownBatch",
		false,
		operationCount,
		summary,
		{
			adaptersDestroyed = adaptersDestroyed,
			itemViewsDestroyed = itemViewsDestroyed,
			idempotentDestroyCalls = idempotentDestroyCalls,
			milestones = {
				hostTeardownMs = hostTeardownMs,
				scopeTeardownMs = scopeTeardownMs,
			},
		}
	)
end

local function run(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	options: Options?
)
	local resolved = options or {}
	local operationCount = resolved.operationCount or DEFAULT_OPERATION_COUNT
	assert(operationCount >= 1 and operationCount % 1 == 0, "operationCount must be a positive integer")
	local results = {
		placementWorkload(dependencies, benchmarkStats, benchmarkContract, operationCount, resolved),
		placementRoutingWorkload(dependencies, benchmarkStats, benchmarkContract, operationCount, resolved),
		reparentSelectionWorkload(benchmarkStats, benchmarkContract, operationCount, resolved),
		physicalLifecycleWorkload(dependencies, benchmarkStats, benchmarkContract, operationCount, resolved),
		scrollSynchronizationWorkload(dependencies, benchmarkStats, benchmarkContract, operationCount, resolved),
		canvasPublicationWorkload(dependencies, benchmarkStats, benchmarkContract, operationCount, resolved),
		measurementSchedulingWorkload(dependencies, benchmarkStats, benchmarkContract, operationCount, resolved),
		measurementHeartbeatWorkload(dependencies, benchmarkStats, benchmarkContract, resolved),
		viewportActivationWorkload(dependencies, benchmarkStats, benchmarkContract, operationCount, resolved),
		teardownWorkload(dependencies, benchmarkStats, benchmarkContract, operationCount, resolved),
	}
	for _, result in frameWorkWorkloads(dependencies, benchmarkStats, benchmarkContract, operationCount, resolved) do
		table.insert(results, result)
	end
	return results
end

return {
	run = run,
}
