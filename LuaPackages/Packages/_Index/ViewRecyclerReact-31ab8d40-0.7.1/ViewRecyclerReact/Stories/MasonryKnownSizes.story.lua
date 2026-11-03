local Root = script:FindFirstAncestor("ViewRecyclerReact")
assert(Root ~= nil, "MasonryKnownSizes story must be mounted under view-recycler-react")
local Packages = Root.Parent

local React = require(Packages.React)
local SignalsReact = require(Packages.SignalsReact)
local StoryControls = require(script.Parent.Harness.StoryControls)
local StoryShell = require(script.Parent.Harness.StoryShell)
local ViewRecycler = require(Root)
local useManagedLayout = require(script.Parent.Harness.useManagedLayout)

local e = React.createElement

local SizingMode = table.freeze({
	FixedColumns = "fixedColumns",
	ResponsiveItemWidth = "responsiveItemWidth",
})

local CATEGORIES = table.freeze({ "Lighting", "Seating", "Decor", "Storage", "Textiles", "Tableware" })
local DESCRIPTIONS = table.freeze({
	"Hand-finished details for a warm, lived-in space.",
	"Clean lines and durable materials for everyday use.",
	"A small-batch piece with a soft, modern profile.",
	"Designed to layer naturally into an existing collection.",
})

local DEFAULT_VALUES = table.freeze({
	axis = "vertical",
	columnCount = 3,
	crossAxisSpacing = 10,
	itemCount = 120,
	itemWidth = 150,
	mainSpacing = 10,
	overscan = 2,
	randomSeed = 23,
	sizingMode = SizingMode.ResponsiveItemWidth,
})

local CONTROLS = {
	axis = StoryControls.AxisOptions,
	columnCount = StoryControls.options(DEFAULT_VALUES.columnCount, { 2, 4, 5 }),
	crossAxisSpacing = DEFAULT_VALUES.crossAxisSpacing,
	itemCount = StoryControls.options(DEFAULT_VALUES.itemCount, { 30, 300, 1000 }),
	itemWidth = StoryControls.options(DEFAULT_VALUES.itemWidth, { 110, 180, 240 }),
	mainSpacing = DEFAULT_VALUES.mainSpacing,
	overscan = StoryControls.options(DEFAULT_VALUES.overscan, StoryControls.OverscanOptions),
	randomSeed = DEFAULT_VALUES.randomSeed,
	sizingMode = StoryControls.options(DEFAULT_VALUES.sizingMode, {
		SizingMode.FixedColumns,
	}),
}

type Item = {
	id: number,
	title: string,
	category: string,
	description: string,
	height: number,
	price: number,
	rating: number,
}

local function knownHeight(index: number, seed: number): number
	return 132 + (index * 73 + seed * 97 + index * index * 11) % 137
end

