local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = (ReplicatedStorage :: any).Packages
local CoreRoot = Packages._Workspace.ViewRecycler.ViewRecycler
local ResponsibilityCatalog = require(CoreRoot.Core.Diagnostics.__benchmarks__.ResponsibilityCatalog)

export type Options = {
	sampleCount: number?,
	minSampleCount: number?,
	maxSampleCount: number?,
	warmupCount: number?,
	targetRelativeHalfWidth: number?,
	convergenceCheckInterval: number?,
	timeBudgetSeconds: number?,
	bootstrapResamples: number?,
	randomSeed: number?,
	clock: (() -> number)?,
	itemCount: number?,
	scrollStepCount: number?,
	mountVisibleRows: { number }?,
	recyclingStateVisibleRows: number?,
	lifecycleItemCount: number?,
	propagationItemCount: number?,
}

type Dependencies = {
	React: any,
	ReactRoblox: any,
	RunService: RunService,
	LifecycleWorkloads: any,
	SignalsReact: any,
	ViewRecycler: any,
}

type BenchmarkStatsApi = {
	run: (sample: () -> number, options: Options?) -> { [string]: any },
}

type BenchmarkContractApi = {
	create: (options: any) -> any,
}

type Item = {
	id: string,
	text: string,
	height: number,
}
type Predicates = { [string]: () -> boolean }
type PhaseCounts = { [string]: { [string]: number } }

local DEFAULT_ITEM_COUNT = 1000
local DEFAULT_SCROLL_STEP_COUNT = 10
local DEFAULT_MOUNT_VISIBLE_ROWS = { 10, 40 }
local DEFAULT_RECYCLING_STATE_VISIBLE_ROWS = 40
local DEFAULT_LIFECYCLE_ITEM_COUNT = 40
local DEFAULT_PROPAGATION_ITEM_COUNT = 1000
local ITEM_LENGTH = 40
local VIEWPORT_WIDTH = 400
local MAX_BARRIER_ATTEMPTS = 20

type PropagationScenarioName = "at-start" | "in-middle" | "before-visible-anchor" | "at-end"

type PropagationScenario = {
	name: PropagationScenarioName,
	insertIndex: number,
	initialOffset: number,
	initialDestinationText: string,
	insertedStartOffset: number,
	neighborKey: string,
	neighborStartOffset: number,
	finalContentLength: number,
	finalScrollOffset: number,
	overscan: number,
	preserveScrollPositionOnChange: boolean?,
	initialScrollAlignment: any?,
	autoScrollOnChange: any?,
}

local function createItems(itemCount: number): { Item }
	local items = table.create(itemCount)
	for index = 1, itemCount do
		items[index] = {
			id = `item{index}`,
			text = `Item {index}`,
			height = 36 + (index % 5) * 2,
		}
	end
	return items
end

local function hasItemText(container: Instance, expectedText: string): boolean
	for _, descendant in container:GetDescendants() do
		if descendant:IsA("TextLabel") and descendant.Name == "Content" and descendant.Text == expectedText then
			return true
		end
	end
	return false
end

local function mountedItemCount(container: Instance): number
	local count = 0
	for _, descendant in container:GetDescendants() do
		if descendant:IsA("TextLabel") and descendant.Name == "Content" and descendant.Text ~= "" then
			count += 1
		end
	end
	return count
end

local function findMeasuredObjects(container: Instance, expectedText: string): (TextLabel?, GuiObject?)
	for _, descendant in container:GetDescendants() do
		if descendant:IsA("TextLabel") and descendant.Name == "Content" and descendant.Text == expectedText then
			local ancestor = descendant.Parent
			while ancestor ~= nil and ancestor ~= container do
				if ancestor:IsA("GuiObject") and string.find(ancestor.Name, "ListItemViewFrame", 1, true) == 1 then
					return descendant, ancestor
				end
				ancestor = ancestor.Parent
			end
			return descendant, nil
		end
	end
	return nil, nil
end

local function recordSizeComparison(comparisons, phase: string, observed: number?, settled: number)
	local phaseComparison = comparisons[phase]
	if phaseComparison == nil then
		phaseComparison = {
			observed = 0,
			matchedSettled = 0,
			differedFromSettled = 0,
		}
		comparisons[phase] = phaseComparison
	end
	if observed == nil then
		return
	end
	phaseComparison.observed += 1
	if observed == settled then
		phaseComparison.matchedSettled += 1
	else
		phaseComparison.differedFromSettled += 1
	end
end

local function findScrollingFrame(container: Instance): ScrollingFrame
	local scrollingFrame = container:FindFirstChildWhichIsA("ScrollingFrame", true)
	assert(scrollingFrame ~= nil, "React benchmark did not mount a ScrollingFrame")
	return scrollingFrame
end

local function flushDeferredWork()
	local completed = Instance.new("BindableEvent")
	task.defer(function()
		completed:Fire()
	end)
	completed.Event:Wait()
	completed:Destroy()
end

local function waitForHeartbeatToSettle(dependencies: Dependencies)
	local completed = Instance.new("BindableEvent")
	dependencies.RunService.Heartbeat:Once(function()
		-- The second defer places this sentinel behind work deferred by
		-- Heartbeat listeners, including the measurement batch flush.
		task.defer(function()
			task.defer(function()
				completed:Fire()
			end)
		end)
	end)
	dependencies.ReactRoblox.act(function()
		completed.Event:Wait()
	end)
	completed:Destroy()
end

local function recordPhase(phaseCounts: PhaseCounts, signalName: string, phase: string)
	local signalCounts = phaseCounts[signalName]
	if signalCounts == nil then
		signalCounts = {}
		phaseCounts[signalName] = signalCounts
	end
	signalCounts[phase] = (signalCounts[phase] or 0) + 1
end

local function captureCompletionPhase(
	predicates: Predicates,
	observed: { [string]: string },
	phaseCounts: PhaseCounts,
	phase: string
): boolean
	local complete = true
	for signalName, predicate in predicates do
		if observed[signalName] == nil and predicate() then
			observed[signalName] = phase
			recordPhase(phaseCounts, signalName, phase)
		end
		if observed[signalName] == nil then
			complete = false
		end
	end
	return complete
end

local function observeCompletionPhases(
	dependencies: Dependencies,
	predicates: Predicates,
	description: string | (() -> string),
	phaseCounts: PhaseCounts,
	observedBeforeAct: { [string]: string }?
)
	local observed = observedBeforeAct or {}
	local function capture(phase: string): boolean
		return captureCompletionPhase(predicates, observed, phaseCounts, phase)
	end

	if capture("afterAct") then
		return observed
	end
	dependencies.ReactRoblox.act(flushDeferredWork)
	if capture("deferred") then
		return observed
	end
	waitForHeartbeatToSettle(dependencies)
	if capture("heartbeatSettled") then
		return observed
	end

	for _ = 1, MAX_BARRIER_ATTEMPTS do
		waitForHeartbeatToSettle(dependencies)
		if capture("laterHeartbeat") then
			return observed
		end
	end
	local resolvedDescription = if type(description) == "function" then description() else description
	error(`React benchmark did not complete: {resolvedDescription}`)
end

local function createOffsets(itemCount: number, scrollStepCount: number): { number }
	local maximumOffset = math.max(0, itemCount * ITEM_LENGTH - ITEM_LENGTH * 10)
	local offsets = table.create(scrollStepCount)
	for step = 1, scrollStepCount do
		local targetIndex = math.max(1, math.floor(itemCount * step / (scrollStepCount + 1)))
		offsets[step] = math.min(maximumOffset, (targetIndex - 1) * ITEM_LENGTH)
	end
	return offsets
end

local function createItemTypes(dependencies: Dependencies)
	local React = dependencies.React
	local SignalsReact = dependencies.SignalsReact
	local ViewRecycler = dependencies.ViewRecycler
	local function UniformRow(props)
		local item = SignalsReact.useSignalState(props.itemSignal)
		return React.createElement("TextLabel", {
			Name = "Content",
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			Text = item.text,
		})
	end
	local function MeasuredRow(props)
		local item = SignalsReact.useSignalState(props.itemSignal)
		return React.createElement("TextLabel", {
			Name = "Content",
			AutomaticSize = Enum.AutomaticSize.None,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, item.height),
			Text = item.text,
		})
	end
	local uniformItemType = ViewRecycler.createRecyclableView(UniformRow, {
		readiness = "ReadyOnAssignment",
	})
	local measuredItemType = ViewRecycler.createRecyclableView(MeasuredRow, {
		readiness = "ReadyOnAssignment",
	})
	return uniformItemType, measuredItemType
end

local function renderList(
	dependencies: Dependencies,
	root,
	items,
	layout,
	itemType,
	visibleRows: number,
	diagnostics,
	listProps: { [any]: any }?
)
	dependencies.ReactRoblox.act(function()
		local virtualListProps = {
			data = items,
			layout = layout,
			axis = dependencies.ViewRecycler.Axis.Y,
			overscan = 0,
			itemType = itemType,
			diagnostics = diagnostics,
		}
		if listProps ~= nil then
			for key, value in listProps do
				virtualListProps[key] = value
			end
		end
		root:render(dependencies.React.createElement("Frame", {
			Name = "BenchmarkHost",
			Size = UDim2.fromOffset(VIEWPORT_WIDTH, visibleRows * ITEM_LENGTH),
		}, {
			List = dependencies.React.createElement(dependencies.ViewRecycler.VirtualList, virtualListProps),
		}))
	end)
end

local function cleanupFixture(dependencies: Dependencies, root, layout, container: Instance)
	dependencies.ReactRoblox.act(function()
		root:unmount()
	end)
	layout.destroy()
	container:Destroy()
end

local function approximatelyEqual(actual: number, expected: number): boolean
	return math.abs(actual - expected) <= 0.01
end

local function getItemHostOffset(container: Instance, expectedText: string): number?
	local _, host = findMeasuredObjects(container, expectedText)
	if host == nil then
		return nil
	end
	return host.Position.Y.Offset
end

