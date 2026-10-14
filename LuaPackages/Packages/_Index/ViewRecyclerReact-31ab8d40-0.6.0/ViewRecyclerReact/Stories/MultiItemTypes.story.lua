local Root = script:FindFirstAncestor("ViewRecyclerReact")
assert(Root ~= nil, "MultiItemTypes story must be mounted under view-recycler-react")
local Packages = Root.Parent

local React = require(Packages.React)
local SignalsReact = require(Packages.SignalsReact)
local StoryControls = require(script.Parent.Harness.StoryControls)
local StoryShell = require(script.Parent.Harness.StoryShell)
local ViewRecycler = require(Root)
local useManagedLayout = require(script.Parent.Harness.useManagedLayout)

local e = React.createElement

local DEFAULT_VALUES = table.freeze({
	sectionCount = 60,
	rowsPerSection = 8,
	itemLength = 42,
	spacing = 2,
	overscan = 2,
})

local CONTROLS = {
	sectionCount = StoryControls.options(DEFAULT_VALUES.sectionCount, { 10, 20, 100 }),
	rowsPerSection = StoryControls.options(DEFAULT_VALUES.rowsPerSection, { 2, 4, 16 }),
	itemLength = DEFAULT_VALUES.itemLength,
	spacing = DEFAULT_VALUES.spacing,
	overscan = StoryControls.OverscanOptions,
}

type Item = {
	id: string,
	kind: "header" | "row",
	text: string,
}

type ItemKind = "header" | "row"

type StatsActions = {
	allocateMountId: () -> number,
	onMount: (ItemKind) -> (),
	onUnmount: (ItemKind) -> (),
}

local StatsContext = React.createContext(nil :: StatsActions?)

local function ItemContent(props)
	local item = SignalsReact.useSignalState(props.itemSignal)
	local kind: ItemKind = props.kind
	local actions = React.useContext(StatsContext) :: StatsActions
	local mountId = React.useState(actions.allocateMountId)
	local color = React.useState(function()
		return if kind == "header" then Color3.fromRGB(50, 50, 78) else Color3.fromHSV(math.random(), 0.18, 0.92)
	end)

	React.useEffect(function()
		actions.onMount(kind)
		return function()
			actions.onUnmount(kind)
		end
	end, { actions, kind })

	return e("TextLabel", {
		BackgroundColor3 = color,
		Font = if kind == "header" then Enum.Font.BuilderSansBold else Enum.Font.BuilderSans,
		Text = `[mount {mountId}] {item.text}`,
		TextColor3 = if kind == "header" then Color3.new(1, 1, 1) else Color3.fromRGB(25, 25, 30),
		TextSize = if kind == "header" then 20 else 17,
		TextXAlignment = Enum.TextXAlignment.Left,
		Size = UDim2.fromScale(1, 1),
	})
end

local function HeaderView(props)
	return e(ItemContent, {
		itemSignal = props.itemSignal,
		kind = "header",
	})
end

local function RowView(props)
	return e(ItemContent, {
		itemSignal = props.itemSignal,
		kind = "row",
	})
end

local Header = ViewRecycler.createRecyclableView(HeaderView)
local Row = ViewRecycler.createRecyclableView(RowView)

local function createItems(sectionCount: number, rowsPerSection: number): { Item }
	local items: { Item } = {}
	for section = 1, sectionCount do
		table.insert(items, { id = `header-{section}`, kind = "header", text = `  Section {section}` })
		for row = 1, rowsPerSection do
			table.insert(items, { id = `row-{section}-{row}`, kind = "row", text = `  Item {section}.{row}` })
		end
	end
	return items
end

local function getItemType(item: Item)
	return if item.kind == "header" then Header else Row
end

local function getItemKey(item: Item): string
	return item.id
end

local function Component(props)
	local controls = StoryControls.merge(DEFAULT_VALUES, props.controls)
	local sectionCount = StoryControls.positiveInteger(controls.sectionCount, DEFAULT_VALUES.sectionCount)
	local rowsPerSection = StoryControls.positiveInteger(controls.rowsPerSection, DEFAULT_VALUES.rowsPerSection)
	local itemLength = StoryControls.positiveInteger(controls.itemLength, DEFAULT_VALUES.itemLength)
	local spacing = StoryControls.nonNegativeNumber(controls.spacing, DEFAULT_VALUES.spacing)
	local overscan = StoryControls.nonNegativeNumber(controls.overscan, DEFAULT_VALUES.overscan)
	local items = React.useMemo(function()
		return createItems(sectionCount, rowsPerSection)
	end, { rowsPerSection, sectionCount })
	local layout = useManagedLayout(React, function()
		return ViewRecycler.Layout.uniform({
			itemLength = itemLength,
			spacing = spacing,
		})
	end, { itemLength, spacing })
	local mountedByKind, setMountedByKind = React.useState({
		header = 0,
		row = 0,
	})
	local nextMountId = React.useRef(0)
	local allocateMountId = React.useCallback(function()
		nextMountId.current += 1
		return nextMountId.current
	end, {})
	local onMount = React.useCallback(function(kind: ItemKind)
		setMountedByKind(function(previous)
			return {
				header = previous.header + if kind == "header" then 1 else 0,
				row = previous.row + if kind == "row" then 1 else 0,
			}
		end)
	end, {})
	local onUnmount = React.useCallback(function(kind: ItemKind)
		setMountedByKind(function(previous)
			return {
				header = previous.header - if kind == "header" then 1 else 0,
				row = previous.row - if kind == "row" then 1 else 0,
			}
		end)
	end, {})
	local actions = React.useMemo(function(): StatsActions
		return {
			allocateMountId = allocateMountId,
			onMount = onMount,
			onUnmount = onUnmount,
		}
	end, { allocateMountId, onMount, onUnmount })

	return e(StatsContext.Provider, {
		value = actions,
	}, {
		Content = e("Frame", {
			BackgroundColor3 = Color3.fromRGB(22, 22, 28),
			Size = UDim2.fromOffset(420, 560),
		}, {
			Status = e("TextLabel", {
				BackgroundTransparency = 1,
				Font = Enum.Font.BuilderSans,
				Text = `Mounted header itemViews: {mountedByKind.header}   row itemViews: {mountedByKind.row}`,
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 15,
				Size = UDim2.new(1, 0, 0, 34),
			}),
			ListContainer = e("Frame", {
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(0, 38),
				Size = UDim2.new(1, 0, 1, -38),
			}, {
				List = e(ViewRecycler.VirtualList, {
					data = {
						items = items,
						getItemKey = getItemKey,
					},
					layout = layout,
					axis = ViewRecycler.Axis.Y,
					overscan = overscan,
					itemType = getItemType,
				}),
			}),
		}),
	})
end

local Story = StoryShell.createStory({
	title = "Multiple Item Types",
	instructions = "Scroll across many section boundaries and watch header and row mount identities.",
	itemUpdate = "ReadyOnAssignment — item type changes structure and pool identity.",
	acceptanceCriteria = "Header hosts are reused only for headers, row hosts only for rows, and both mounted counts remain bounded near the rendered range.",
	size = UDim2.fromOffset(560, 700),
}, Component)

return {
	name = "Multiple Item Types",
	summary = "Demonstrates independent recycling pools for headers and rows.",
	roact = React,
	story = Story,
	controls = CONTROLS,
}
