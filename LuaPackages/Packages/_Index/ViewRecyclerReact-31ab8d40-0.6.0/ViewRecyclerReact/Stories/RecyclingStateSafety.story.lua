local Root = script:FindFirstAncestor("ViewRecyclerReact")
assert(Root ~= nil, "RecyclingStateSafety story must be mounted under view-recycler-react")
local Packages = Root.Parent

local React = require(Packages.React)
local SignalsReact = require(Packages.SignalsReact)
local StoryControls = require(script.Parent.Harness.StoryControls)
local StoryShell = require(script.Parent.Harness.StoryShell)
local ViewRecycler = require(Root)
local useManagedLayout = require(script.Parent.Harness.useManagedLayout)

local e = React.createElement

local DEFAULT_VALUES = table.freeze({
	itemCount = 2000,
	itemLength = 46,
	spacing = 4,
	overscan = 2,
	jumpTarget = 1000,
})

local CONTROLS = {
	itemCount = StoryControls.options(DEFAULT_VALUES.itemCount, { 100, 500, 1000, 5000 }),
	itemLength = DEFAULT_VALUES.itemLength,
	spacing = DEFAULT_VALUES.spacing,
	overscan = StoryControls.OverscanOptions,
	jumpTarget = DEFAULT_VALUES.jumpTarget,
}

type Item = {
	id: number,
	label: string,
}

type StatsActions = {
	allocateMountId: () -> number,
	onMount: () -> (),
	onUnmount: () -> (),
	onReassignment: () -> (),
}

local StatsContext = React.createContext(nil :: StatsActions?)

local function StatefulRowView(props)
	local item = SignalsReact.useSignalState(props.itemSignal)
	local itemKey = item.id
	local actions = React.useContext(StatsContext) :: StatsActions
	local clicks, setClicks = ViewRecycler.useRecyclingState(0)
	local previousId = React.useRef(nil :: string?)
	local mountId = React.useState(actions.allocateMountId)
	local color = React.useState(function()
		return Color3.fromHSV(math.random(), 0.3, 0.88)
	end)
	React.useEffect(function()
		actions.onMount()
		return actions.onUnmount
	end, { actions })

	React.useEffect(function()
		if previousId.current ~= nil and previousId.current ~= itemKey then
			actions.onReassignment()
		end
		previousId.current = itemKey
	end, { actions, itemKey })

	return e("TextButton", {
		BackgroundColor3 = color,
		Font = Enum.Font.BuilderSans,
		Text = `[mount {mountId}] {item.label}   local clicks: {clicks}`,
		TextColor3 = Color3.fromRGB(25, 25, 30),
		TextSize = 17,
		Size = UDim2.fromScale(1, 1),
		[React.Event.Activated] = function()
			setClicks(function(value)
				return value + 1
			end)
		end,
	})
end

local StatefulRow = ViewRecycler.createRecyclableView(StatefulRowView)

local function createItems(itemCount: number): { Item }
	local items = table.create(itemCount)
	for index = 1, itemCount do
		items[index] = { id = index, label = `Item #{index}` }
	end
	return items
end

local function getItemKey(item: Item): string
	return tostring(item.id)
end

local function resolveControls(controls)
	controls = StoryControls.merge(DEFAULT_VALUES, controls)
	local itemCount = StoryControls.positiveInteger(controls.itemCount, DEFAULT_VALUES.itemCount)
	return {
		itemCount = itemCount,
		itemLength = StoryControls.positiveInteger(controls.itemLength, DEFAULT_VALUES.itemLength),
		spacing = StoryControls.nonNegativeNumber(controls.spacing, DEFAULT_VALUES.spacing),
		overscan = StoryControls.nonNegativeNumber(controls.overscan, DEFAULT_VALUES.overscan),
		jumpTarget = math.clamp(
			StoryControls.positiveInteger(controls.jumpTarget, DEFAULT_VALUES.jumpTarget),
			1,
			itemCount
		),
	}
end