local function createPropagationScenario(
	dependencies: Dependencies,
	name: PropagationScenarioName,
	itemCount: number
): PropagationScenario
	local baseContentLength = itemCount * ITEM_LENGTH
	local finalContentLength = baseContentLength + ITEM_LENGTH * 2
	local viewportLength = ITEM_LENGTH * 10
	local middleIndex = math.floor(itemCount / 2) + 1
	local middleFirstVisibleIndex = middleIndex - 5
	local middleOffset = (middleFirstVisibleIndex - 1) * ITEM_LENGTH

	if name == "at-start" then
		return {
			name = name,
			insertIndex = 1,
			initialOffset = 0,
			initialDestinationText = "Item 10",
			insertedStartOffset = 0,
			neighborKey = "item1",
			neighborStartOffset = ITEM_LENGTH * 2,
			finalContentLength = finalContentLength,
			finalScrollOffset = 0,
			overscan = 0,
			preserveScrollPositionOnChange = false,
		}
	elseif name == "in-middle" then
		return {
			name = name,
			insertIndex = middleIndex,
			initialOffset = middleOffset,
			initialDestinationText = `Item {middleFirstVisibleIndex + 9}`,
			insertedStartOffset = (middleIndex - 1) * ITEM_LENGTH,
			neighborKey = `item{middleIndex}`,
			neighborStartOffset = (middleIndex - 1) * ITEM_LENGTH + ITEM_LENGTH * 2,
			finalContentLength = finalContentLength,
			finalScrollOffset = middleOffset,
			overscan = 0,
		}
	elseif name == "before-visible-anchor" then
		local firstVisibleIndex = middleIndex
		local initialOffset = (firstVisibleIndex - 1) * ITEM_LENGTH
		local insertIndex = firstVisibleIndex - 1
		return {
			name = name,
			insertIndex = insertIndex,
			initialOffset = initialOffset,
			initialDestinationText = `Item {firstVisibleIndex + 9}`,
			insertedStartOffset = (insertIndex - 1) * ITEM_LENGTH,
			neighborKey = `item{firstVisibleIndex}`,
			neighborStartOffset = initialOffset + ITEM_LENGTH * 2,
			finalContentLength = finalContentLength,
			finalScrollOffset = initialOffset + ITEM_LENGTH * 2,
			overscan = 2,
		}
	end

	return {
		name = name,
		insertIndex = itemCount + 1,
		initialOffset = baseContentLength - viewportLength,
		initialDestinationText = `Item {itemCount}`,
		insertedStartOffset = baseContentLength,
		neighborKey = `item{itemCount}`,
		neighborStartOffset = baseContentLength - ITEM_LENGTH,
		finalContentLength = finalContentLength,
		finalScrollOffset = finalContentLength - viewportLength,
		overscan = 0,
		initialScrollAlignment = dependencies.ViewRecycler.ScrollAlignment.End,
		autoScrollOnChange = dependencies.ViewRecycler.AutoScrollPolicy.WhenAtEnd,
	}
end

local function measureCompletedMount(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	items: { Item },
	itemType,
	visibleRows: number,
	options: Options
)
	local clock = options.clock or os.clock
	local lastMountedItemCount = 0
	local completionPhaseCounts: PhaseCounts = {}
	local summary = benchmarkStats.run(function()
		local container = Instance.new("Folder")
		local root = dependencies.ReactRoblox.createRoot(container)
		local layout = dependencies.ViewRecycler.Layout.uniform({ itemLength = ITEM_LENGTH })
		local dataSource = dependencies.ViewRecycler.DataSource.snapshot(items, function(item: Item)
			return item.id
		end)

		local started = clock()
		renderList(dependencies, root, dataSource, layout, itemType, visibleRows, nil)
		observeCompletionPhases(dependencies, {
			destinationRowCommitted = function()
				return hasItemText(container, `Item {visibleRows}`)
			end,
		}, `mount Item {visibleRows}`, completionPhaseCounts)
		local elapsedMs = (clock() - started) * 1000

		lastMountedItemCount = mountedItemCount(container)
		cleanupFixture(dependencies, root, layout, container)
		return elapsedMs
	end, options)
	return benchmarkContract.create({
		suite = "view-recycler-react",
		layer = "reactHost",
		owner = "react",
		responsibility = ResponsibilityCatalog.React.MountScroll,
		timingClass = "hostBoundary",
		workload = "completed-mount",
		description = "Mounts a uniform VirtualList and waits for the final expected visible row to commit.",
		scale = {
			items = #items,
			visibleRows = visibleRows,
			layout = "uniform",
		},
		timing = {
			unit = "ms",
			basis = "completedMount",
			operationsPerSample = 1,
			includesSchedulerWaits = true,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			mountedItemViews = lastMountedItemCount,
			completionBarrier = "destinationRowCommitted",
			completionPhaseCounts = completionPhaseCounts,
			reactWorkFlush = "ReactRoblox.actWithMockScheduler",
		},
	})
end

local function measureStatefulMountArm(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	items: { Item },
	itemType,
	visibleRows: number,
	options: Options
)
	local clock = options.clock or os.clock
	local lastMountedItemCount = 0
	local completionPhaseCounts: PhaseCounts = {}
	local summary = benchmarkStats.run(function()
		local container = Instance.new("Folder")
		local root = dependencies.ReactRoblox.createRoot(container)
		local layout = dependencies.ViewRecycler.Layout.uniform({ itemLength = ITEM_LENGTH })
		local dataSource = dependencies.ViewRecycler.DataSource.snapshot(items, function(item: Item)
			return item.id
		end)

		local started = clock()
		renderList(dependencies, root, dataSource, layout, itemType, visibleRows, nil)
		observeCompletionPhases(dependencies, {
			destinationRowCommitted = function()
				return hasItemText(container, `Item {visibleRows}:0`)
			end,
		}, `mount stateful Item {visibleRows}`, completionPhaseCounts)
		local elapsedMs = (clock() - started) * 1000

		lastMountedItemCount = mountedItemCount(container)
		cleanupFixture(dependencies, root, layout, container)
		return elapsedMs
	end, options)
	return summary, lastMountedItemCount, completionPhaseCounts
end

local function measureRecyclingStateMountOverhead(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	items: { Item },
	visibleRows: number,
	options: Options
)
	local React = dependencies.React
	local SignalsReact = dependencies.SignalsReact
	local ViewRecycler = dependencies.ViewRecycler
	local function ReactStateRow(props)
		local item = SignalsReact.useSignalState(props.itemSignal)
		local count = React.useState(0)
		return React.createElement("TextLabel", {
			Name = "Content",
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			Text = `{item.text}:{count}`,
		})
	end
	local function RecyclingStateRow(props)
		local item = SignalsReact.useSignalState(props.itemSignal)
		local count = ViewRecycler.useRecyclingState(0)
		return React.createElement("TextLabel", {
			Name = "Content",
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			Text = `{item.text}:{count}`,
		})
	end
	local reactStateItemType = ViewRecycler.createRecyclableView(ReactStateRow)
	local recyclingStateItemType = ViewRecycler.createRecyclableView(RecyclingStateRow)
	local reactStateSummary, reactStateMountedItemViews, reactStateCompletionPhaseCounts =
		measureStatefulMountArm(dependencies, benchmarkStats, items, reactStateItemType, visibleRows, options)
	local recyclingStateSummary, recyclingStateMountedItemViews, recyclingStateCompletionPhaseCounts =
		measureStatefulMountArm(dependencies, benchmarkStats, items, recyclingStateItemType, visibleRows, options)
	return benchmarkContract.create({
		suite = "view-recycler-react",
		layer = "reactHost",
		owner = "react",
		responsibility = ResponsibilityCatalog.React.MountScroll,
		timingClass = "hostBoundary",
		workload = "recycling-state-mount-overhead",
		description = "Compares completed ItemView mount with ordinary React state and recycling-aware state.",
		scale = {
			items = #items,
			visibleRows = visibleRows,
			layout = "uniform",
			stateHooksPerItemView = 1,
		},
		timing = {
			unit = "ms",
			basis = "completedMount",
			operationsPerSample = 1,
			includesSchedulerWaits = true,
		},
		arms = {
			reactState = reactStateSummary,
			recyclingState = recyclingStateSummary,
		},
		evidence = {
			reactStateMountedItemViews = reactStateMountedItemViews,
			recyclingStateMountedItemViews = recyclingStateMountedItemViews,
			completionBarrier = "destinationRowCommitted",
			completionPhaseCounts = {
				reactState = reactStateCompletionPhaseCounts,
				recyclingState = recyclingStateCompletionPhaseCounts,
			},
			reactWorkFlush = "ReactRoblox.actWithMockScheduler",
		},
	})
end

local function measureCompletedTraversal(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	items: { Item },
	itemType,
	itemCount: number,
	scrollStepCount: number,
	measured: boolean,
	options: Options
)
	local clock = options.clock or os.clock
	local container = Instance.new("Folder")
	local root = dependencies.ReactRoblox.createRoot(container)
	local layout = if measured
		then dependencies.ViewRecycler.Layout.measured({ estimatedItemLength = ITEM_LENGTH })
		else dependencies.ViewRecycler.Layout.uniform({ itemLength = ITEM_LENGTH })
	local dataSource = dependencies.ViewRecycler.DataSource.sequence(items, function(item: Item)
		return item.id
	end)
	local acceptedMeasurements = 0
	local diagnostics = function(event)
		if event.kind == "measurementsProcessed" then
			acceptedMeasurements += event.accepted
		end
	end
	renderList(dependencies, root, dataSource, layout, itemType, 10, diagnostics)
	local initialPredicates: Predicates = {
		destinationRowCommitted = function()
			return hasItemText(container, "Item 10")
		end,
	}
	if measured then
		initialPredicates.measurementAccepted = function()
			return acceptedMeasurements > 0
		end
	end
	observeCompletionPhases(dependencies, initialPredicates, "initial visible rows", {})

	local scrollingFrame = findScrollingFrame(container)
	local offsets = createOffsets(itemCount, scrollStepCount)
	local phase = 0
	local lastAcceptedMeasurements = 0
	local completionPhaseCounts: PhaseCounts = {}
	local summary = benchmarkStats.run(function()
		phase = (phase + 1) % 2
		if measured then
			for _, offset in offsets do
				local targetIndex = math.floor(offset / ITEM_LENGTH) + 1
				local current = dataSource.getItem(targetIndex)
				local updated = table.clone(current)
				updated.height = if phase == 0 then 36 else 44
				dataSource.setItem(targetIndex, updated)
			end
		end

		local acceptedAtSampleStart = acceptedMeasurements
		local started = clock()
		for _, offset in offsets do
			local targetIndex = math.floor(offset / ITEM_LENGTH) + 1
			local acceptedBefore = acceptedMeasurements
			local predicates: Predicates = {
				destinationRowCommitted = function()
					return hasItemText(container, `Item {targetIndex}`)
				end,
			}
			if measured then
				predicates.measurementAccepted = function()
					return acceptedMeasurements > acceptedBefore
				end
			end
			local observedBeforeAct: { [string]: string } = {}
			dependencies.ReactRoblox.act(function()
				scrollingFrame.CanvasPosition = Vector2.new(0, offset)
				captureCompletionPhase(predicates, observedBeforeAct, completionPhaseCounts, "afterMutation")
			end)
			observeCompletionPhases(
				dependencies,
				predicates,
				`scroll Item {targetIndex}`,
				completionPhaseCounts,
				observedBeforeAct
			)
		end
		local elapsedMs = (clock() - started) * 1000
		lastAcceptedMeasurements = acceptedMeasurements - acceptedAtSampleStart

		dependencies.ReactRoblox.act(function()
			scrollingFrame.CanvasPosition = Vector2.zero
		end)
		observeCompletionPhases(dependencies, {
			destinationRowCommitted = function()
				return hasItemText(container, "Item 1")
			end,
		}, "reset scroll position", {})
		return elapsedMs
	end, options)
	local mounted = mountedItemCount(container)
	cleanupFixture(dependencies, root, layout, container)

	return benchmarkContract.create({
		suite = "view-recycler-react",
		layer = "reactHost",
		owner = "react",
		responsibility = ResponsibilityCatalog.React.MountScroll,
		timingClass = "hostBoundary",
		workload = if measured then "completed-measured-traversal" else "completed-uniform-traversal",
		description = if measured
			then "Scrolls a measured VirtualList and waits for both destination-row commits and accepted size updates."
			else "Scrolls a uniform VirtualList and waits for each destination row to commit.",
		scale = {
			items = itemCount,
			scrollSteps = scrollStepCount,
			visibleRows = 10,
			layout = if measured then "measured" else "uniform",
		},
		timing = {
			unit = "ms",
			basis = "completedScrollTraversal",
			operationsPerSample = scrollStepCount,
			includesSchedulerWaits = true,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			mountedItemViews = mounted,
			acceptedMeasurementsPerTraversal = lastAcceptedMeasurements,
			completionBarrier = if measured
				then "destinationRowCommittedAndMeasurementAccepted"
				else "destinationRowCommitted",
			completionPhaseCounts = completionPhaseCounts,
			reactWorkFlush = "ReactRoblox.actWithMockScheduler",
		},
	})
