local Root = script:FindFirstAncestor("ViewRecyclerReact")
assert(Root ~= nil, "StickyHeaders story must be mounted under view-recycler-react")
local Packages = Root.Parent

local React = require(Packages.React)
local SignalsReact = require(Packages.SignalsReact)
local StoryControls = require(script.Parent.Harness.StoryControls)
local StoryShell = require(script.Parent.Harness.StoryShell)
local ViewRecycler = require(Root)
local useManagedLayout = require(script.Parent.Harness.useManagedLayout)

local e = React.createElement

local DEFAULT_VALUES = table.freeze({
	pinnedItemType = "heterogeneous",
	sectionCount = 20,
	rowsPerSection = 5,
	itemLength = 42,
	spacing = 2,
	overscan = 2,
})

local CONTROLS = {
	pinnedItemType = { "heterogeneous", "homogeneous" },
	sectionCount = StoryControls.options(DEFAULT_VALUES.sectionCount, { 5, 10, 40 }),
	rowsPerSection = StoryControls.options(DEFAULT_VALUES.rowsPerSection, { 2, 10, 20 }),
	itemLength = DEFAULT_VALUES.itemLength,
	spacing = DEFAULT_VALUES.spacing,
	overscan = StoryControls.OverscanOptions,
}

type Item = {
	id: string,
	kind: "header" | "row" | "toolbar" | "status",
	text: string,
}

local nextMountId = 0

local function ItemContent(props)
	local item = SignalsReact.useSignalState(props.itemSignal)
	local mountId = React.useState(function()
		nextMountId += 1
		return nextMountId
	end)
	local isHeader = item.kind == "header"

	return e("TextLabel", {
		BackgroundColor3 = if isHeader then Color3.fromRGB(45, 54, 80) else Color3.fromRGB(235, 237, 243),
		Font = if isHeader then Enum.Font.BuilderSansBold else Enum.Font.BuilderSans,
		Text = `  [host {mountId}] {item.text}`,
		TextColor3 = if isHeader then Color3.new(1, 1, 1) else Color3.fromRGB(28, 30, 38),
		TextSize = 17,
		TextXAlignment = Enum.TextXAlignment.Left,
		Size = UDim2.fromScale(1, 1),
	})
end

local function ChromeContent(props)
	local item = SignalsReact.useSignalState(props.itemSignal)
	return e("TextLabel", {
		BackgroundColor3 = if item.kind == "toolbar" then Color3.fromRGB(28, 30, 40) else Color3.fromRGB(55, 58, 70),
		Font = Enum.Font.BuilderSansBold,
		Text = item.text,
		TextColor3 = Color3.new(1, 1, 1),
		TextSize = 15,
		Size = UDim2.new(1, 0, 0, if item.kind == "toolbar" then 34 else 30),
	})
end

local HeaderItemView = ViewRecycler.createRecyclableView(ItemContent)
local RowItemView = ViewRecycler.createRecyclableView(ItemContent)
local ToolbarItemView = ViewRecycler.createRecyclableView(ChromeContent)
local StatusItemView = ViewRecycler.createRecyclableView(ChromeContent)

local function createItems(sectionCount: number, rowsPerSection: number): { Item }
	local items: { Item } = {}
	for section = 1, sectionCount do
		table.insert(items, {
			id = `header-{section}`,
			kind = "header",
			text = `Section {section}`,
		})
		for row = 1, rowsPerSection do
			table.insert(items, {
				id = `row-{section}-{row}`,
				kind = "row",
				text = `Item {section}.{row}`,
			})
		end
	end
	return items
end

local PINNED_START_ITEM = ViewRecycler.createPinnedItem({
	key = "$toolbar",
	value = {
		id = "$toolbar",
		kind = "toolbar",
		text = "Sticky headers and pinned items",
	},
	itemType = ToolbarItemView,
})
local PINNED_END_ITEM = ViewRecycler.createPinnedItem({
	key = "$status",
	value = {
		id = "$status",
		kind = "status",
		text = "Host IDs stay stable while pinned rows remain in the canvas",
	},
	itemType = StatusItemView,
})
local HOMOGENEOUS_PINNED_START_ITEM = ViewRecycler.createPinnedItem({
	key = "$toolbar",
	value = {
		id = "$toolbar",
		kind = "row",
		text = "Homogeneous pinned start using RowItemView",
	},
	itemType = RowItemView,
})
local HOMOGENEOUS_PINNED_END_ITEM = ViewRecycler.createPinnedItem({
	key = "$status",
	value = {
		id = "$status",
		kind = "row",
		text = "Homogeneous pinned end using RowItemView",
	},
	itemType = RowItemView,
})

local function getItemKey(item: Item): string
	return item.id
end

local function getItemType(item: Item)
	return if item.kind == "header" then HeaderItemView else RowItemView
end

local function isItemStickyHeader(item: Item): boolean
	return item.kind == "header"
end

local function Component(props)
	local controls = StoryControls.merge(DEFAULT_VALUES, props.controls)
	local pinnedItemType = if controls.pinnedItemType == "homogeneous" then "homogeneous" else "heterogeneous"
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
	local homogeneous = pinnedItemType == "homogeneous"

	return e("Frame", {
		BackgroundColor3 = Color3.fromRGB(18, 20, 26),
		Size = UDim2.fromOffset(420, 560),
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
			isItemStickyHeader = isItemStickyHeader,
			pinnedStartItem = if homogeneous then HOMOGENEOUS_PINNED_START_ITEM else PINNED_START_ITEM,
			pinnedEndItem = if homogeneous then HOMOGENEOUS_PINNED_END_ITEM else PINNED_END_ITEM,
		}),
	})
end

local Story = StoryShell.createStory({
	title = "Sticky Headers and Pinned Items",
	instructions = "Scroll through several sections, then switch pinnedItemType between heterogeneous and homogeneous to exercise dedicated and shared ItemView pools.",
	itemUpdate = "ReadyOnAssignment — sticky and pinned item kinds use distinct structures.",
	acceptanceCriteria = "Both pinned-item modes remain visible, exactly one section header sticks with push-off, and host IDs remain stable without overlap or active-lease stealing.",
	size = UDim2.fromOffset(560, 700),
}, Component)

return {
	name = "Sticky Headers",
	summary = "Pins stable ItemView hosts inside the canvas with push-off.",
	roact = React,
	story = Story,
	controls = CONTROLS,
}
