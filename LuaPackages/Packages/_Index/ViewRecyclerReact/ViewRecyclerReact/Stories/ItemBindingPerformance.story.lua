local RunService = game:GetService("RunService")

local Root = script:FindFirstAncestor("ViewRecyclerReact")
assert(Root ~= nil, "ItemBindingPerformance story must be mounted under view-recycler-react")
local Packages = Root.Parent

local React = require(Packages.React)
local Signals = require(Root.Parent.Signals)
local SignalsReact = require(Packages.SignalsReact)
local StoryControls = require(script.Parent.Harness.StoryControls)
local StoryShell = require(script.Parent.Harness.StoryShell)
local ViewRecycler = require(Root)
local useManagedLayout = require(script.Parent.Harness.useManagedLayout)

local e = React.createElement
local DEFAULT_CONTROLS = {
	bindingCount = 4,
	itemCount = 500,
	jumpTarget = 400,
	overscan = 2,
	paused = false,
	tickRateHz = 15,
}
local CONTROLS = {
	bindingCount = { DEFAULT_CONTROLS.bindingCount, 1, 8 },
	itemCount = StoryControls.options(DEFAULT_CONTROLS.itemCount, { 100, 1000, 2000 }),
	jumpTarget = DEFAULT_CONTROLS.jumpTarget,
	overscan = StoryControls.options(DEFAULT_CONTROLS.overscan, StoryControls.OverscanOptions),
	paused = DEFAULT_CONTROLS.paused,
	tickRateHz = DEFAULT_CONTROLS.tickRateHz,
}

local BenchmarkMode = table.freeze({
	BindingTable = "bindingTable" :: "bindingTable",
	RepeatedBindings = "repeatedBindings" :: "repeatedBindings",
	Structural = "structural" :: "structural",
})
type BenchmarkMode =
	typeof(BenchmarkMode.BindingTable)
	| typeof(BenchmarkMode.RepeatedBindings)
	| typeof(BenchmarkMode.Structural)
local BindingCount = table.freeze({
	One = 1,
	Four = 4,
	Eight = 8,
})
type BindingCount = typeof(BindingCount.One) | typeof(BindingCount.Four) | typeof(BindingCount.Eight)

type Item = {
	id: number,
	label: string,
}
type Stats = {
	mounts: { [BenchmarkMode]: number },
	renders: { [BenchmarkMode]: number },
	selectorRuns: { [BenchmarkMode]: number },
}
type BenchmarkContextValue = {
	clock: Signals.getter<number>,
	recordMount: (BenchmarkMode, number) -> (),
	recordRender: (BenchmarkMode) -> (),
	recordSelectorRun: (BenchmarkMode) -> (),
}

local BenchmarkContext = React.createContext(nil :: BenchmarkContextValue?)

local function useBenchmarkLifecycle(mode: BenchmarkMode): BenchmarkContextValue
	local context = React.useContext(BenchmarkContext)
	assert(context ~= nil, "binding benchmark item rendered without context")
	context.recordRender(mode)
	React.useEffect(function()
		context.recordMount(mode, 1)
		return function()
			context.recordMount(mode, -1)
		end
	end, { context, mode })
	return context
end

local function StructuralRowView(props): React.Node
	local context = useBenchmarkLifecycle(BenchmarkMode.Structural)
	local item = SignalsReact.useSignalState(props.itemSignal)
	local clock = SignalsReact.useSignalState(context.clock)
	return e("TextLabel", {
		BackgroundColor3 = Color3.fromHSV((clock % 120) / 120, 0.25, 0.9),
		BorderSizePixel = 0,
		Font = Enum.Font.BuilderSans,
		Size = UDim2.fromScale(1, 1),
		Text = `{item.label} · tick {clock}`,
		TextColor3 = Color3.fromRGB(25, 25, 30),
		TextSize = 14 + clock % 4,
	})
end

local function RepeatedOneBindingRowView(props): React.Node
	local context = useBenchmarkLifecycle(BenchmarkMode.RepeatedBindings)
	local text = SignalsReact.useSignalBinding(function(scope)
		local item = props.itemSignal(scope)
		context.recordSelectorRun(BenchmarkMode.RepeatedBindings)
		local clock = context.clock(scope)
		return `{item.label} · tick {clock}`
	end)

	return e("TextLabel", {
		BackgroundColor3 = Color3.fromRGB(225, 225, 235),
		BorderSizePixel = 0,
		Font = Enum.Font.BuilderSans,
		Size = UDim2.fromScale(1, 1),
		Text = text,
		TextColor3 = Color3.fromRGB(25, 25, 30),
		TextSize = 15,
	})