end

local function measureHostSizeSettlePhases(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	options: Options
)
	local clock = options.clock or os.clock
	local container = Instance.new("ScreenGui")
	container.ResetOnSpawn = false
	container.Parent = game:GetService("CoreGui")
	local root = dependencies.ReactRoblox.createRoot(container)
	local layout = dependencies.ViewRecycler.Layout.measured({ estimatedItemLength = ITEM_LENGTH })
	local shortText = "Short response"
	local longText = string.rep("This response grows enough to wrap across the measured row. ", 8)
	local itemType = dependencies.ViewRecycler.createRecyclableView(function(props)
		local item = dependencies.SignalsReact.useSignalState(props.itemSignal)
		return dependencies.React.createElement("TextLabel", {
			Name = "Content",
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(10, 0),
			Size = UDim2.new(1, -20, 0, 0),
			Text = item.text,
			TextWrapped = true,
		})
	end, {
		readiness = "ReadyOnCommit",
		hideWhilePending = true,
	})
	local initialItem: Item = {
		id = "measurement-probe",
		text = shortText,
		height = ITEM_LENGTH,
	}
	local dataSource = dependencies.ViewRecycler.DataSource.sequence({ initialItem }, function(item: Item)
		return item.id
	end)
	local acceptedMeasurements = 0
	local diagnostics = function(event)
		if event.kind == "measurementsProcessed" then
			acceptedMeasurements += event.accepted
		end
	end
	renderList(dependencies, root, dataSource, layout, itemType, 3, diagnostics)
	observeCompletionPhases(dependencies, {
		destinationRowCommitted = function()
			return hasItemText(container, shortText)
		end,
		measurementAccepted = function()
			return acceptedMeasurements > 0
		end,
	}, "initial wrapped measured row", {})
	waitForHeartbeatToSettle(dependencies)
	waitForHeartbeatToSettle(dependencies)

	local phase = 0
	local completionPhaseCounts: PhaseCounts = {}
	local hostSizeComparisons = {}
	local contentSizeComparisons = {}
	local settledHostSizeCounts = {}
	local settledContentSizeCounts = {}
	local mismatchExamples = {
		host = {},
		content = {},
	}
	local updateNumber = 0
	local summary = benchmarkStats.run(function()
		updateNumber += 1
		phase = (phase + 1) % 2
		local text = if phase == 0 then shortText else longText
		local textKind = if phase == 0 then "short" else "long"
		local acceptedBefore = acceptedMeasurements
		local hostSnapshots = {}
		local contentSnapshots = {}
		local firstAcceptedPhase = nil
		local function capture(capturePhase: string)
			local content, host = findMeasuredObjects(container, text)
			if content ~= nil then
				contentSnapshots[capturePhase] = content.AbsoluteSize.Y
			end
			if host ~= nil then
				hostSnapshots[capturePhase] = host.AbsoluteSize.Y
			end
			if firstAcceptedPhase == nil and acceptedMeasurements > acceptedBefore then
				firstAcceptedPhase = capturePhase
				recordPhase(completionPhaseCounts, "measurementAccepted", capturePhase)
			end
		end

		local started = clock()
		dependencies.ReactRoblox.act(function()
			dataSource.setItem(1, {
				id = initialItem.id,
				text = text,
				height = initialItem.height,
			})
			capture("afterMutation")
		end)
		capture("afterAct")
		dependencies.ReactRoblox.act(flushDeferredWork)
		capture("deferred")
		for heartbeat = 1, 3 do
			waitForHeartbeatToSettle(dependencies)
			capture(`heartbeat{heartbeat}Settled`)
		end
		local elapsedMs = (clock() - started) * 1000

		if firstAcceptedPhase == nil then
			recordPhase(completionPhaseCounts, "measurementAccepted", "notAcceptedWithinThreeHeartbeats")
		end
		local settledHostSize = hostSnapshots.heartbeat3Settled
		local settledContentSize = contentSnapshots.heartbeat3Settled
		assert(settledHostSize ~= nil and settledContentSize ~= nil, "wrapped measured row did not settle")
		settledHostSizeCounts[tostring(settledHostSize)] = (settledHostSizeCounts[tostring(settledHostSize)] or 0) + 1
		settledContentSizeCounts[tostring(settledContentSize)] = (
			settledContentSizeCounts[tostring(settledContentSize)] or 0
		) + 1
		for capturePhase, observedSize in hostSnapshots do
			recordSizeComparison(hostSizeComparisons, capturePhase, observedSize, settledHostSize)
			if observedSize ~= settledHostSize and mismatchExamples.host[capturePhase] == nil then
				mismatchExamples.host[capturePhase] = {
					update = updateNumber,
					text = textKind,
					observed = observedSize,
					settled = settledHostSize,
				}
			end
		end
		for capturePhase, observedSize in contentSnapshots do
			recordSizeComparison(contentSizeComparisons, capturePhase, observedSize, settledContentSize)
			if observedSize ~= settledContentSize and mismatchExamples.content[capturePhase] == nil then
				mismatchExamples.content[capturePhase] = {
					update = updateNumber,
					text = textKind,
					observed = observedSize,
					settled = settledContentSize,
				}
			end
		end
		return elapsedMs
	end, options)

	cleanupFixture(dependencies, root, layout, container)
	return benchmarkContract.create({
		suite = "view-recycler-react",
		layer = "reactHost",
		owner = "react",
		responsibility = ResponsibilityCatalog.React.MeasurementWiring,
		timingClass = "phased",
		workload = "measurement-settle-phases",
		description = "Compares wrapped content and measured-host sizes before and after Roblox layout Heartbeats.",
		scale = {
			items = 1,
			layout = "measured",
			content = "wrappedTextItemRevision",
			heartbeatObservations = 3,
		},
		timing = {
			unit = "ms",
			basis = "threeHeartbeatSettleProbe",
			operationsPerSample = 1,
			includesSchedulerWaits = true,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			completionPhaseCounts = completionPhaseCounts,
			hostSizeComparisons = hostSizeComparisons,
			contentSizeComparisons = contentSizeComparisons,
			settledHostSizeCounts = settledHostSizeCounts,
			settledContentSizeCounts = settledContentSizeCounts,
			mismatchExamples = mismatchExamples,
			reactWorkFlush = "ReactRoblox.actWithMockScheduler",
		},
	})
end

