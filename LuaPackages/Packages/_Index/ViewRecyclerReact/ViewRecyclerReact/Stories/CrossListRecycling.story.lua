local Root = script:FindFirstAncestor("ViewRecyclerReact")
assert(Root ~= nil, "CrossListRecycling story must be mounted under view-recycler-react")
local Packages = Root.Parent

local React = require(Packages.React)
local SignalsReact = require(Packages.SignalsReact)
local StoryControls = require(script.Parent.Harness.StoryControls)
local StoryShell = require(script.Parent.Harness.StoryShell)
local ViewRecycler = require(Root)
local useManagedLayout = require(script.Parent.Harness.useManagedLayout)

local e = React.createElement
local DEFAULT_CONTROLS = {
	itemCount = 12,
	itemLength = 42,
	maxPoolSize = 16,
	overscan = 1,
	spacing = 4,
}
local CONTROLS = {
	itemCount = StoryControls.options(DEFAULT_CONTROLS.itemCount, { 4, 8, 24, 48 }),
	itemLength = DEFAULT_CONTROLS.itemLength,
	maxPoolSize = DEFAULT_CONTROLS.maxPoolSize,
	overscan = StoryControls.options(DEFAULT_CONTROLS.overscan, StoryControls.OverscanOptions),
	spacing = DEFAULT_CONTROLS.spacing,
}

type Item = {
	id: string,
	label: string,
	kind: string,
}

local function getItemKey(item: Item): string
	return item.id
end

local StatsContext = React.createContext(nil :: {
	allocateMountId: () -> number,
	onMount: () -> (),
	onUnmount: () -> (),
}?)

local function useMountIdentity(): number
	local stats = React.useContext(StatsContext)
	assert(stats ~= nil)
	local mountId = React.useState(stats.allocateMountId)
	React.useEffect(function()
		stats.onMount()
		return stats.onUnmount
	end, { stats })
	return mountId
end

local function RowView(props)
	local item = SignalsReact.useSignalState(props.itemSignal)
	local mountId = useMountIdentity()
	return e("TextLabel", {
		BackgroundColor3 = if item.kind == "immediate"
			then Color3.fromRGB(54, 102, 78)
			else Color3.fromRGB(74, 75, 116),
		BorderSizePixel = 0,
		Font = Enum.Font.BuilderSans,
		Size = UDim2.fromScale(1, 1),
		Text = `[mount {mountId}] {item.label} · {item.kind}`,
		TextColor3 = Color3.new(1, 1, 1),
		TextSize = 16,
	})
end

local function ImmediateRowView(props)
	local mountId = useMountIdentity()
	local backgroundColor = SignalsReact.useSignalBinding(function(scope)
		local item = props.itemSignal(scope)
		return if item.kind == "immediate" then Color3.fromRGB(54, 102, 78) else Color3.fromRGB(74, 75, 116)
	end)
	local text = SignalsReact.useSignalBinding(function(scope)
		local item = props.itemSignal(scope)
		return `[mount {mountId}] {item.label} · {item.kind}`
	end)
	return e("TextLabel", {
		BackgroundColor3 = backgroundColor,
		BorderSizePixel = 0,
		Font = Enum.Font.BuilderSans,
		Size = UDim2.fromScale(1, 1),
		Text = text,
		TextColor3 = Color3.new(1, 1, 1),
		TextSize = 16,
	})
end

local StructuralRow = ViewRecycler.createRecyclableView(RowView)
local ImmediateRow = ViewRecycler.createRecyclableView(ImmediateRowView)

local function getItemType(item: Item)
	return if item.kind == "immediate" then ImmediateRow else StructuralRow
end

