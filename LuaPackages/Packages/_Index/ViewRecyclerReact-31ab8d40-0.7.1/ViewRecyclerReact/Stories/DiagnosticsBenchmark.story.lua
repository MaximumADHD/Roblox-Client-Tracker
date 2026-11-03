local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")

local Root = script:FindFirstAncestor("ViewRecyclerReact")
assert(Root ~= nil, "DiagnosticsBenchmark story must be mounted under view-recycler-react")
local Packages = Root.Parent

local React = require(Packages.React)
local SignalsReact = require(Packages.SignalsReact)
local StoryControls = require(script.Parent.Harness.StoryControls)
local StoryShell = require(script.Parent.Harness.StoryShell)
local ViewRecycler = require(Root)
local useManagedLayout = require(script.Parent.Harness.useManagedLayout)

local e = React.createElement
local DEFAULT_CONTROLS = {
	itemCount = 1000,
	itemLength = 40,
	jumpTarget = 900,
	maxPoolSize = 4,
	overscan = 2,
	spacing = 0,
}
local CONTROLS = {
	itemCount = StoryControls.options(DEFAULT_CONTROLS.itemCount, { 100, 500, 5000 }),
	itemLength = DEFAULT_CONTROLS.itemLength,
	jumpTarget = DEFAULT_CONTROLS.jumpTarget,
	maxPoolSize = DEFAULT_CONTROLS.maxPoolSize,
	overscan = StoryControls.options(DEFAULT_CONTROLS.overscan, StoryControls.OverscanOptions),
	spacing = DEFAULT_CONTROLS.spacing,
}

type Item = {
	id: number,
	label: string,
}

type Stats = {
	sampling: boolean,
	sampleSeconds: number,
	frames: number,
	frameSeconds: number,
	maxFrameSeconds: number,
	hostMountEvents: number,
	hostRenders: number,
	hostCommits: number,
	visibleRangeChanges: number,
	renderedRangeChanges: number,
	synchronizations: number,
	assignmentChanges: number,
	corrections: number,
	acceptedMeasurements: number,
	droppedMeasurements: number,
	occupiedItemViews: number,
	allocatedItemViews: number,
	peakOccupiedItemViews: number,
	peakAllocatedItemViews: number,
}

local BenchmarkContext = React.createContext(nil :: { stats: { current: Stats } }?)

local function newStats(): Stats
	return {
		sampling = false,
		sampleSeconds = 0,
		frames = 0,
		frameSeconds = 0,
		maxFrameSeconds = 0,
		hostMountEvents = 0,
		hostRenders = 0,
		hostCommits = 0,
		visibleRangeChanges = 0,
		renderedRangeChanges = 0,
		synchronizations = 0,
		assignmentChanges = 0,
		corrections = 0,
		acceptedMeasurements = 0,
		droppedMeasurements = 0,
		occupiedItemViews = 0,
		allocatedItemViews = 0,
		peakOccupiedItemViews = 0,
		peakAllocatedItemViews = 0,
	}
end

local function BenchmarkRowView(props): React.Node
	local context = React.useContext(BenchmarkContext)
	assert(context ~= nil, "benchmark row rendered without context")
	if context.stats.current.sampling then
		context.stats.current.hostRenders += 1
	end
	React.useLayoutEffect(function()
		if context.stats.current.sampling then
			context.stats.current.hostCommits += 1
		end
	end)
	React.useEffect(function()
		if context.stats.current.sampling then
			context.stats.current.hostMountEvents += 1
		end
	end, { context })
	local item = SignalsReact.useSignalState(props.itemSignal)
	return e("TextLabel", {
		BackgroundColor3 = Color3.fromRGB(235, 237, 242),
		BorderSizePixel = 0,
		Font = Enum.Font.BuilderSans,
		Size = UDim2.fromScale(1, 1),
		Text = item.label,
		TextColor3 = Color3.fromRGB(25, 25, 30),
		TextSize = 15,
	})
end

local BenchmarkRow = ViewRecycler.createRecyclableView(BenchmarkRowView, {
	readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
})