local function runAssignmentPropagationSample(
	dependencies: Dependencies,
	itemType,
	scenario: PropagationScenario,
	itemCount: number,
	options: Options
)
	local clock = options.clock or os.clock
	local items = table.create(itemCount)
	for index = 1, itemCount do
		items[index] = {
			id = `item{index}`,
			text = `Item {index}`,
			height = ITEM_LENGTH,
		}
	end
	local insertedItem = {
		id = `inserted-{scenario.name}`,
		text = `Inserted {scenario.name}`,
		height = ITEM_LENGTH * 2,
	}
	local container = Instance.new("Folder")
	local root = dependencies.ReactRoblox.createRoot(container)
	local layout = dependencies.ViewRecycler.Layout.measured({ estimatedItemLength = ITEM_LENGTH })
	local dataSource = dependencies.ViewRecycler.DataSource.sequence(items, function(item: Item)
		return item.id
	end)
	local assignmentAt: number? = nil
	local measurementStartedAt: number? = nil
	local measurementProcessedAt: number? = nil
	local libraryPublishedAt: number? = nil
	local hostObservedAt: number? = nil
	local mutationStarted = false
	local observedContentLength: number? = nil
	local correctionTotals = {
		data = 0,
		measurement = 0,
		programmaticScroll = 0,
	}
	local completionPhaseCounts: PhaseCounts = {}
	local diagnostics = function(event)
		if not mutationStarted then
			return
		end
		if event.kind == "measurementsProcessingStarted" and assignmentAt ~= nil then
			measurementStartedAt = measurementStartedAt or clock()
		elseif event.kind == "measurementsProcessed" and event.accepted > 0 and assignmentAt ~= nil then
			measurementProcessedAt = measurementProcessedAt or clock()
		elseif event.kind == "scrollCorrection" then
			correctionTotals[event.source] += event.delta
		end
	end
	renderList(dependencies, root, dataSource, layout, itemType, 10, diagnostics, {
		overscan = scenario.overscan,
		preserveScrollPositionOnChange = scenario.preserveScrollPositionOnChange,
		initialScrollAlignment = scenario.initialScrollAlignment,
		autoScrollOnChange = scenario.autoScrollOnChange,
		_instrumentation = {
			assignmentChanged = function(_, assignment)
				if
					mutationStarted
					and assignment ~= nil
					and assignment.key == insertedItem.id
					and assignmentAt == nil
				then
					assignmentAt = clock()
				end
			end,
		},
		onContentLengthChanged = function(contentLength)
			if mutationStarted and approximatelyEqual(contentLength, scenario.finalContentLength) then
				observedContentLength = contentLength
			end
		end,
	})
	local scrollingFrame = findScrollingFrame(container)
	dependencies.ReactRoblox.act(function()
		scrollingFrame.CanvasPosition = Vector2.new(0, scenario.initialOffset)
	end)
	observeCompletionPhases(dependencies, {
		destinationRowCommitted = function()
			return hasItemText(container, scenario.initialDestinationText)
		end,
		initialCanvasSettled = function()
			return approximatelyEqual(scrollingFrame.CanvasSize.Y.Offset, itemCount * ITEM_LENGTH)
		end,
	}, `prepare {scenario.name} insertion`, {})
	waitForHeartbeatToSettle(dependencies)
	assert(
		approximatelyEqual(scrollingFrame.CanvasSize.Y.Offset, itemCount * ITEM_LENGTH),
		`{scenario.name}: initial canvas size did not settle (expected {itemCount * ITEM_LENGTH}, got {scrollingFrame.CanvasSize.Y.Offset})`
	)
	assert(
		approximatelyEqual(scrollingFrame.CanvasPosition.Y, scenario.initialOffset),
		`{scenario.name}: initial scroll position did not settle`
	)

	mutationStarted = true
	dependencies.ReactRoblox.act(function()
		dataSource.insert(scenario.insertIndex, insertedItem)
	end)
	local expectedDataCorrection = if scenario.name == "before-visible-anchor" then ITEM_LENGTH else 0
	local expectedMeasurementCorrection = if scenario.name == "before-visible-anchor" then ITEM_LENGTH else 0
	local lastPropagationObservation = {}
	local function captureLibraryPublication(): boolean
		local insertedOffset = getItemHostOffset(container, insertedItem.text)
		local neighborOffset = getItemHostOffset(container, `Item {string.sub(scenario.neighborKey, 5)}`)
		local complete = assignmentAt ~= nil
			and measurementStartedAt ~= nil
			and measurementProcessedAt ~= nil
			and observedContentLength ~= nil
			and insertedOffset ~= nil
			and approximatelyEqual(insertedOffset, scenario.insertedStartOffset)
			and neighborOffset ~= nil
			and approximatelyEqual(neighborOffset, scenario.neighborStartOffset)
			and approximatelyEqual(correctionTotals.data, expectedDataCorrection)
			and approximatelyEqual(correctionTotals.measurement, expectedMeasurementCorrection)
		if complete and libraryPublishedAt == nil then
			libraryPublishedAt = clock()
		end
		return complete
	end
	observeCompletionPhases(dependencies, {
		libraryOutputsPublished = captureLibraryPublication,
		hostValuesObserved = function()
			captureLibraryPublication()
			local insertedOffset = getItemHostOffset(container, insertedItem.text)
			local neighborOffset = getItemHostOffset(container, `Item {string.sub(scenario.neighborKey, 5)}`)
			lastPropagationObservation = {
				assigned = assignmentAt ~= nil,
				measurementStarted = measurementStartedAt ~= nil,
				measurementProcessed = measurementProcessedAt ~= nil,
				libraryPublished = libraryPublishedAt ~= nil,
				observedContentLength = observedContentLength,
				canvasLength = scrollingFrame.CanvasSize.Y.Offset,
				scrollOffset = scrollingFrame.CanvasPosition.Y,
				insertedOffset = insertedOffset,
				neighborOffset = neighborOffset,
			}
			local complete = assignmentAt ~= nil
				and libraryPublishedAt ~= nil
				and approximatelyEqual(scrollingFrame.CanvasSize.Y.Offset, scenario.finalContentLength)
				and approximatelyEqual(scrollingFrame.CanvasPosition.Y, scenario.finalScrollOffset)
			if complete and hostObservedAt == nil then
				hostObservedAt = clock()
			end
			return complete
		end,
	}, function()
		return `{scenario.name} assignment, measurement, and propagation; assigned={lastPropagationObservation.assigned}, measurementStarted={lastPropagationObservation.measurementStarted}, measurementProcessed={lastPropagationObservation.measurementProcessed}, libraryPublished={lastPropagationObservation.libraryPublished}, content={lastPropagationObservation.observedContentLength}, canvas={lastPropagationObservation.canvasLength}, scroll={lastPropagationObservation.scrollOffset}, inserted={lastPropagationObservation.insertedOffset}, neighbor={lastPropagationObservation.neighborOffset}`
	end, completionPhaseCounts)

	local finalAssignmentAt = assert(assignmentAt, `{scenario.name}: inserted item was not assigned`)
	local finalMeasurementStartedAt =
		assert(measurementStartedAt, `{scenario.name}: inserted item measurement did not reach Core`)
	local finalMeasurementProcessedAt =
		assert(measurementProcessedAt, `{scenario.name}: inserted item measurement was not accepted`)
	local finalLibraryPublishedAt =
		assert(libraryPublishedAt, `{scenario.name}: library outputs were not fully published`)
	local finalHostObservedAt = assert(hostObservedAt, `{scenario.name}: host values did not fully propagate`)
	assert(finalMeasurementStartedAt >= finalAssignmentAt, `{scenario.name}: measurement preceded assignment`)
	assert(
		finalMeasurementProcessedAt >= finalMeasurementStartedAt,
		`{scenario.name}: measurement completed before it started`
	)
	assert(
		finalLibraryPublishedAt >= finalMeasurementProcessedAt,
		`{scenario.name}: library outputs preceded measurement`
	)
	assert(finalHostObservedAt >= finalLibraryPublishedAt, `{scenario.name}: host values preceded library outputs`)
	assert(
		approximatelyEqual(correctionTotals.data, expectedDataCorrection),
		`{scenario.name}: unexpected insertion anchor correction`
	)
	assert(
		approximatelyEqual(correctionTotals.measurement, expectedMeasurementCorrection),
		`{scenario.name}: unexpected measurement anchor correction`
	)

	local evidence = {
		insertIndex = scenario.insertIndex,
		insertedStartOffset = getItemHostOffset(container, insertedItem.text),
		neighborKey = scenario.neighborKey,
		neighborStartOffset = getItemHostOffset(container, `Item {string.sub(scenario.neighborKey, 5)}`),
		contentLength = scrollingFrame.CanvasSize.Y.Offset,
		scrollOffset = scrollingFrame.CanvasPosition.Y,
		dataAnchorCorrection = correctionTotals.data,
		measurementAnchorCorrection = correctionTotals.measurement,
		completionPhaseCounts = completionPhaseCounts,
		assignmentToMeasurementStartMs = (finalMeasurementStartedAt - finalAssignmentAt) * 1000,
		measurementProcessingMs = (finalMeasurementProcessedAt - finalMeasurementStartedAt) * 1000,
		measurementProcessedToLibraryPublicationMs = (finalLibraryPublishedAt - finalMeasurementProcessedAt) * 1000,
		libraryPublicationToHostObservationMs = (finalHostObservedAt - finalLibraryPublishedAt) * 1000,
		assignmentToHostObservationMs = (finalHostObservedAt - finalAssignmentAt) * 1000,
	}
	cleanupFixture(dependencies, root, layout, container)
	return evidence
end

local function measureAssignmentPropagation(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemType,
	scenario: PropagationScenario,
	itemCount: number,
	options: Options
)
	local lastEvidence = {}
	local assignmentToMeasurementStart = benchmarkStats.run(function()
		local evidence = runAssignmentPropagationSample(dependencies, itemType, scenario, itemCount, options)
		lastEvidence = evidence
		return evidence.assignmentToMeasurementStartMs
	end, options)
	local measurementProcessing = benchmarkStats.run(function()
		local evidence = runAssignmentPropagationSample(dependencies, itemType, scenario, itemCount, options)
		lastEvidence = evidence
		return evidence.measurementProcessingMs
	end, options)
	local measurementProcessedToLibraryPublication = benchmarkStats.run(function()
		local evidence = runAssignmentPropagationSample(dependencies, itemType, scenario, itemCount, options)
		lastEvidence = evidence
		return evidence.measurementProcessedToLibraryPublicationMs
	end, options)
	local libraryPublicationToHostObservation = benchmarkStats.run(function()
		local evidence = runAssignmentPropagationSample(dependencies, itemType, scenario, itemCount, options)
		lastEvidence = evidence
		return evidence.libraryPublicationToHostObservationMs
	end, options)
	local assignmentToHostObservation = benchmarkStats.run(function()
		local evidence = runAssignmentPropagationSample(dependencies, itemType, scenario, itemCount, options)
		lastEvidence = evidence
		return evidence.assignmentToHostObservationMs
	end, options)

	return benchmarkContract.create({
		suite = "view-recycler-react",
		layer = "reactHost",
		owner = "react",
		responsibility = ResponsibilityCatalog.React.MeasurementWiring,
		timingClass = "phased",
		workload = "measured-insertion-propagation",
		description = "Times an inserted row from assignment through measurement and fully propagated host geometry.",
		scale = {
			items = itemCount,
			scenario = scenario.name,
			estimatedItemLength = ITEM_LENGTH,
			insertedItemLength = ITEM_LENGTH * 2,
			visibleRows = 10,
		},
		timing = {
			unit = "ms",
			basis = "assignmentToMilestone",
			operationsPerSample = 1,
			includesSchedulerWaits = true,
		},
		arms = {
			assignmentToMeasurementStart = assignmentToMeasurementStart,
			measurementProcessing = measurementProcessing,
			measurementProcessedToLibraryPublication = measurementProcessedToLibraryPublication,
			libraryPublicationToHostObservation = libraryPublicationToHostObservation,
			assignmentToHostObservation = assignmentToHostObservation,
		},
		evidence = lastEvidence,
	})
end

local measureCompletedRecyclingTransfer

local function measureDeclarativeReconciliation(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemType,
	options: Options
)
	local clock = options.clock or os.clock
	local container = Instance.new("Folder")
	local root = dependencies.ReactRoblox.createRoot(container)
	local layout = dependencies.ViewRecycler.Layout.uniform({ itemLength = ITEM_LENGTH })
	local firstItems = createItems(20)
	local secondItems = createItems(20)
	for index, item in secondItems do
		item.text = `Reconciled {index}`
	end
	local function declarativeData(items)
		return {
			items = items,
			getItemKey = function(item: Item)
				return item.id
			end,
		}
	end
	renderList(dependencies, root, declarativeData(firstItems), layout, itemType, 10, nil)
	local phase = false
	local reconciliations = 0
	local completionPhaseCounts: PhaseCounts = {}
	local finalText = ""
	local summary = benchmarkStats.run(function()
		phase = not phase
		local items = if phase then secondItems else firstItems
		finalText = if phase then "Reconciled 10" else "Item 10"
		local started = clock()
		renderList(dependencies, root, declarativeData(items), layout, itemType, 10, nil)
		observeCompletionPhases(dependencies, {
			reconciledContentCommitted = function()
				return hasItemText(container, finalText)
			end,
		}, "declarative data reconciliation", completionPhaseCounts)
		reconciliations += 1
		return (clock() - started) * 1000
	end, options)
	local scrollingFrame = findScrollingFrame(container)
	local finalContentLength = scrollingFrame.CanvasSize.Y.Offset
	cleanupFixture(dependencies, root, layout, container)
	return benchmarkContract.create({
		suite = "view-recycler-react",
		layer = "reactHost",
		owner = "react",
		responsibility = ResponsibilityCatalog.React.DataReconciliation,
		timingClass = "integrated",
		workload = "declarative-data-reconciliation",
		description = "Reconciles a replacement declarative item array through the retained VirtualList.",
		scale = {
			items = 20,
			replacementsPerSample = 1,
		},
		timing = {
			unit = "ms",
			basis = "declarativeReconciliationCommit",
			operationsPerSample = 1,
			includesSchedulerWaits = true,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			reconciliations = reconciliations,
			finalCommittedText = finalText,
			finalContentLength = finalContentLength,
			completionBarrier = "reconciledContentCommitted",
			completionPhaseCounts = completionPhaseCounts,
		},
	})
end

local function runDeclarativeDataReconciliation(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	options: Options?,
	exerciseForeignTypeRegistration: boolean?
)
	local resolved = options or {}
	local uniformItemType, measuredItemType = createItemTypes(dependencies)
	assert(uniformItemType ~= measuredItemType, "React benchmark Recyclable view types must have distinct identities")
	if exerciseForeignTypeRegistration then
		measureCompletedRecyclingTransfer(dependencies, benchmarkStats, benchmarkContract, {
			sampleCount = 1,
			warmupCount = 0,
			bootstrapResamples = 0,
		})
	end
	return measureDeclarativeReconciliation(dependencies, benchmarkStats, benchmarkContract, uniformItemType, resolved)