local function Component(storyProps)
	local controls = StoryControls.merge(DEFAULT_CONTROLS, storyProps.controls)
	local itemCount = StoryControls.positiveInteger(controls.itemCount, DEFAULT_CONTROLS.itemCount)
	local itemLength = StoryControls.positiveInteger(controls.itemLength, DEFAULT_CONTROLS.itemLength)
	local spacing = StoryControls.nonNegativeNumber(controls.spacing, DEFAULT_CONTROLS.spacing)
	local overscan = StoryControls.nonNegativeNumber(controls.overscan, DEFAULT_CONTROLS.overscan)
	local maxPoolSize = StoryControls.positiveInteger(controls.maxPoolSize, DEFAULT_CONTROLS.maxPoolSize)
	local initialItems = React.useMemo(function(): { Item }
		local result = {}
		for index = 1, itemCount do
			table.insert(result, {
				id = tostring(index),
				label = `Message {index}`,
				kind = if index % 2 == 0 then "immediate" else "until commit",
			})
		end
		return result
	end, { itemCount })
	local leftSource = React.useState(function()
		return ViewRecycler.DataSource.sequence(initialItems, getItemKey)
	end)
	local rightSource = React.useState(function()
		return ViewRecycler.DataSource.sequence({}, getItemKey)
	end)
	React.useEffect(function()
		leftSource.reset(initialItems)
		rightSource.reset({})
	end, { initialItems, leftSource, rightSource })
	local leftLayout = useManagedLayout(React, function()
		return ViewRecycler.Layout.uniform({ itemLength = itemLength, spacing = spacing })
	end, { itemLength, spacing })
	local rightLayout = useManagedLayout(React, function()
		return ViewRecycler.Layout.uniform({ itemLength = itemLength, spacing = spacing })
	end, { itemLength, spacing })
	local mounted, setMounted = React.useState(0)
	local nextMountId = React.useRef(0)
	local stats = React.useMemo(function()
		return {
			allocateMountId = function()
				nextMountId.current += 1
				return nextMountId.current
			end,
			onMount = function()
				setMounted(function(value)
					return value + 1
				end)
			end,
			onUnmount = function()
				setMounted(function(value)
					return value - 1
				end)
			end,
		}
	end, {})

	local function move(items: { Item }, source, destination)
		source.reset({})
		destination.reset(items)
	end

	return e(StatsContext.Provider, {
		value = stats,
	}, {
		Root = e("Frame", {
			BackgroundColor3 = Color3.fromRGB(22, 22, 28),
			Size = UDim2.fromOffset(760, 500),
		}, {
			Status = e("TextLabel", {
				BackgroundTransparency = 1,
				Font = Enum.Font.BuilderSans,
				Position = UDim2.fromOffset(12, 8),
				Size = UDim2.new(1, -24, 0, 28),
				Text = `Mounted physical ItemViews: {mounted}`,
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 17,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			MoveRight = e("TextButton", {
				Position = UDim2.fromOffset(250, 8),
				Size = UDim2.fromOffset(120, 28),
				Text = "Move all →",
				[React.Event.Activated] = function()
					move(initialItems, leftSource, rightSource)
				end,
			}),
			MoveLeft = e("TextButton", {
				Position = UDim2.fromOffset(378, 8),
				Size = UDim2.fromOffset(120, 28),
				Text = "← Move all",
				[React.Event.Activated] = function()
					move(initialItems, rightSource, leftSource)
				end,
			}),
			Scope = e(ViewRecycler.RecyclingScope, {
				maxPoolSize = maxPoolSize,
			}, {
				Left = e("Frame", {
					BackgroundColor3 = Color3.fromRGB(31, 31, 39),
					Position = UDim2.fromOffset(12, 48),
					Size = UDim2.fromOffset(356, 440),
				}, {
					List = e(ViewRecycler.VirtualList, {
						data = leftSource,
						layout = leftLayout,
						axis = ViewRecycler.Axis.Y,
						overscan = overscan,
						itemType = getItemType,
					}),
				}),
				Right = e("Frame", {
					BackgroundColor3 = Color3.fromRGB(31, 31, 39),
					Position = UDim2.fromOffset(392, 48),
					Size = UDim2.fromOffset(356, 440),
				}, {
					List = e(ViewRecycler.VirtualList, {
						data = rightSource,
						layout = rightLayout,
						axis = ViewRecycler.Axis.Y,
						overscan = overscan,
						itemType = getItemType,
					}),
				}),
			}),
		}),
	})
end

local Story = StoryShell.createStory({
	title = "Cross-list Recycling",
	instructions = "Move all items left-to-right and back repeatedly while comparing mount IDs and the mounted physical ItemView count.",
	itemUpdate = "Mixed — structural ReadyOnAssignment rows and binding-driven rows share one Recycling scope.",
	acceptanceCriteria = "Compatible vacant hosts transfer between lists without new mount IDs after warm-up, and each presentation mode preserves correct content.",
	size = UDim2.fromOffset(800, 700),
}, Component)

return {
	name = "Cross-list Recycling",
	summary = "Moves vacant ItemViews between two lists while preserving mount identity and presentation policy.",
	roact = React,
	story = Story,
	controls = CONTROLS,
}