local function Component(storyProps): React.Node
	local controls = StoryControls.merge(DEFAULT_CONTROLS, storyProps.controls)
	local itemCount = StoryControls.positiveInteger(controls.itemCount, DEFAULT_CONTROLS.itemCount)
	local itemLength = StoryControls.positiveInteger(controls.itemLength, DEFAULT_CONTROLS.itemLength)
	local spacing = StoryControls.nonNegativeNumber(controls.spacing, DEFAULT_CONTROLS.spacing)
	local overscan = StoryControls.nonNegativeNumber(controls.overscan, DEFAULT_CONTROLS.overscan)
	local maxPoolSize = StoryControls.positiveInteger(controls.maxPoolSize, DEFAULT_CONTROLS.maxPoolSize)
	local jumpTarget =
		math.min(itemCount, StoryControls.positiveInteger(controls.jumpTarget, DEFAULT_CONTROLS.jumpTarget))
	local data = React.useMemo(function()
		local items: { Item } = table.create(itemCount)
		for index = 1, itemCount do
			items[index] = {
				id = index,
				label = `Benchmark row {index}`,
			}
		end
		return {
			items = items,
			getItemKey = function(item: Item)
				return tostring(item.id)
			end,
		}
	end, { itemCount })
	local layout = useManagedLayout(React, function()
		return ViewRecycler.Layout.uniform({
			itemLength = itemLength,
			spacing = spacing,
		})
	end, { itemLength, spacing })
	local stats = React.useRef(newStats())
	local poolState = React.useRef({
		occupiedItemViews = 0,
		allocatedItemViews = 0,
	})
	local listRef = React.useRef(nil :: ViewRecycler.VirtualListHandle?)
	local _statusVersion, setStatusVersion = React.useState(0)
	local contextValue = React.useMemo(function()
		return { stats = stats }
	end, {})

	local diagnostics = React.useCallback(function(event: ViewRecycler.DiagnosticEvent)
		local current = stats.current
		if event.kind == "poolChanged" then
			poolState.current.occupiedItemViews += event.occupiedDelta
			poolState.current.allocatedItemViews += event.totalDelta
		end
		if not current.sampling then
			return
		end
		if event.kind == "rangeChanged" then
			if event.rangeKind == "visible" then
				current.visibleRangeChanges += 1
			else
				current.renderedRangeChanges += 1
			end
		elseif event.kind == "poolChanged" then
			current.occupiedItemViews = poolState.current.occupiedItemViews
			current.allocatedItemViews = poolState.current.allocatedItemViews
			current.peakOccupiedItemViews = math.max(current.peakOccupiedItemViews, current.occupiedItemViews)
			current.peakAllocatedItemViews = math.max(current.peakAllocatedItemViews, current.allocatedItemViews)
		elseif event.kind == "itemViewsSynchronized" then
			current.synchronizations += 1
			current.assignmentChanges += event.reassigned + event.acquired + event.released
		elseif event.kind == "measurementsProcessed" then
			current.acceptedMeasurements += event.accepted
			current.droppedMeasurements += event.dropped
		elseif event.kind == "scrollCorrection" then
			current.corrections += 1
		end
	end, {})

	React.useEffect(function()
		local statusElapsed = 0
		local connection = RunService.Heartbeat:Connect(function(deltaTime)
			local current = stats.current
			statusElapsed += deltaTime

			if current.sampling then
				current.sampleSeconds += deltaTime
				current.frames += 1
				current.frameSeconds += deltaTime
				current.maxFrameSeconds = math.max(current.maxFrameSeconds, deltaTime)
			end
			if statusElapsed >= 0.5 then
				statusElapsed = 0
				setStatusVersion(function(version)
					return version + 1
				end)
			end
		end)
		return function()
			connection:Disconnect()
		end
	end, {})

	local current = stats.current
	local _renderStatus = _statusVersion
	local averageFrameMilliseconds = if current.frames == 0 then 0 else current.frameSeconds / current.frames * 1000

	local function toggleSampling()
		if current.sampling then
			current.sampling = false
		else
			stats.current = newStats()
			stats.current.sampling = true
			stats.current.occupiedItemViews = poolState.current.occupiedItemViews
			stats.current.allocatedItemViews = poolState.current.allocatedItemViews
			stats.current.peakOccupiedItemViews = poolState.current.occupiedItemViews
			stats.current.peakAllocatedItemViews = poolState.current.allocatedItemViews
		end
		setStatusVersion(function(version)
			return version + 1
		end)
	end

	local function jump(index: number)
		local handle = listRef.current
		if handle ~= nil then
			handle.scrollToIndex(index, { alignment = ViewRecycler.ScrollAlignment.Center })
		end
	end

	return e(BenchmarkContext.Provider, {
		value = contextValue,
	}, {
		Content = e("Frame", {
			BackgroundColor3 = Color3.fromRGB(22, 22, 28),
			Size = UDim2.fromOffset(620, 560),
		}, {
			Status = e("TextLabel", {
				BackgroundTransparency = 1,
				Font = Enum.Font.Code,
				Position = UDim2.fromOffset(8, 8),
				Size = UDim2.new(1, -16, 0, 96),
				Text = string.format(
					"sample %s %.1fs  frame avg/max %.2f/%.2f ms\n"
						.. "pool occupied/allocated %d/%d  high-water %d/%d  mount/render/commit %d/%d/%d\n"
						.. "ranges visible/rendered %d/%d  syncs %d  assignment changes %d  corrections %d",
					if current.sampling then "running" else "stopped",
					current.sampleSeconds,
					averageFrameMilliseconds,
					current.maxFrameSeconds * 1000,
					current.occupiedItemViews,
					current.allocatedItemViews,
					current.peakOccupiedItemViews,
					current.peakAllocatedItemViews,
					current.hostMountEvents,
					current.hostRenders,
					current.hostCommits,
					current.visibleRangeChanges,
					current.renderedRangeChanges,
					current.synchronizations,
					current.assignmentChanges,
					current.corrections
				),
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
			}),
			Sampling = e("TextButton", {
				Position = UDim2.fromOffset(8, 108),
				Size = UDim2.fromOffset(120, 28),
				Text = if current.sampling then "Stop sample" else "Start sample",
				[React.Event.Activated] = toggleSampling,
			}),
			JumpFar = e("TextButton", {
				Position = UDim2.fromOffset(136, 108),
				Size = UDim2.fromOffset(120, 28),
				Text = `Jump to #{jumpTarget}`,
				[React.Event.Activated] = function()
					jump(jumpTarget)
				end,
			}),
			JumpBack = e("TextButton", {
				Position = UDim2.fromOffset(264, 108),
				Size = UDim2.fromOffset(120, 28),
				Text = "Jump to #1",
				[React.Event.Activated] = function()
					jump(1)
				end,
			}),
			Export = e("TextButton", {
				Position = UDim2.fromOffset(392, 108),
				Size = UDim2.fromOffset(180, 28),
				Text = "Export JSON to output",
				[React.Event.Activated] = function()
					print(HttpService:JSONEncode(stats.current))
				end,
			}),
			List = e("Frame", {
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(8, 144),
				Size = UDim2.new(1, -16, 1, -152),
			}, {
				VirtualList = e(ViewRecycler.VirtualList, {
					axis = ViewRecycler.Axis.Y,
					data = data,
					diagnostics = diagnostics,
					itemType = BenchmarkRow,
					layout = layout,
					listRef = listRef,
					maxPoolSize = maxPoolSize,
					overscan = overscan,
				}),
			}),
		}),
	})
end

local Story = StoryShell.createStory({
	title = "Diagnostics Benchmark",
	instructions = "Warm the list, start a sample, repeat a documented scroll/jump sequence, stop, then export JSON with device and build metadata.",
	itemUpdate = "ReadyOnAssignment — readiness remains fixed so diagnostics samples stay comparable.",
	acceptanceCriteria = "Counters reset at sample start, advance only while sampling, pool high-water values stay bounded, and exported JSON matches the visible totals.",
	size = UDim2.fromOffset(660, 700),
}, Component)

return {
	name = "Diagnostics Benchmark",
	summary = "Exports host frame, pool, range, assignment, and correction counters.",
	roact = React,
	story = Story,
	controls = CONTROLS,
}