end

local function measurePropSynchronization(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemType,
	options: Options
)
	local clock = options.clock or os.clock
	local container = Instance.new("Folder")
	local root = dependencies.ReactRoblox.createRoot(container)
	local firstLayout = dependencies.ViewRecycler.Layout.uniform({ itemLength = ITEM_LENGTH })
	local secondItemLength = ITEM_LENGTH + 4
	local secondLayout = dependencies.ViewRecycler.Layout.uniform({ itemLength = secondItemLength })
	local firstItems = createItems(20)
	local secondItems = createItems(21)
	secondItems[1].text = "Replacement first"
	local firstSource = dependencies.ViewRecycler.DataSource.snapshot(firstItems, function(item: Item)
		return item.id
	end)
	local secondSource = dependencies.ViewRecycler.DataSource.snapshot(secondItems, function(item: Item)
		return item.id
	end)
	renderList(dependencies, root, firstSource, firstLayout, itemType, 10, nil)
	local phase = false
	local replacements = 0
	local completionPhaseCounts: PhaseCounts = {}
	local expectedContentLength = 0
	local finalText = ""
	local summary = benchmarkStats.run(function()
		phase = not phase
		local data = if phase then secondSource else firstSource
		local layout = if phase then secondLayout else firstLayout
		expectedContentLength = if phase then #secondItems * secondItemLength else #firstItems * ITEM_LENGTH
		finalText = if phase then "Replacement first" else "Item 1"
		local started = clock()
		renderList(dependencies, root, data, layout, itemType, 10, nil)
		observeCompletionPhases(dependencies, {
			dataAndLayoutPropsCommitted = function()
				return hasItemText(container, finalText)
					and approximatelyEqual(findScrollingFrame(container).CanvasSize.Y.Offset, expectedContentLength)
			end,
		}, "data and layout prop replacement", completionPhaseCounts)
		replacements += 1
		return (clock() - started) * 1000
	end, options)
	cleanupFixture(dependencies, root, firstLayout, container)
	secondLayout.destroy()
	return benchmarkContract.create({
		suite = "view-recycler-react",
		layer = "reactHost",
		owner = "react",
		responsibility = ResponsibilityCatalog.React.PropSynchronization,
		timingClass = "integrated",
		workload = "data-layout-prop-replacement",
		description = "Atomically replaces VirtualList data and layout props and waits for matching host geometry.",
		scale = {
			firstItems = #firstItems,
			secondItems = #secondItems,
			replacementsPerSample = 1,
		},
		timing = {
			unit = "ms",
			basis = "dataLayoutPropCommit",
			operationsPerSample = 1,
			includesSchedulerWaits = true,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			replacements = replacements,
			finalCommittedText = finalText,
			finalContentLength = expectedContentLength,
			completionBarrier = "dataAndLayoutPropsCommitted",
			completionPhaseCounts = completionPhaseCounts,
		},
	})
end

local function measureAssignmentBinding(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	options: Options
)
	local clock = options.clock or os.clock
	local renders = 0
	local assignments = 0
	local itemType = dependencies.ViewRecycler.createRecyclableView(function(props)
		renders += 1
		return dependencies.React.createElement("TextLabel", {
			Name = "Content",
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			Text = dependencies.SignalsReact.useSignalBinding(function(scope)
				local item = props.itemSignal(scope)
				return item.text
			end),
		})
	end, {
		readiness = "ReadyOnAssignment",
	})
	local container = Instance.new("Folder")
	local root = dependencies.ReactRoblox.createRoot(container)
	local layout = dependencies.ViewRecycler.Layout.uniform({ itemLength = ITEM_LENGTH })
	local dataSource = dependencies.ViewRecycler.DataSource.sequence(createItems(20), function(item: Item)
		return item.id
	end)
	renderList(dependencies, root, dataSource, layout, itemType, 10, nil, {
		_instrumentation = {
			assignmentChanged = function(_, assignment)
				if assignment ~= nil then
					assignments += 1
				end
			end,
		},
	})
	local initialRenders = renders
	local scrollingFrame = findScrollingFrame(container)
	local atStart = true
	local deliveredAssignments = 0
	local completionPhaseCounts: PhaseCounts = {}
	local summary = benchmarkStats.run(function()
		atStart = not atStart
		local offset = if atStart then 0 else ITEM_LENGTH * 10
		local expectedText = if atStart then "Item 1" else "Item 11"
		local assignmentsBefore = assignments
		local predicates = {
			bindingDelivered = function()
				return hasItemText(container, expectedText)
			end,
		}
		local observedBeforeAct = {}
		local started = clock()
		dependencies.ReactRoblox.act(function()
			scrollingFrame.CanvasPosition = Vector2.new(0, offset)
			captureCompletionPhase(predicates, observedBeforeAct, completionPhaseCounts, "afterMutation")
		end)
		observeCompletionPhases(
			dependencies,
			predicates,
			`binding delivery to {expectedText}`,
			completionPhaseCounts,
			observedBeforeAct
		)
		deliveredAssignments = assignments - assignmentsBefore
		return (clock() - started) * 1000
	end, options)
	local finalRenders = renders
	cleanupFixture(dependencies, root, layout, container)
	local assignmentRecord = benchmarkContract.create({
		suite = "view-recycler-react",
		layer = "reactHost",
		owner = "react",
		responsibility = ResponsibilityCatalog.React.AssignmentBinding,
		timingClass = "hostBoundary",
		workload = "item-binding-delivery",
		description = "Delivers recycled item assignments through SignalsReact.useSignalBinding without rerendering physical rows.",
		scale = {
			items = 20,
			visibleRows = 10,
			assignmentsPerSample = 10,
		},
		timing = {
			unit = "ms",
			basis = "bindingAssignmentDelivery",
			operationsPerSample = 10,
			includesSchedulerWaits = true,
		},
		arms = {
			immediate = summary,
		},
		evidence = {
			initialRenders = initialRenders,
			finalRenders = finalRenders,
			rerendersDuringDelivery = finalRenders - initialRenders,
			deliveredAssignments = deliveredAssignments,
			completionBarrier = "bindingDelivered",
			completionPhaseCounts = completionPhaseCounts,
		},
	})
	local signalsRecord = benchmarkContract.create({
		suite = "view-recycler-react",
		layer = "reactHost",
		owner = "react",
		responsibility = ResponsibilityCatalog.React.SignalsPublication,
		timingClass = "hostBoundary",
		workload = "signal-item-publication",
		description = "Publishes recycled item values from the assignment signal into the bound host property.",
		scale = {
			items = 20,
			visibleRows = 10,
			publicationsPerSample = 10,
		},
		timing = {
			unit = "ms",
			basis = "signalBindingPublication",
			operationsPerSample = 10,
			includesSchedulerWaits = true,
		},
		arms = {
			immediate = summary,
		},
		evidence = {
			publishedAssignments = deliveredAssignments,
			rerendersDuringPublication = finalRenders - initialRenders,
			completionBarrier = "bindingDelivered",
			completionPhaseCounts = completionPhaseCounts,
		},
	})
	return assignmentRecord, signalsRecord
end

local function createPresentationArm(
	dependencies: Dependencies,
	readiness,
	hideWhilePending: boolean,
	clock: () -> number
)
	local itemComponent
	if readiness == "ReadyOnAssignment" then
		itemComponent = function(props)
			return dependencies.React.createElement("TextLabel", {
				Name = "Content",
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				Text = dependencies.SignalsReact.useSignalBinding(function(scope)
					local item = props.itemSignal(scope)
					return item.text
				end),
			})
		end
	else
		itemComponent = function(props)
			local item = dependencies.SignalsReact.useSignalState(props.itemSignal)
			return dependencies.React.createElement("TextLabel", {
				Name = "Content",
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				Text = item.text,
			})
		end
	end
	local itemType = dependencies.ViewRecycler.createRecyclableView(itemComponent, {
		readiness = readiness,
		hideWhilePending = hideWhilePending,
	})
	local container = Instance.new("Folder")
	local root = dependencies.ReactRoblox.createRoot(container)
	local layout = dependencies.ViewRecycler.Layout.uniform({ itemLength = ITEM_LENGTH })
	local dataSource = dependencies.ViewRecycler.DataSource.sequence(createItems(20), function(item: Item)
		return item.id
	end)
	renderList(dependencies, root, dataSource, layout, itemType, 10, nil)
	local scrollingFrame = findScrollingFrame(container)
	local atStart = true
	local completionPhaseCounts: PhaseCounts = {}
	return {
		run = function()
			atStart = not atStart
			local offset = if atStart then 0 else ITEM_LENGTH * 10
			local expectedText = if atStart then "Item 1" else "Item 11"
			local predicates = {
				presentationCommitted = function()
					return hasItemText(container, expectedText)
				end,
			}
			local observedBeforeAct = {}
			local started = clock()
			dependencies.ReactRoblox.act(function()
				scrollingFrame.CanvasPosition = Vector2.new(0, offset)
				captureCompletionPhase(predicates, observedBeforeAct, completionPhaseCounts, "afterMutation")
			end)
			observeCompletionPhases(
				dependencies,
				predicates,
				`presentation commit to {expectedText}`,
				completionPhaseCounts,
				observedBeforeAct
			)
			return (clock() - started) * 1000
		end,
		getEvidence = function()
			return {
				presentations = 1,
				readiness = readiness,
				hideWhilePending = hideWhilePending,
				completionPhaseCounts = completionPhaseCounts,
			}
		end,
		destroy = function()
			cleanupFixture(dependencies, root, layout, container)
		end,
	}
end

local function measurePresentationCommit(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	options: Options
)
	local clock = options.clock or os.clock
	local readyOnCommitVisible = createPresentationArm(dependencies, "ReadyOnCommit", false, clock)
	local readyOnCommitHidden = createPresentationArm(dependencies, "ReadyOnCommit", true, clock)
	local readyOnAssignment = createPresentationArm(dependencies, "ReadyOnAssignment", false, clock)
	local readyOnCommitVisibleSummary = benchmarkStats.run(readyOnCommitVisible.run, options)
	local readyOnCommitHiddenSummary = benchmarkStats.run(readyOnCommitHidden.run, options)
	local readyOnAssignmentSummary = benchmarkStats.run(readyOnAssignment.run, options)
	local evidence = {
		readyOnCommitVisible = readyOnCommitVisible.getEvidence(),
		readyOnCommitHidden = readyOnCommitHidden.getEvidence(),
		readyOnAssignment = readyOnAssignment.getEvidence(),
		completionBarrier = "presentationCommitted",
	}
	readyOnCommitVisible.destroy()
	readyOnCommitHidden.destroy()
	readyOnAssignment.destroy()
	return benchmarkContract.create({
		suite = "view-recycler-react",
		layer = "reactHost",
		owner = "react",
		responsibility = ResponsibilityCatalog.React.Presentation,
		timingClass = "hostBoundary",
		workload = "recyclable-view-readiness",
		description = "Measures assignment-to-presented-content latency for every readiness and pending policy.",
		scale = {
			items = 20,
			visibleRows = 10,
			scrollsPerSample = 1,
		},
		timing = {
			unit = "ms",
			basis = "presentationCommit",
			operationsPerSample = 1,
			includesSchedulerWaits = true,
		},
		arms = {
			readyOnCommitVisible = readyOnCommitVisibleSummary,
			readyOnCommitHidden = readyOnCommitHiddenSummary,
			readyOnAssignment = readyOnAssignmentSummary,
		},
		evidence = evidence,
	})