end

local function RepeatedFourBindingsRowView(props): React.Node
	local context = useBenchmarkLifecycle(BenchmarkMode.RepeatedBindings)
	local text = SignalsReact.useSignalBinding(function(scope)
		local item = props.itemSignal(scope)
		context.recordSelectorRun(BenchmarkMode.RepeatedBindings)
		local clock = context.clock(scope)
		return `{item.label} · tick {clock}`
	end)
	local color = SignalsReact.useSignalBinding(function(scope)
		local item = props.itemSignal(scope)
		context.recordSelectorRun(BenchmarkMode.RepeatedBindings)
		local clock = context.clock(scope)
		local itemId = item.id
		return Color3.fromHSV(((clock + itemId) % 120) / 120, 0.25, 0.9)
	end)
	local textSize = SignalsReact.useSignalBinding(function(scope)
		local _item = props.itemSignal(scope)
		context.recordSelectorRun(BenchmarkMode.RepeatedBindings)
		return 14 + context.clock(scope) % 4
	end)
	local transparency = SignalsReact.useSignalBinding(function(scope)
		local _item = props.itemSignal(scope)
		context.recordSelectorRun(BenchmarkMode.RepeatedBindings)
		return (context.clock(scope) % 10) / 50
	end)

	return e("TextLabel", {
		BackgroundColor3 = color,
		BackgroundTransparency = transparency,
		BorderSizePixel = 0,
		Font = Enum.Font.BuilderSans,
		Size = UDim2.fromScale(1, 1),
		Text = text,
		TextColor3 = Color3.fromRGB(25, 25, 30),
		TextSize = textSize,
	})
end

local function RepeatedEightBindingsRowView(props): React.Node
	local context = useBenchmarkLifecycle(BenchmarkMode.RepeatedBindings)
	local text = SignalsReact.useSignalBinding(function(scope)
		local item = props.itemSignal(scope)
		context.recordSelectorRun(BenchmarkMode.RepeatedBindings)
		local clock = context.clock(scope)
		return `{item.label} · tick {clock}`
	end)
	local color = SignalsReact.useSignalBinding(function(scope)
		local item = props.itemSignal(scope)
		context.recordSelectorRun(BenchmarkMode.RepeatedBindings)
		local clock = context.clock(scope)
		local itemId = item.id
		return Color3.fromHSV(((clock + itemId) % 120) / 120, 0.25, 0.9)
	end)
	local textSize = SignalsReact.useSignalBinding(function(scope)
		local _item = props.itemSignal(scope)
		context.recordSelectorRun(BenchmarkMode.RepeatedBindings)
		return 14 + context.clock(scope) % 4
	end)
	local transparency = SignalsReact.useSignalBinding(function(scope)
		local _item = props.itemSignal(scope)
		context.recordSelectorRun(BenchmarkMode.RepeatedBindings)
		return (context.clock(scope) % 10) / 50
	end)
	local rotation = SignalsReact.useSignalBinding(function(scope)
		local _item = props.itemSignal(scope)
		context.recordSelectorRun(BenchmarkMode.RepeatedBindings)
		return context.clock(scope) % 3 - 1
	end)
	local strokeTransparency = SignalsReact.useSignalBinding(function(scope)
		local _item = props.itemSignal(scope)
		context.recordSelectorRun(BenchmarkMode.RepeatedBindings)
		return (context.clock(scope) % 5) / 10
	end)
	local textColor = SignalsReact.useSignalBinding(function(scope)
		local item = props.itemSignal(scope)
		context.recordSelectorRun(BenchmarkMode.RepeatedBindings)
		local clock = context.clock(scope)
		local itemId = item.id
		return Color3.fromHSV(((clock + itemId + 60) % 120) / 120, 0.4, 0.45)
	end)
	local zIndex = SignalsReact.useSignalBinding(function(scope)
		local _item = props.itemSignal(scope)
		context.recordSelectorRun(BenchmarkMode.RepeatedBindings)
		return context.clock(scope) % 2 + 1
	end)

	return e("TextLabel", {
		BackgroundColor3 = color,
		BackgroundTransparency = transparency,
		BorderSizePixel = 0,
		Font = Enum.Font.BuilderSans,
		Rotation = rotation,
		Size = UDim2.fromScale(1, 1),
		Text = text,
		TextColor3 = textColor,
		TextSize = textSize,
		TextStrokeTransparency = strokeTransparency,
		ZIndex = zIndex,
	})