local function Scenario(props)
	local config = props.config
	local items = React.useState(function()
		return createItems(config.itemCount)
	end)
	local mounted, setMounted = React.useState(0)
	local reassignments, setReassignments = React.useState(0)
	local nextMountId = React.useRef(0)
	local listRef = React.useRef(nil :: ViewRecycler.VirtualListHandle?)
	local stressGeneration = React.useRef(0)
	React.useEffect(function()
		return function()
			stressGeneration.current += 1
		end
	end, {})
	local allocateMountId = React.useCallback(function()
		nextMountId.current += 1
		return nextMountId.current
	end, {})
	local onMount = React.useCallback(function()
		setMounted(function(value)
			return value + 1
		end)
	end, {})
	local onUnmount = React.useCallback(function()
		setMounted(function(value)
			return value - 1
		end)
	end, {})
	local onReassignment = React.useCallback(function()
		setReassignments(function(value)
			return value + 1
		end)
	end, {})
	local actions = React.useMemo(function(): StatsActions
		return {
			allocateMountId = allocateMountId,
			onMount = onMount,
			onUnmount = onUnmount,
			onReassignment = onReassignment,
		}
	end, { allocateMountId, onMount, onReassignment, onUnmount })

	local function jump(index: number)
		local handle = listRef.current
		if handle ~= nil then
			handle.scrollToIndex(index, { alignment = ViewRecycler.ScrollAlignment.Center })
		end
	end

	local function stressReassignment()
		stressGeneration.current += 1
		local generation = stressGeneration.current
		task.spawn(function()
			for _ = 1, 8 do
				if stressGeneration.current ~= generation then
					return
				end
				jump(config.jumpTarget)
				task.wait()
				if stressGeneration.current ~= generation then
					return
				end
				jump(1)
				task.wait()
			end
		end)
	end

	return e(StatsContext.Provider, {
		value = actions,
	}, {
		Content = e("Frame", {
			BackgroundColor3 = Color3.fromRGB(22, 22, 28),
			Size = UDim2.fromOffset(440, 560),
		}, {
			Status = e("TextLabel", {
				BackgroundTransparency = 1,
				Font = Enum.Font.BuilderSans,
				Text = `Mounted: {mounted}   Reassignments without remount: {reassignments}`,
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 15,
				Size = UDim2.new(1, 0, 0, 30),
			}),
			JumpFar = e("TextButton", {
				Position = UDim2.fromOffset(4, 32),
				Size = UDim2.fromOffset(105, 30),
				Text = `Jump to #{config.jumpTarget}`,
				[React.Event.Activated] = function()
					jump(config.jumpTarget)
				end,
			}),
			JumpBack = e("TextButton", {
				Position = UDim2.fromOffset(113, 32),
				Size = UDim2.fromOffset(105, 30),
				Text = "Jump back to #1",
				[React.Event.Activated] = function()
					jump(1)
				end,
			}),
			Stress = e("TextButton", {
				Position = UDim2.fromOffset(222, 32),
				Size = UDim2.fromOffset(105, 30),
				Text = "Rapid jumps",
				[React.Event.Activated] = stressReassignment,
			}),
			Hint = e("TextLabel", {
				BackgroundTransparency = 1,
				Font = Enum.Font.BuilderSans,
				Position = UDim2.fromOffset(331, 32),
				Size = UDim2.new(1, -335, 0, 30),
				Text = "Skeleton while pending",
				TextColor3 = Color3.fromRGB(190, 190, 200),
				TextSize = 13,
			}),
			ListContainer = e("Frame", {
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(0, 66),
				Size = UDim2.new(1, 0, 1, -66),
			}, {
				List = e(ViewRecycler.VirtualList, {
					data = {
						items = items,
						getItemKey = getItemKey,
					},
					layout = props.layout,
					axis = ViewRecycler.Axis.Y,
					overscan = config.overscan,
					listRef = listRef,
					itemType = StatefulRow,
				}),
			}),
		}),
	})
end

local function Component(props)
	local config = resolveControls(props.controls)
	local layout = useManagedLayout(React, function()
		return ViewRecycler.Layout.uniform({
			itemLength = config.itemLength,
			spacing = config.spacing,
		})
	end, { config.itemLength, config.spacing })

	return e(Scenario, {
		config = config,
		key = tostring(config.itemCount),
		layout = layout,
	})
end

local Story = StoryShell.createStory({
	title = "Recycling State Safety",
	instructions = "Click several rows, jump far and back, then run rapid jumps while watching mount IDs, click state, and the pending skeleton.",
	itemUpdate = "ReadyOnAssignment — key-reset state follows identity; local React state follows the recycled view.",
	acceptanceCriteria = "Mount IDs are reused, local click state resets when an ItemView changes key, stale content never flashes, and the mounted count stays bounded.",
	size = UDim2.fromOffset(580, 700),
}, Component)

return {
	name = "Recycling State Safety",
	summary = "Stress-tests mount identity and commit-safe skeleton presentation during rapid recycling.",
	roact = React,
	story = Story,
	controls = CONTROLS,
}