end

local function measureVirtualListTeardown(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	options: Options
)
	local clock = options.clock or os.clock
	local lastEvidence = {}
	local summary = benchmarkStats.run(function()
		local mounts = 0
		local unmounts = 0
		local itemType = dependencies.ViewRecycler.createRecyclableView(function(props)
			local item = dependencies.SignalsReact.useSignalState(props.itemSignal)
			dependencies.React.useEffect(function()
				mounts += 1
				return function()
					unmounts += 1
				end
			end, {})
			return dependencies.React.createElement("TextLabel", {
				Name = "Content",
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				Text = item.text,
			})
		end, {
			readiness = "ReadyOnCommit",
			hideWhilePending = true,
		})
		local container = Instance.new("Folder")
		local root = dependencies.ReactRoblox.createRoot(container)
		local layout = dependencies.ViewRecycler.Layout.uniform({ itemLength = ITEM_LENGTH })
		local dataSource = dependencies.ViewRecycler.DataSource.snapshot(createItems(20), function(item: Item)
			return item.id
		end)
		renderList(dependencies, root, dataSource, layout, itemType, 10, nil)
		observeCompletionPhases(dependencies, {
			mounted = function()
				return mounts > 0 and hasItemText(container, "Item 10")
			end,
		}, "VirtualList teardown setup", {})
		local started = clock()
		dependencies.ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		local descendantsAfterUnmount = #container:GetDescendants()
		container:Destroy()
		local elapsedMs = (clock() - started) * 1000
		assert(unmounts == mounts, "VirtualList teardown did not unmount every physical row")
		assert(descendantsAfterUnmount == 0, "VirtualList teardown retained host descendants")
		lastEvidence = {
			mountedRows = mounts,
			unmountedRows = unmounts,
			descendantsAfterUnmount = descendantsAfterUnmount,
			completionBarrier = "allRowsUnmountedAndHostsRemoved",
			completionPhaseCounts = {
				allRowsUnmountedAndHostsRemoved = {
					afterAct = 1,
				},
			},
		}
		return elapsedMs
	end, options)
	return benchmarkContract.create({
		suite = "view-recycler-react",
		layer = "reactHost",
		owner = "react",
		responsibility = ResponsibilityCatalog.React.Teardown,
		timingClass = "hostBoundary",
		workload = "virtual-list-teardown",
		description = "Unmounts a complete VirtualList and destroys its layout and host container.",
		scale = {
			items = 20,
			visibleRows = 10,
		},
		timing = {
			unit = "ms",
			basis = "fullVirtualListTeardown",
			operationsPerSample = 1,
			includesSchedulerWaits = true,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = lastEvidence,
	})
end

local function createRecyclingTransferArm(dependencies: Dependencies, readiness, clock: () -> number)
	local React = dependencies.React
	local SignalsReact = dependencies.SignalsReact
	local ViewRecycler = dependencies.ViewRecycler
	local mounts = 0
	local unmounts = 0
	local function StatefulStructuralRow(props)
		local item = dependencies.SignalsReact.useSignalState(props.itemSignal)
		local stateToken = React.useState("state-preserved")
		React.useEffect(function()
			mounts += 1
			return function()
				unmounts += 1
			end
		end, {})
		return React.createElement("TextLabel", {
			Name = "Content",
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			Text = `{item.text}:{stateToken}`,
		})
	end
	local function StatefulBindingRow(props)
		local stateToken = React.useState("state-preserved")
		React.useEffect(function()
			mounts += 1
			return function()
				unmounts += 1
			end
		end, {})
		return React.createElement("TextLabel", {
			Name = "Content",
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			Text = SignalsReact.useSignalBinding(function(scope)
				local item = props.itemSignal(scope)
				return `{item.text}:{stateToken}`
			end),
		})
	end
	local itemComponent = if readiness == "ReadyOnAssignment" then StatefulBindingRow else StatefulStructuralRow
	local itemType = ViewRecycler.createRecyclableView(itemComponent, {
		readiness = readiness,
		hideWhilePending = readiness == "ReadyOnCommit",
	})
	local firstSource = ViewRecycler.DataSource.sequence(
		{ {
			id = "first",
			text = "First",
			height = ITEM_LENGTH,
		} },
		function(item)
			return item.id
		end
	)
	local secondSource = ViewRecycler.DataSource.sequence(
		{ {
			id = "second",
			text = "Second",
			height = ITEM_LENGTH,
		} },
		function(item)
			return item.id
		end
	)
	local firstLayout = ViewRecycler.Layout.uniform({ itemLength = ITEM_LENGTH })
	local secondLayout = ViewRecycler.Layout.uniform({ itemLength = ITEM_LENGTH })
	local viewportRef: { current: ScrollingFrame? } = { current = nil }
	local container = Instance.new("Frame")
	container.Size = UDim2.fromOffset(VIEWPORT_WIDTH, ITEM_LENGTH)
	local secondListWidth = math.floor(VIEWPORT_WIDTH / 2)
	local root = dependencies.ReactRoblox.createRoot(container)
	local configuredViewRecycler = dependencies.ViewRecycler
	local mutationStarted = false
	local expectedKey = ""
	local assignmentAt: number? = nil
	local commitAt: number? = nil
	local activations = 0
	local deactivations = 0
	local function assignmentChanged(_, assignment)
		if mutationStarted then
			if assignment == nil then
				deactivations += 1
			else
				activations += 1
				if assignment.key == expectedKey and assignmentAt == nil then
					assignmentAt = clock()
				end
			end
		end
	end
	local function presentationChanged(_, assignment)
		if mutationStarted and assignment ~= nil and assignment.key == expectedKey and commitAt == nil then
			commitAt = clock()
		end
	end

	dependencies.ReactRoblox.act(function()
		root:render(React.createElement(configuredViewRecycler.RecyclingViewport, {
			axis = configuredViewRecycler.Axis.Y,
			scrollingFrameRef = viewportRef,
			scrollingFrameProps = {
				Name = "Viewport",
				CanvasSize = UDim2.fromOffset(0, ITEM_LENGTH * 2),
			},
		}, {
			FirstRoot = React.createElement("Frame", {
				Name = "FirstRoot",
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(0, 0),
				Size = UDim2.fromOffset(VIEWPORT_WIDTH, ITEM_LENGTH),
			}, {
				List = React.createElement(configuredViewRecycler.VirtualList, {
					data = firstSource,
					layout = firstLayout,
					axis = configuredViewRecycler.Axis.Y,
					overscan = 0,
					itemType = itemType,
					_instrumentation = {
						assignmentChanged = assignmentChanged,
						presentationChanged = presentationChanged,
					},
					scrollingFrameProps = { Name = "FirstList" },
				}),
			}),
			SecondRoot = React.createElement("Frame", {
				Name = "SecondRoot",
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(0, ITEM_LENGTH),
				Size = UDim2.fromOffset(secondListWidth, ITEM_LENGTH),
			}, {
				List = React.createElement(configuredViewRecycler.VirtualList, {
					data = secondSource,
					layout = secondLayout,
					axis = configuredViewRecycler.Axis.Y,
					overscan = 0,
					itemType = itemType,
					_instrumentation = {
						assignmentChanged = assignmentChanged,
						presentationChanged = presentationChanged,
					},
					scrollingFrameProps = { Name = "SecondList" },
				}),
			}),
		}))
	end)

	local initialContent = assert(findMeasuredObjects(container, "First:state-preserved"))
	local initialHost = initialContent:FindFirstAncestor("ListItemViewFrame1")
	local firstRoot = assert(container:FindFirstChild("FirstRoot", true))
	local secondRoot = assert(container:FindFirstChild("SecondRoot", true))
	local atFirst = true
	local completionPhaseCounts: PhaseCounts = {}
	local transfers = 0
	local lastMilestones = {}
	local function run(): number
		atFirst = not atFirst
		local expectedText = if atFirst then "First:state-preserved" else "Second:state-preserved"
		local expectedRoot = if atFirst then firstRoot else secondRoot
		local expectedOffset = if atFirst then 0 else ITEM_LENGTH
		local expectedWidth = if atFirst then VIEWPORT_WIDTH else secondListWidth
		expectedKey = if atFirst then "first" else "second"
		assignmentAt = nil
		commitAt = nil
		mutationStarted = true
		local layoutAt: number? = nil
		local hostAt: number? = nil
		local predicates = {
			assignmentDelivered = function()
				return assignmentAt ~= nil
			end,
			commitCompleted = function()
				return commitAt ~= nil and hasItemText(container, expectedText)
			end,
			layoutSettled = function()
				local content = findMeasuredObjects(container, expectedText)
				local complete = content ~= nil and approximatelyEqual(content.AbsoluteSize.X, expectedWidth)
				if complete and layoutAt == nil then
					layoutAt = clock()
				end
				return complete
			end,
			hostObserved = function()
				local content = findMeasuredObjects(container, expectedText)
				local complete = content ~= nil
					and content == initialContent
					and content:IsDescendantOf(expectedRoot)
					and content:FindFirstAncestor("ListItemViewFrame1") == initialHost
				if complete and hostAt == nil then
					hostAt = clock()
				end
				return complete
			end,
			destinationPresented = function()
				local content = findMeasuredObjects(container, expectedText)
				return content ~= nil
					and content == initialContent
					and content:IsDescendantOf(expectedRoot)
					and content:FindFirstAncestor("ListItemViewFrame1") == initialHost
					and approximatelyEqual(content.AbsoluteSize.X, expectedWidth)
			end,
		}
		local observedBeforeAct: { [string]: string } = {}
		local started = clock()
		dependencies.ReactRoblox.act(function()
			(viewportRef.current :: ScrollingFrame).CanvasPosition = Vector2.new(0, expectedOffset)
			captureCompletionPhase(predicates, observedBeforeAct, completionPhaseCounts, "afterMutation")
		end)
		observeCompletionPhases(
			dependencies,
			predicates,
			`recycling transfer to {expectedText}`,
			completionPhaseCounts,
			observedBeforeAct
		)
		transfers += 1
		local finalAssignmentAt = assert(assignmentAt, "fixed-size transfer assignment was not delivered")
		local finalCommitAt = assert(commitAt, "fixed-size transfer presentation was not committed")
		local finalLayoutAt = assert(layoutAt, "fixed-size transfer layout did not settle")
		local finalHostAt = assert(hostAt, "fixed-size transfer host was not observed")
		lastMilestones = {
			assignmentMs = (finalAssignmentAt - started) * 1000,
			commitMs = (finalCommitAt - started) * 1000,
			layoutMs = (finalLayoutAt - started) * 1000,
			hostMs = (finalHostAt - started) * 1000,
		}
		return (clock() - started) * 1000
	end
	return {
		run = run,
		getEvidence = function()
			return {
				mounts = mounts,
				unmounts = unmounts,
				transfers = transfers,
				sameContentInstance = findMeasuredObjects(
					container,
					if atFirst then "First:state-preserved" else "Second:state-preserved"
				) == initialContent,
				firstListWidth = VIEWPORT_WIDTH,
				secondListWidth = secondListWidth,
				activations = activations,
				deactivations = deactivations,
				milestones = lastMilestones,
				completionPhaseCounts = completionPhaseCounts,
			}
		end,
		destroy = function()
			dependencies.ReactRoblox.act(function()
				root:unmount()
			end)
			firstLayout.destroy()
			secondLayout.destroy()
			container:Destroy()
		end,
	}
end

local function createWrappedRecyclingTransferArm(dependencies: Dependencies, readiness, clock: () -> number)
	local React = dependencies.React
	local ViewRecycler = dependencies.ViewRecycler
	local mounts = 0
	local unmounts = 0
	local acceptedMeasurements = 0
	local assignmentAt: number? = nil
	local commitAt: number? = nil
	local layoutAt: number? = nil
	local measurementAt: number? = nil
	local hostAt: number? = nil
	local function WrappedStatefulRow(props)
		local item = dependencies.SignalsReact.useSignalState(props.itemSignal)
		local stateToken = React.useState("state-preserved")
		React.useEffect(function()
			mounts += 1
			return function()
				unmounts += 1
			end
		end, {})
		return React.createElement("TextLabel", {
			Name = "Content",
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -20, 0, 0),
			Text = `{item.text}:{stateToken}`,
			TextWrapped = true,
		})
	end
	local itemType = ViewRecycler.createRecyclableView(WrappedStatefulRow, {
		readiness = readiness,
		hideWhilePending = readiness == "ReadyOnCommit",
	})
	local firstText = string.rep("First wrapped transfer content ", 8)
	local secondText = string.rep("Second wrapped transfer content ", 8)
	local firstSource = ViewRecycler.DataSource.sequence(
		{ {
			id = "first-wrapped",
			text = firstText,
			height = ITEM_LENGTH,
		} },
		function(item)
			return item.id
		end
	)
	local secondSource = ViewRecycler.DataSource.sequence(
		{ {
			id = "second-wrapped",
			text = secondText,
			height = ITEM_LENGTH,
		} },
		function(item)
			return item.id
		end
	)
	local firstLayout = ViewRecycler.Layout.measured({ estimatedItemLength = ITEM_LENGTH })
	local secondLayout = ViewRecycler.Layout.measured({ estimatedItemLength = ITEM_LENGTH })
	local viewportRef: { current: ScrollingFrame? } = { current = nil }
	local container = Instance.new("ScreenGui")
	container.ResetOnSpawn = false
	container.Parent = game:GetService("CoreGui")
	local secondListWidth = math.floor(VIEWPORT_WIDTH / 2)
	local root = dependencies.ReactRoblox.createRoot(container)
	local mutationStarted = false
	local expectedKey = ""
	local function assignmentChanged(_, assignment)
		if mutationStarted and assignment ~= nil and assignment.key == expectedKey and assignmentAt == nil then
			assignmentAt = clock()
		end
	end
	local function presentationChanged(_, assignment)
		if mutationStarted and assignment ~= nil and assignment.key == expectedKey and commitAt == nil then
			commitAt = clock()
		end
	end
	local function diagnostics(event)
		if
			mutationStarted
			and event.kind == "measurementsProcessed"
			and event.accepted > 0
			and measurementAt == nil
		then
			acceptedMeasurements += event.accepted
			measurementAt = clock()
		end
	end
	dependencies.ReactRoblox.act(function()
		root:render(React.createElement("Frame", {
			Name = "TransferHost",
			Size = UDim2.fromOffset(VIEWPORT_WIDTH, ITEM_LENGTH),
		}, {
			Viewport = React.createElement(ViewRecycler.RecyclingViewport, {
				axis = ViewRecycler.Axis.Y,
				scrollingFrameRef = viewportRef,
				scrollingFrameProps = {
					Name = "Viewport",
					CanvasSize = UDim2.fromOffset(0, ITEM_LENGTH * 2),
				},
			}, {
				FirstRoot = React.createElement("Frame", {
					Name = "FirstRoot",
					BackgroundTransparency = 1,
					Position = UDim2.fromOffset(0, 0),
					Size = UDim2.fromOffset(VIEWPORT_WIDTH, ITEM_LENGTH),
				}, {
					List = React.createElement(ViewRecycler.VirtualList, {
						data = firstSource,
						layout = firstLayout,
						axis = ViewRecycler.Axis.Y,
						overscan = 0,
						itemType = itemType,
						diagnostics = diagnostics,
						_instrumentation = {
							assignmentChanged = assignmentChanged,
							presentationChanged = presentationChanged,
						},
						scrollingFrameProps = { Name = "FirstList" },
					}),
				}),
				SecondRoot = React.createElement("Frame", {
					Name = "SecondRoot",
					BackgroundTransparency = 1,
					Position = UDim2.fromOffset(0, ITEM_LENGTH),
					Size = UDim2.fromOffset(secondListWidth, ITEM_LENGTH),
				}, {
					List = React.createElement(ViewRecycler.VirtualList, {
						data = secondSource,
						layout = secondLayout,
						axis = ViewRecycler.Axis.Y,
						overscan = 0,
						itemType = itemType,
						diagnostics = diagnostics,
						_instrumentation = {
							assignmentChanged = assignmentChanged,
							presentationChanged = presentationChanged,
						},
						scrollingFrameProps = { Name = "SecondList" },
					}),
				}),
			}),
		}))
	end)
	waitForHeartbeatToSettle(dependencies)
	waitForHeartbeatToSettle(dependencies)
	local initialText = `{firstText}:state-preserved`
	local initialContent = assert(findMeasuredObjects(container, initialText))
	local initialHost = initialContent:FindFirstAncestor("ListItemViewFrame1")
	local firstRoot = assert(container:FindFirstChild("FirstRoot", true))
	local secondRoot = assert(container:FindFirstChild("SecondRoot", true))
	local atFirst = true
	local completionPhaseCounts: PhaseCounts = {}
	local transfers = 0
	local lastMilestones = {}
	local function run(): number
		atFirst = not atFirst
		local expectedText = `{if atFirst then firstText else secondText}:state-preserved`
		expectedKey = if atFirst then "first-wrapped" else "second-wrapped"
		local expectedRoot = if atFirst then firstRoot else secondRoot
		local expectedOffset = if atFirst then 0 else ITEM_LENGTH
		local expectedWidth = if atFirst then VIEWPORT_WIDTH else secondListWidth
		local expectedLayout = if atFirst then firstLayout else secondLayout
		assignmentAt = nil
		commitAt = nil
		layoutAt = nil
		measurementAt = nil
		hostAt = nil
		local started = clock()
		mutationStarted = true
		local predicates = {
			assignmentDelivered = function()
				return assignmentAt ~= nil
			end,
			commitCompleted = function()
				return commitAt ~= nil and hasItemText(container, expectedText)
			end,
			layoutSettled = function()
				local content, host = findMeasuredObjects(container, expectedText)
				local complete = content ~= nil
					and host ~= nil
					and content.AbsoluteSize.X == expectedWidth - 20
					and content.AbsoluteSize.Y > 0
					and host.AbsoluteSize.Y > 0
				if complete and layoutAt == nil then
					layoutAt = clock()
				end
				return complete
			end,
			measurementSettled = function()
				local content, host = findMeasuredObjects(container, expectedText)
				local complete = content ~= nil
					and host ~= nil
					and approximatelyEqual(expectedLayout.getItemLayout(1).length, host.AbsoluteSize.Y)
				if complete and measurementAt == nil then
					measurementAt = clock()
				end
				return complete
			end,
			hostObserved = function()
				local content = findMeasuredObjects(container, expectedText)
				local complete = content ~= nil
					and content == initialContent
					and content:IsDescendantOf(expectedRoot)
					and content:FindFirstAncestor("ListItemViewFrame1") == initialHost
				if complete and hostAt == nil then
					hostAt = clock()
				end
				return complete
			end,
		}
		local observedBeforeAct = {}
		dependencies.ReactRoblox.act(function()
			(viewportRef.current :: ScrollingFrame).CanvasPosition = Vector2.new(0, expectedOffset)
			captureCompletionPhase(predicates, observedBeforeAct, completionPhaseCounts, "afterMutation")
		end)
		observeCompletionPhases(dependencies, predicates, function()
			local content, host = findMeasuredObjects(container, expectedText)
			return `wrapped recycling transfer to {expectedKey}; assignment={assignmentAt ~= nil}, commit={commitAt ~= nil}, content={content ~= nil}, layout={layoutAt ~= nil}, measurement={measurementAt ~= nil}, host={hostAt ~= nil}, contentWidth={if content
					== nil
				then "nil"
				else content.AbsoluteSize.X}, expectedWidth={expectedWidth - 20}, hostHeight={if host == nil
				then "nil"
				else host.AbsoluteSize.Y}`
		end, completionPhaseCounts, observedBeforeAct)
		local finalAssignmentAt = assert(assignmentAt, "wrapped transfer assignment was not delivered")
		local finalCommitAt = assert(commitAt, "wrapped transfer presentation was not committed")
		local finalLayoutAt = assert(layoutAt, "wrapped transfer layout did not settle")
		local finalMeasurementAt = assert(measurementAt, "wrapped transfer measurement was not settled")
		local finalHostAt = assert(hostAt, "wrapped transfer host was not observed")
		lastMilestones = {
			assignmentMs = (finalAssignmentAt - started) * 1000,
			commitMs = (finalCommitAt - started) * 1000,
			layoutMs = (finalLayoutAt - started) * 1000,
			measurementMs = (finalMeasurementAt - started) * 1000,
			hostMs = (finalHostAt - started) * 1000,
		}
		transfers += 1
		return (clock() - started) * 1000
	end
	return {
		run = run,
		getEvidence = function()
			return {
				mounts = mounts,
				unmounts = unmounts,
				transfers = transfers,
				sameContentInstance = findMeasuredObjects(
					container,
					`{if atFirst then firstText else secondText}:state-preserved`
				) == initialContent,
				acceptedMeasurements = acceptedMeasurements,
				milestones = lastMilestones,
				completionPhaseCounts = completionPhaseCounts,
			}
		end,
		destroy = function()
			dependencies.ReactRoblox.act(function()
				root:unmount()
			end)
			firstLayout.destroy()
			secondLayout.destroy()
			container:Destroy()
		end,
	}
