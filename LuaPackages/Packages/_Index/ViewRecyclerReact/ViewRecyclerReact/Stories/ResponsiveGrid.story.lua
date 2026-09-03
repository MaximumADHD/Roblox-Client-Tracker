local Root = script:FindFirstAncestor("ViewRecyclerReact")
assert(Root ~= nil, "ResponsiveGrid story must be mounted under view-recycler-react")
local Packages = Root.Parent

local React = require(Packages.React)
local SignalsReact = require(Packages.SignalsReact)
local StoryControls = require(script.Parent.Harness.StoryControls)
local StoryShell = require(script.Parent.Harness.StoryShell)
local ViewRecycler = require(Root)
local useManagedLayout = require(script.Parent.Harness.useManagedLayout)

local e = React.createElement
local CATEGORIES = { "Systems", "Rendering", "Networking", "Storage" }

type Item = {
	id: number,
	title: string,
	category: string,
}

local DEFAULT_VALUES = table.freeze({
	itemCount = 500,
	itemLength = 96,
	crossAxisItemLength = 110,
	spacing = 6,
	overscan = 2,
})

local CONTROLS = {
	itemCount = StoryControls.options(DEFAULT_VALUES.itemCount, { 100, 1000, 5000 }),
	itemLength = DEFAULT_VALUES.itemLength,
	crossAxisItemLength = DEFAULT_VALUES.crossAxisItemLength,
	spacing = DEFAULT_VALUES.spacing,
	overscan = StoryControls.OverscanOptions,
}

local function GridItemView(props)
	local item = SignalsReact.useSignalState(props.itemSignal)
	return e("Frame", {
		BackgroundColor3 = Color3.fromHSV((item.id % 12) / 12, 0.28, 0.82),
		BorderSizePixel = 0,
		Size = UDim2.fromScale(1, 1),
	}, {
		Title = e("TextLabel", {
			BackgroundTransparency = 1,
			Font = Enum.Font.BuilderSansBold,
			Position = UDim2.fromOffset(10, 12),
			Size = UDim2.new(1, -20, 0, 28),
			Text = item.title,
			TextColor3 = Color3.fromRGB(25, 25, 30),
			TextSize = 18,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Category = e("TextLabel", {
			BackgroundTransparency = 1,
			Font = Enum.Font.BuilderSans,
			Position = UDim2.fromOffset(10, 44),
			Size = UDim2.new(1, -20, 0, 20),
			Text = item.category,
			TextColor3 = Color3.fromRGB(48, 49, 58),
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end

local GridItem = ViewRecycler.createRecyclableView(GridItemView)

local function createItems(itemCount: number)
	local items = table.create(itemCount)
	for index = 1, itemCount do
		items[index] = {
			id = index,
			title = `Collection item {index}`,
			category = CATEGORIES[(index - 1) % #CATEGORIES + 1],
		}
	end
	return items
end

local function getItemKey(item: Item)
	return tostring(item.id)
end

local function Component(props)
	local controls = StoryControls.merge(DEFAULT_VALUES, props.controls)
	local itemCount = StoryControls.positiveInteger(controls.itemCount, DEFAULT_VALUES.itemCount)
	local itemLength = StoryControls.positiveInteger(controls.itemLength, DEFAULT_VALUES.itemLength)
	local crossAxisItemLength =
		StoryControls.positiveInteger(controls.crossAxisItemLength, DEFAULT_VALUES.crossAxisItemLength)
	local spacing = StoryControls.nonNegativeNumber(controls.spacing, DEFAULT_VALUES.spacing)
	local overscan = StoryControls.nonNegativeNumber(controls.overscan, DEFAULT_VALUES.overscan)
	local items = React.useMemo(function()
		return createItems(itemCount)
	end, { itemCount })
	local layout = useManagedLayout(React, function()
		return ViewRecycler.Layout.grid({
			itemLength = itemLength,
			spacing = spacing,
			crossAxisItemLength = crossAxisItemLength,
		})
	end, { crossAxisItemLength, itemLength, spacing })
	local viewportWidth, setViewportWidth = React.useState(0)
	local columns = math.max(1, viewportWidth // crossAxisItemLength)

	return e("Frame", {
		BackgroundColor3 = Color3.fromRGB(22, 22, 28),
		Size = UDim2.fromOffset(520, 560),
	}, {
		Status = e("TextLabel", {
			BackgroundTransparency = 1,
			Font = Enum.Font.BuilderSans,
			Text = `Viewport: {math.round(viewportWidth)}px   Responsive columns: {columns}`,
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = 16,
			Size = UDim2.new(1, 0, 0, 34),
		}),
		ListContainer = e("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(0, 38),
			Size = UDim2.new(1, 0, 1, -38),
		}, {
			Grid = e(ViewRecycler.VirtualList, {
				data = {
					items = items,
					getItemKey = getItemKey,
				},
				layout = layout,
				axis = ViewRecycler.Axis.Y,
				itemType = GridItem,
				overscan = overscan,
				onViewportChanged = function(size)
					setViewportWidth(size.X)
				end,
			}),
		}),
	})
end

local Story = StoryShell.createStory({
	title = "Responsive Grid",
	instructions = "Resize the story viewport and scroll through several column transitions.",
	itemUpdate = "ReadyOnAssignment — this scenario isolates responsive grid geometry.",
	acceptanceCriteria = "The displayed column count follows the viewport width; cells remain aligned and no item overlaps or disappears during resize and scroll.",
	size = UDim2.fromOffset(560, 700),
}, Component)

return {
	name = "Responsive Grid",
	summary = "Adapts grid columns and item geometry to the story viewport.",
	roact = React,
	story = Story,
	controls = CONTROLS,
}