local function createItems(itemCount: number, seed: number): { Item }
	local items = table.create(itemCount)
	for index = 1, itemCount do
		items[index] = {
			id = index,
			title = `{CATEGORIES[(index - 1) % #CATEGORIES + 1]} piece #{index}`,
			category = CATEGORIES[(index - 1) % #CATEGORIES + 1],
			description = DESCRIPTIONS[(index + seed - 2) % #DESCRIPTIONS + 1],
			height = knownHeight(index, seed),
			price = 18 + (index * 17 + seed * 5) % 180,
			rating = 40 + (index * 7 + seed) % 11,
		}
	end
	return items
end

local function formatRange(label: string, range): string
	if range.lastIndex < range.firstIndex then
		return `{label}: empty`
	end
	return `{label}: {range.firstIndex}–{range.lastIndex}`
end

local function MasonryTileView(props): React.Node
	local item = SignalsReact.useSignalState(props.itemSignal)
	local hue = ((item.id * 29) % 100) / 100

	return e("Frame", {
		BackgroundColor3 = Color3.fromRGB(245, 243, 238),
		BorderSizePixel = 0,
		Name = "MasonryTile",
		Size = UDim2.fromScale(1, 1),
	}, {
		Corner = e("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),
		Preview = e("Frame", {
			BackgroundColor3 = Color3.fromHSV(hue, 0.32, 0.78),
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 54),
		}, {
			Corner = e("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
			Category = e("TextLabel", {
				BackgroundTransparency = 1,
				Font = Enum.Font.BuilderSansBold,
				Position = UDim2.fromOffset(10, 8),
				Size = UDim2.new(1, -20, 0, 20),
				Text = string.upper(item.category),
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			Swatch = e("Frame", {
				AnchorPoint = Vector2.new(1, 0),
				BackgroundColor3 = Color3.fromHSV((hue + 0.12) % 1, 0.35, 0.96),
				BorderSizePixel = 0,
				Position = UDim2.new(1, -10, 0, 10),
				Size = UDim2.fromOffset(28, 28),
			}, {
				Corner = e("UICorner", {
					CornerRadius = UDim.new(1, 0),
				}),
			}),
		}),
		Title = e("TextLabel", {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			Font = Enum.Font.BuilderSansBold,
			Position = UDim2.fromOffset(10, 64),
			Size = UDim2.new(1, -20, 0, 0),
			Text = item.title,
			TextColor3 = Color3.fromRGB(31, 30, 35),
			TextSize = 16,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Description = e("TextLabel", {
			BackgroundTransparency = 1,
			Font = Enum.Font.BuilderSans,
			Position = UDim2.fromOffset(10, 92),
			Size = UDim2.new(1, -20, 1, -134),
			Text = item.description,
			TextColor3 = Color3.fromRGB(88, 85, 92),
			TextSize = 13,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
		}),
		Price = e("TextLabel", {
			AnchorPoint = Vector2.new(0, 1),
			BackgroundTransparency = 1,
			Font = Enum.Font.BuilderSansBold,
			Position = UDim2.new(0, 10, 1, -10),
			Size = UDim2.new(0.5, -10, 0, 22),
			Text = `${item.price}`,
			TextColor3 = Color3.fromRGB(31, 30, 35),
			TextSize = 15,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Metadata = e("TextLabel", {
			AnchorPoint = Vector2.new(1, 1),
			BackgroundTransparency = 1,
			Font = Enum.Font.Code,
			Position = UDim2.new(1, -10, 1, -10),
			Size = UDim2.new(0.58, 0, 0, 22),
			Text = `★ {item.rating / 10} · {item.height}px`,
			TextColor3 = Color3.fromRGB(88, 85, 92),
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Right,
		}),
	})
end

local MasonryTile = ViewRecycler.createRecyclableView(MasonryTileView)

local function Component(storyProps): React.Node
	local controls = StoryControls.merge(DEFAULT_VALUES, storyProps.controls)
	local axis = StoryControls.resolveAxis(controls.axis, ViewRecycler)
	local columnCount = StoryControls.positiveInteger(controls.columnCount, DEFAULT_VALUES.columnCount)
	local crossAxisSpacing = StoryControls.nonNegativeNumber(controls.crossAxisSpacing, DEFAULT_VALUES.crossAxisSpacing)
	local itemCount = StoryControls.positiveInteger(controls.itemCount, DEFAULT_VALUES.itemCount)
	local itemWidth = StoryControls.positiveInteger(controls.itemWidth, DEFAULT_VALUES.itemWidth)
	local mainSpacing = StoryControls.nonNegativeNumber(controls.mainSpacing, DEFAULT_VALUES.mainSpacing)
	local overscan = StoryControls.nonNegativeNumber(controls.overscan, DEFAULT_VALUES.overscan)
	local randomSeed = StoryControls.positiveInteger(controls.randomSeed, DEFAULT_VALUES.randomSeed)
	local sizingMode = if controls.sizingMode == SizingMode.FixedColumns
		then SizingMode.FixedColumns
		else SizingMode.ResponsiveItemWidth
	local items = React.useMemo(function()
		return createItems(itemCount, randomSeed)
	end, { itemCount, randomSeed })
	local layout = useManagedLayout(React, function()
		local options = {
			getItemLength = function(index: number)
				return items[index].height
			end,
			spacing = mainSpacing,
			crossAxisSpacing = crossAxisSpacing,
		}
		if sizingMode == SizingMode.FixedColumns then
			options.crossAxisCount = columnCount
		else
			options.crossAxisItemLength = itemWidth
		end
		return ViewRecycler.Layout.masonry(options)
	end, { columnCount, crossAxisSpacing, itemWidth, items, mainSpacing, sizingMode })
	local visibleRange, setVisibleRange = React.useBinding("Visible range: pending")
	local mountedRange, setMountedRange = React.useBinding("Mounted range: pending")
	local onVisibleRangeChanged = React.useCallback(function(range)
		setVisibleRange(formatRange("Visible range", range))
	end, { setVisibleRange })
	local onMountedRangeChanged = React.useCallback(function(range)
		setMountedRange(formatRange("Mounted range", range))
	end, { setMountedRange })
	local modeDescription = if sizingMode == SizingMode.FixedColumns
		then `Fixed columns: {columnCount}`
		else `Responsive item width: {itemWidth}px`

	return e("Frame", {
		BackgroundColor3 = Color3.fromRGB(22, 22, 28),
		Size = UDim2.fromOffset(620, 560),
	}, {
		Mode = e("TextLabel", {
			BackgroundTransparency = 1,
			Font = Enum.Font.BuilderSansBold,
			Position = UDim2.fromOffset(8, 0),
			Size = UDim2.new(1, -16, 0, 24),
			Text = `{modeDescription} · seed {randomSeed} · {itemCount} known-size items`,
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		VisibleRange = e("TextLabel", {
			BackgroundTransparency = 1,
			Font = Enum.Font.Code,
			Position = UDim2.fromOffset(8, 24),
			Size = UDim2.new(0.5, -8, 0, 22),
			Text = visibleRange,
			TextColor3 = Color3.fromRGB(190, 210, 255),
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		MountedRange = e("TextLabel", {
			BackgroundTransparency = 1,
			Font = Enum.Font.Code,
			Position = UDim2.new(0.5, 0, 0, 24),
			Size = UDim2.new(0.5, -8, 0, 22),
			Text = mountedRange,
			TextColor3 = Color3.fromRGB(190, 210, 255),
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Right,
		}),
		ListContainer = e("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(8, 50),
			Size = UDim2.new(1, -16, 1, -58),
		}, {
			List = e(ViewRecycler.VirtualList, {
				axis = axis,
				data = {
					items = items,
					getItemKey = function(item: Item)
						return tostring(item.id)
					end,
				},
				itemType = MasonryTile,
				layout = layout,
				onMountedRangeChanged = onMountedRangeChanged,
				onVisibleRangeChanged = onVisibleRangeChanged,
				overscan = overscan,
			}),
		}),
	})
end

local Story = StoryShell.createStory({
	title = "Masonry — Known Sizes",
	instructions = "Scroll the uneven collection, change the seed and spacing, then compare fixed columns with responsive item width while resizing the viewport. Switch axis to verify the same known-size placement horizontally.",
	itemUpdate = "ReadyOnAssignment — each recycled tile reads its assigned item through SignalsReact.useSignalState; Layout.masonry reads the same item's deterministic known height through getItemLength.",
	acceptanceCriteria = "Items always flow into the shortest column with stable gaps and no overlap; the same seed reproduces the same heights; responsive sizing reflows at width thresholds; visible and mounted ranges update live without driving React rerenders.",
	size = UDim2.fromOffset(660, 700),
}, Component)

return {
	name = "Masonry — Known Sizes",
	summary = "Exercises deterministic known-height masonry in fixed-column and responsive-item-width modes.",
	roact = React,
	story = Story,
	controls = CONTROLS,
}