end

measureCompletedRecyclingTransfer = function(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	options: Options
)
	local clock = options.clock or os.clock
	local untilCommit = createRecyclingTransferArm(dependencies, "ReadyOnCommit", clock)
	local immediate = createRecyclingTransferArm(dependencies, "ReadyOnAssignment", clock)
	local wrappedUntilCommit = createWrappedRecyclingTransferArm(dependencies, "ReadyOnCommit", clock)
	local wrappedImmediate = createWrappedRecyclingTransferArm(dependencies, "ReadyOnAssignment", clock)
	local untilCommitSummary = benchmarkStats.run(untilCommit.run, options)
	local immediateSummary = benchmarkStats.run(immediate.run, options)
	local wrappedUntilCommitSummary = benchmarkStats.run(wrappedUntilCommit.run, options)
	local wrappedImmediateSummary = benchmarkStats.run(wrappedImmediate.run, options)
	local fixedEvidence = {
		untilCommit = untilCommit.getEvidence(),
		immediate = immediate.getEvidence(),
		fixedSizeMeasurementMilestone = "notRequiredUniformLayout",
	}
	local wrappedEvidence = {
		wrappedUntilCommit = wrappedUntilCommit.getEvidence(),
		wrappedImmediate = wrappedImmediate.getEvidence(),
	}
	untilCommit.destroy()
	immediate.destroy()
	wrappedUntilCommit.destroy()
	wrappedImmediate.destroy()
	local fixedRecord = benchmarkContract.create({
		suite = "view-recycler-react",
		layer = "reactHost",
		owner = "react",
		responsibility = ResponsibilityCatalog.React.StatefulTransfer,
		timingClass = "phased",
		workload = "completed-recycling-transfer",
		description = "Transfers one stateful physical host between different-width lists and observes presentation and derived bounds without remounting.",
		scale = {
			itemsPerList = 1,
			physicalHosts = 1,
			reparentsPerSample = 1,
		},
		timing = {
			unit = "ms",
			basis = "completedCrossListTransfer",
			operationsPerSample = 1,
			includesSchedulerWaits = true,
		},
		arms = {
			untilCommit = untilCommitSummary,
			immediate = immediateSummary,
		},
		evidence = fixedEvidence,
	})
	local wrappedRecord = benchmarkContract.create({
		suite = "view-recycler-react",
		layer = "reactHost",
		owner = "react",
		responsibility = ResponsibilityCatalog.React.AutomaticSizeTransfer,
		timingClass = "phased",
		workload = "completed-automatic-size-recycling-transfer",
		description = "Transfers one wrapped AutomaticSize physical host across different-width measured lists.",
		scale = {
			itemsPerList = 1,
			physicalHosts = 1,
			reparentsPerSample = 1,
		},
		timing = {
			unit = "ms",
			basis = "completedAutomaticSizeCrossListTransfer",
			operationsPerSample = 1,
			includesSchedulerWaits = true,
		},
		arms = {
			wrappedUntilCommit = wrappedUntilCommitSummary,
			wrappedImmediate = wrappedImmediateSummary,
		},
		evidence = wrappedEvidence,
	})
	local viewportActiveRecord = benchmarkContract.create({
		suite = "view-recycler-react",
		layer = "reactHost",
		owner = "react",
		responsibility = ResponsibilityCatalog.React.ViewportActiveGating,
		timingClass = "phased",
		workload = "viewport-active-gating",
		description = "Deactivates the leaving child list and activates the entering child list in one viewport transfer.",
		scale = {
			childLists = 2,
			physicalHosts = 1,
			transitionsPerSample = 1,
		},
		timing = {
			unit = "ms",
			basis = "completedViewportActiveTransition",
			operationsPerSample = 1,
			includesSchedulerWaits = true,
		},
		arms = {
			untilCommit = untilCommitSummary,
			immediate = immediateSummary,
		},
		evidence = fixedEvidence,
	})
	return fixedRecord, wrappedRecord, viewportActiveRecord