end

local function readBindingTableValues(itemSignal, clock, scope)
	local item = itemSignal(scope)
	local tick = clock(scope)
	local itemId = item.id
	return {
		color = Color3.fromHSV(((tick + itemId) % 120) / 120, 0.25, 0.9),
		text = `{item.label} · tick {tick}`,
		textSize = 14 + tick % 4,
		transparency = (tick % 10) / 50,
	}
end

local function useBindingTablePrototype(itemSignal, context: BenchmarkContextValue)
	local initial = readBindingTableValues(itemSignal, context.clock, false)
	local color, setColor = React.useBinding(initial.color)
	local text, setText = React.useBinding(initial.text)
	local textSize, setTextSize = React.useBinding(initial.textSize)
	local transparency, setTransparency = React.useBinding(initial.transparency)

	React.useLayoutEffect(
		function()
			local previous = readBindingTableValues(itemSignal, context.clock, false)
			return Signals.createEffect(function(scope)
				context.recordSelectorRun(BenchmarkMode.BindingTable)
				local nextValues = readBindingTableValues(itemSignal, context.clock, scope)
				if nextValues.color ~= previous.color then
					setColor(nextValues.color)
				end
				if nextValues.text ~= previous.text then
					setText(nextValues.text)
				end
				if nextValues.textSize ~= previous.textSize then
					setTextSize(nextValues.textSize)
				end
				if nextValues.transparency ~= previous.transparency then
					setTransparency(nextValues.transparency)
				end
				previous = nextValues
			end)
		end,
		{
			context,
			itemSignal,
			setColor,
			setText,
			setTextSize,
			setTransparency,
		} :: { unknown }
	)

	return {
		color = color,
		text = text,
		textSize = textSize,
		transparency = transparency,
	}
end

local function BindingTableRowView(props): React.Node
	local context = useBenchmarkLifecycle(BenchmarkMode.BindingTable)
	local bindings = useBindingTablePrototype(props.itemSignal, context)
	return e("TextLabel", {
		BackgroundColor3 = bindings.color,
		BackgroundTransparency = bindings.transparency,
		BorderSizePixel = 0,
		Font = Enum.Font.BuilderSans,
		Size = UDim2.fromScale(1, 1),
		Text = bindings.text,
		TextColor3 = Color3.fromRGB(25, 25, 30),
		TextSize = bindings.textSize,
	})
end

local StructuralRow = ViewRecycler.createRecyclableView(StructuralRowView)
local IMMEDIATE_OPTIONS = table.freeze({
	readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
})
local RepeatedOneBindingRow = ViewRecycler.createRecyclableView(RepeatedOneBindingRowView, IMMEDIATE_OPTIONS)
local RepeatedFourBindingsRow = ViewRecycler.createRecyclableView(RepeatedFourBindingsRowView, IMMEDIATE_OPTIONS)
local RepeatedEightBindingsRow = ViewRecycler.createRecyclableView(RepeatedEightBindingsRowView, IMMEDIATE_OPTIONS)
local BindingTableRow = ViewRecycler.createRecyclableView(BindingTableRowView, IMMEDIATE_OPTIONS)

local function BenchmarkList(props): React.Node
	local layout = useManagedLayout(React, function()
		return ViewRecycler.Layout.uniform({ itemLength = 38, spacing = 2 })
	end, {})

	return e("Frame", {
		BackgroundColor3 = Color3.fromRGB(35, 35, 42),
		Position = props.position,
		Size = UDim2.fromOffset(230, 440),
	}, {
		Header = e("TextLabel", {
			BackgroundTransparency = 1,
			Font = Enum.Font.BuilderSansBold,
			Size = UDim2.new(1, 0, 0, 32),
			Text = props.title,
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = 15,
		}),
		List = e("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(0, 32),
			Size = UDim2.new(1, 0, 1, -32),
		}, {
			VirtualList = e(ViewRecycler.VirtualList, {
				axis = ViewRecycler.Axis.Y,
				data = props.data,
				itemType = props.itemType,
				layout = layout,
				listRef = props.listRef,
				overscan = props.overscan,
			}),
		}),
	})
end

local function newStats(): Stats
	return {
		mounts = {
			[BenchmarkMode.BindingTable] = 0,
			[BenchmarkMode.RepeatedBindings] = 0,
			[BenchmarkMode.Structural] = 0,
		},
		renders = {
			[BenchmarkMode.BindingTable] = 0,
			[BenchmarkMode.RepeatedBindings] = 0,
			[BenchmarkMode.Structural] = 0,
		},
		selectorRuns = {
			[BenchmarkMode.BindingTable] = 0,
			[BenchmarkMode.RepeatedBindings] = 0,
			[BenchmarkMode.Structural] = 0,
		},
	}
end

local function Component(storyProps): React.Node
	local controls = StoryControls.merge(DEFAULT_CONTROLS, storyProps.controls)
	local itemCount = StoryControls.positiveInteger(controls.itemCount, DEFAULT_CONTROLS.itemCount)
	local overscan = StoryControls.nonNegativeNumber(controls.overscan, DEFAULT_CONTROLS.overscan)
	local tickRateHz = math.max(0.1, StoryControls.nonNegativeNumber(controls.tickRateHz, DEFAULT_CONTROLS.tickRateHz))
	local jumpTarget =
		math.min(itemCount, StoryControls.positiveInteger(controls.jumpTarget, DEFAULT_CONTROLS.jumpTarget))
	local controlledBindingCount = if controls.bindingCount == BindingCount.One
			or controls.bindingCount == BindingCount.Eight
		then controls.bindingCount
		else BindingCount.Four
	local controlledPaused = if type(controls.paused) == "boolean" then controls.paused else DEFAULT_CONTROLS.paused
	local data = React.useMemo(function()
		local items: { Item } = table.create(itemCount)
		for index = 1, itemCount do
			items[index] = {
				id = index,
				label = `Row {index}`,
			}
		end
		return {
			items = items,
			getItemKey = function(item: Item)
				return tostring(item.id)
			end,
		}
	end, { itemCount })
	local clockState = React.useState(function()
		local clock, setClock = Signals.createSignal(0)
		return {
			clock = clock,
			setClock = setClock,
		}
	end)
	local stats = React.useRef(newStats())
	local paused, setPaused = React.useState(controlledPaused)
	local bindingCount, setBindingCount = React.useState(controlledBindingCount :: BindingCount)
	local statusVersion, setStatusVersion = React.useState(0)
	local structuralRef = React.useRef(nil :: ViewRecycler.VirtualListHandle?)
	local repeatedRef = React.useRef(nil :: ViewRecycler.VirtualListHandle?)
	local tableRef = React.useRef(nil :: ViewRecycler.VirtualListHandle?)
	React.useEffect(function()
		setPaused(controlledPaused)
	end, { controlledPaused })
	React.useEffect(function()
		setBindingCount(controlledBindingCount)
	end, { controlledBindingCount })

	local context = React.useMemo(function(): BenchmarkContextValue
		return {
			clock = clockState.clock,
			recordMount = function(mode, delta)
				stats.current.mounts[mode] += delta
			end,
			recordRender = function(mode)
				stats.current.renders[mode] += 1
			end,
			recordSelectorRun = function(mode)
				stats.current.selectorRuns[mode] += 1
			end,
		}
	end, { clockState.clock })

	React.useEffect(function()
		local elapsed = 0
		local statusElapsed = 0
		local connection = RunService.Heartbeat:Connect(function(deltaTime)
			elapsed += deltaTime
			statusElapsed += deltaTime
			if not paused and elapsed >= 1 / tickRateHz then
				elapsed = 0
				clockState.setClock(function(value)
					return value + 1
				end)
			end
			if statusElapsed >= 0.5 then
				statusElapsed = 0
				setStatusVersion(function(value)
					return value + 1
				end)
			end
		end)
		return function()
			connection:Disconnect()
		end
	end, { clockState.setClock, paused, tickRateHz })

	local function jump(index: number)
		for _, listRef in { structuralRef, repeatedRef, tableRef } do
			local handle = listRef.current
			if handle ~= nil then
				handle.scrollToIndex(index, { alignment = ViewRecycler.ScrollAlignment.Center })
			end
		end
	end

	local currentStats = stats.current
	local _statusVersion = statusVersion
	local repeatedItemType = if bindingCount == BindingCount.One
		then RepeatedOneBindingRow
		elseif bindingCount == BindingCount.Four then RepeatedFourBindingsRow
		else RepeatedEightBindingsRow
	return e(BenchmarkContext.Provider, {
		value = context,
	}, {
		Content = e("Frame", {
			BackgroundColor3 = Color3.fromRGB(22, 22, 28),
			Size = UDim2.fromOffset(710, 560),
		}, {
			Status = e("TextLabel", {
				BackgroundTransparency = 1,
				Font = Enum.Font.Code,
				Position = UDim2.fromOffset(4, 0),
				Size = UDim2.new(1, -8, 0, 54),
				Text = string.format(
					"renders  state=%d  repeated=%d  table=%d\nselector runs  repeated=%d  table=%d  mounted=%d/%d/%d",
					currentStats.renders[BenchmarkMode.Structural],
					currentStats.renders[BenchmarkMode.RepeatedBindings],
					currentStats.renders[BenchmarkMode.BindingTable],
					currentStats.selectorRuns[BenchmarkMode.RepeatedBindings],
					currentStats.selectorRuns[BenchmarkMode.BindingTable],
					currentStats.mounts[BenchmarkMode.Structural],
					currentStats.mounts[BenchmarkMode.RepeatedBindings],
					currentStats.mounts[BenchmarkMode.BindingTable]
				),
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
			}),
			Pause = e("TextButton", {
				Position = UDim2.fromOffset(4, 56),
				Size = UDim2.fromOffset(100, 28),
				Text = if paused then "Resume" else "Pause",
				[React.Event.Activated] = function()
					setPaused(not paused)
				end,
			}),
			JumpFar = e("TextButton", {
				Position = UDim2.fromOffset(110, 56),
				Size = UDim2.fromOffset(110, 28),
				Text = `Jump to #{jumpTarget}`,
				[React.Event.Activated] = function()
					jump(jumpTarget)
				end,
			}),
			JumpBack = e("TextButton", {
				Position = UDim2.fromOffset(226, 56),
				Size = UDim2.fromOffset(110, 28),
				Text = "Jump to #1",
				[React.Event.Activated] = function()
					jump(1)
				end,
			}),
			BindingCount = e("TextButton", {
				Position = UDim2.fromOffset(342, 56),
				Size = UDim2.fromOffset(120, 28),
				Text = `{bindingCount} binding hooks`,
				[React.Event.Activated] = function()
					setBindingCount(
						if bindingCount == BindingCount.One
							then BindingCount.Four
							elseif bindingCount == BindingCount.Four then BindingCount.Eight
							else BindingCount.One
					)
				end,
			}),
			Hint = e("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(470, 56),
				Size = UDim2.new(1, -474, 0, 28),
				Text = "Use MicroProfiler; selector runs proxy subscription work.",
				TextColor3 = Color3.fromRGB(185, 185, 195),
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			Structural = e(BenchmarkList, {
				data = data,
				itemType = StructuralRow,
				listRef = structuralRef,
				overscan = overscan,
				position = UDim2.fromOffset(4, 90),
				title = "Structural (after commit)",
			}),
			Repeated = e(BenchmarkList, {
				data = data,
				key = tostring(bindingCount),
				itemType = repeatedItemType,
				listRef = repeatedRef,
				overscan = overscan,
				position = UDim2.fromOffset(240, 90),
				title = `{bindingCount} bindings (immediate)`,
			}),
			Table = e(BenchmarkList, {
				data = data,
				itemType = BindingTableRow,
				listRef = tableRef,
				overscan = overscan,
				position = UDim2.fromOffset(476, 90),
				title = "1-effect table (immediate)",
			}),
		}),
	})
end

local Story = StoryShell.createStory({
	title = "Item Binding Performance",
	instructions = "Warm all three lists, switch binding counts, jump together, pause/resume updates, and inspect the MicroProfiler.",
	itemUpdate = "Comparison — structural ReadyOnAssignment rows versus binding-driven rows and a shared binding table.",
	acceptanceCriteria = "All lists show equivalent current data; mounted counts remain comparable; binding selector work changes observably without forcing structural rerenders.",
	size = UDim2.fromOffset(750, 700),
}, Component)

return {
	name = "Item Binding Performance",
	summary = "Compares commit-gated structural rendering with immediate binding-driven ItemViews.",
	roact = React,
	story = Story,
	controls = CONTROLS,
}