end

local function measureRecyclingScopeHighWater(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemCount: number,
	options: Options
)
	local clock = options.clock or os.clock
	local lastEvidence = {}
	local summary = benchmarkStats.run(function()
		local elapsedMs, evidence = dependencies.LifecycleWorkloads.recyclingScopeHighWater(itemCount, clock)
		lastEvidence = evidence
		return elapsedMs
	end, options)
	return benchmarkContract.create({
		suite = "view-recycler-react",
		layer = "reactHost",
		owner = "react",
		responsibility = ResponsibilityCatalog.React.ScopeOwnership,
		timingClass = "isolated",
		workload = "recycling-scope-high-water-lifecycle",
		description = "Creates one React RecyclingScope high-water batch and publishes only surviving hosts.",
		scale = {
			items = itemCount,
		},
		timing = {
			unit = "ms",
			basis = "recyclingScopeHighWaterBatch",
			operationsPerSample = itemCount,
			includesSchedulerWaits = false,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = lastEvidence,
	})
end

local function measureCompositionChurn(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	itemCount: number,
	options: Options
)
	local clock = options.clock or os.clock
	local fixture = dependencies.LifecycleWorkloads.compositionChurn(itemCount)
	local lastAssignmentUpdates = 0
	local lastFlushes = 0
	local summary = benchmarkStats.run(function()
		local updatesBefore = fixture.getAssignmentUpdates()
		local flushesBefore = fixture.getFlushes()
		local started = clock()
		fixture.run()
		local elapsedMs = (clock() - started) * 1000
		lastAssignmentUpdates = fixture.getAssignmentUpdates() - updatesBefore
		lastFlushes = fixture.getFlushes() - flushesBefore
		return elapsedMs
	end, options)
	fixture.destroy()
	return benchmarkContract.create({
		suite = "view-recycler-react",
		layer = "reactHost",
		owner = "react",
		responsibility = ResponsibilityCatalog.React.Composition,
		timingClass = "isolated",
		workload = "composed-recyclable-churn",
		description = "Coalesces one prop update per composed destination into a single placement flush.",
		scale = {
			items = itemCount,
			updates = itemCount,
		},
		timing = {
			unit = "ms",
			basis = "compositionPlacementFlushBatch",
			operationsPerSample = itemCount,
			includesSchedulerWaits = false,
		},
		arms = {
			viewRecycler = summary,
		},
		evidence = {
			assignmentUpdates = lastAssignmentUpdates,
			coalescedUpdates = itemCount,
			placementFlushes = lastFlushes,
			completionPhaseCounts = {
				compositionPublication = {
					synchronousFlush = 1,
				},
			},
		},
	})
end

local function runRecyclingStateMount(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	options: Options?
)
	local resolved: Options = options or {}
	local itemCount = resolved.itemCount or DEFAULT_ITEM_COUNT
	local visibleRows = resolved.recyclingStateVisibleRows or DEFAULT_RECYCLING_STATE_VISIBLE_ROWS
	assert(itemCount >= 1 and itemCount % 1 == 0, "itemCount must be a positive integer")
	assert(
		visibleRows >= 1 and visibleRows <= itemCount and visibleRows % 1 == 0,
		"recyclingStateVisibleRows must be an integer within itemCount"
	)
	return measureRecyclingStateMountOverhead(
		dependencies,
		benchmarkStats,
		benchmarkContract,
		createItems(itemCount),
		visibleRows,
		resolved
	)
end

local function run(
	dependencies: Dependencies,
	benchmarkStats: BenchmarkStatsApi,
	benchmarkContract: BenchmarkContractApi,
	options: Options?
): { any }
	local resolved: Options = options or {}
	local itemCount = resolved.itemCount or DEFAULT_ITEM_COUNT
	local scrollStepCount = resolved.scrollStepCount or DEFAULT_SCROLL_STEP_COUNT
	local mountVisibleRows: { number } = resolved.mountVisibleRows or DEFAULT_MOUNT_VISIBLE_ROWS
	local lifecycleItemCount = resolved.lifecycleItemCount or DEFAULT_LIFECYCLE_ITEM_COUNT
	local propagationItemCount = resolved.propagationItemCount or DEFAULT_PROPAGATION_ITEM_COUNT
	assert(itemCount >= 10 and itemCount % 1 == 0, "itemCount must be an integer of at least 10")
	assert(scrollStepCount >= 1 and scrollStepCount % 1 == 0, "scrollStepCount must be a positive integer")
	assert(
		propagationItemCount >= 20 and propagationItemCount % 1 == 0,
		"propagationItemCount must be an integer of at least 20"
	)

	local items = createItems(itemCount)
	local uniformItemType, measuredItemType = createItemTypes(dependencies)
	local records = {}
	for _, visibleRows in ipairs(mountVisibleRows) do
		assert(visibleRows >= 1 and visibleRows <= itemCount, "mount visible-row scale is out of range")
		table.insert(
			records,
			measureCompletedMount(
				dependencies,
				benchmarkStats,
				benchmarkContract,
				items,
				uniformItemType,
				visibleRows,
				resolved
			)
		)
	end
	table.insert(
		records,
		measureCompletedTraversal(
			dependencies,
			benchmarkStats,
			benchmarkContract,
			items,
			uniformItemType,
			itemCount,
			scrollStepCount,
			false,
			resolved
		)
	)
	table.insert(
		records,
		measureCompletedTraversal(
			dependencies,
			benchmarkStats,
			benchmarkContract,
			items,
			measuredItemType,
			itemCount,
			scrollStepCount,
			true,
			resolved
		)
	)
	table.insert(records, measureHostSizeSettlePhases(dependencies, benchmarkStats, benchmarkContract, resolved))
	local _, propagationItemType = createItemTypes(dependencies)
	local propagationScenarios: { PropagationScenarioName } = {
		"at-start",
		"in-middle",
		"before-visible-anchor",
		"at-end",
	}
	for _, scenarioName in ipairs(propagationScenarios) do
		table.insert(
			records,
			measureAssignmentPropagation(
				dependencies,
				benchmarkStats,
				benchmarkContract,
				propagationItemType,
				createPropagationScenario(dependencies, scenarioName, propagationItemCount),
				propagationItemCount,
				resolved
			)
		)
	end
	local fixedTransferRecord, automaticSizeTransferRecord, viewportActiveRecord =
		measureCompletedRecyclingTransfer(dependencies, benchmarkStats, benchmarkContract, resolved)
	table.insert(records, fixedTransferRecord)
	table.insert(records, automaticSizeTransferRecord)
	table.insert(records, viewportActiveRecord)
	table.insert(
		records,
		measureRecyclingScopeHighWater(dependencies, benchmarkStats, benchmarkContract, lifecycleItemCount, resolved)
	)
	table.insert(
		records,
		measureCompositionChurn(dependencies, benchmarkStats, benchmarkContract, lifecycleItemCount, resolved)
	)
	table.insert(
		records,
		measureDeclarativeReconciliation(dependencies, benchmarkStats, benchmarkContract, uniformItemType, resolved)
	)
	table.insert(
		records,
		measurePropSynchronization(dependencies, benchmarkStats, benchmarkContract, uniformItemType, resolved)
	)
	local assignmentBindingRecord, signalsPublicationRecord =
		measureAssignmentBinding(dependencies, benchmarkStats, benchmarkContract, resolved)
	table.insert(records, assignmentBindingRecord)
	table.insert(records, signalsPublicationRecord)
	table.insert(records, measurePresentationCommit(dependencies, benchmarkStats, benchmarkContract, resolved))
	table.insert(records, measureVirtualListTeardown(dependencies, benchmarkStats, benchmarkContract, resolved))
	table.insert(records, runRecyclingStateMount(dependencies, benchmarkStats, benchmarkContract, resolved))
	return records
end

return {
	run = run,
	runDeclarativeDataReconciliation = runDeclarativeDataReconciliation,
	runRecyclingStateMount = runRecyclingStateMount,
}
