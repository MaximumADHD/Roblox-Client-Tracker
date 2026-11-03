local Root = script:FindFirstAncestor("ViewRecyclerReact")
assert(Root ~= nil, "InfiniteScroll story must be mounted under view-recycler-react")
local Packages = Root.Parent

local React = require(Packages.React)
local SignalsReact = require(Packages.SignalsReact)
local StoryControls = require(script.Parent.Harness.StoryControls)
local StoryShell = require(script.Parent.Harness.StoryShell)
local ViewRecycler = require(Root)
local useManagedLayout = require(script.Parent.Harness.useManagedLayout)

local e = React.createElement

local DEFAULT_VALUES = table.freeze({
	initialPageSize = 30,
	maxPages = 5,
	loadDelayMs = 800,
	endReachedThreshold = 120,
	itemLength = 44,
	spacing = 4,
	overscan = 2,
})

local CONTROLS = {
	initialPageSize = StoryControls.options(DEFAULT_VALUES.initialPageSize, { 10, 20, 50, 100 }),
	maxPages = StoryControls.options(DEFAULT_VALUES.maxPages, { 2, 3, 10 }),
	loadDelayMs = DEFAULT_VALUES.loadDelayMs,
	endReachedThreshold = DEFAULT_VALUES.endReachedThreshold,
	itemLength = DEFAULT_VALUES.itemLength,
	spacing = DEFAULT_VALUES.spacing,
	overscan = StoryControls.OverscanOptions,
}

type Item = {
	id: string,
	kind: "item" | "loading",
	text: string,
}

local function ItemView(props)
	local item = SignalsReact.useSignalState(props.itemSignal)
	return e("TextLabel", {
		BackgroundColor3 = Color3.fromRGB(236, 236, 241),
		Font = Enum.Font.BuilderSans,
		Text = item.text,
		TextColor3 = Color3.fromRGB(25, 25, 30),
		TextSize = 18,
		Size = UDim2.fromScale(1, 1),
	})
end

local function LoadingView(props)
	local item = SignalsReact.useSignalState(props.itemSignal)
	return e("TextLabel", {
		BackgroundColor3 = Color3.fromRGB(55, 70, 105),
		Font = Enum.Font.BuilderSansBold,
		Text = `⏳ {item.text}`,
		TextColor3 = Color3.new(1, 1, 1),
		TextSize = 18,
		Size = UDim2.fromScale(1, 1),
	})
end

local ItemRow = ViewRecycler.createRecyclableView(ItemView)
local LoadingRow = ViewRecycler.createRecyclableView(LoadingView)

local function getItemType(item: Item)
	return if item.kind == "loading" then LoadingRow else ItemRow
end

local function createData(initialPageSize: number)
	local initial: { Item } = {}
	for index = 1, initialPageSize do
		initial[index] = { id = `item-{index}`, kind = "item", text = `Result #{index}` }
	end
	return ViewRecycler.DataSource.sequence(initial, function(item: Item)
		return item.id
	end)
end

local function resolveControls(controls)
	controls = StoryControls.merge(DEFAULT_VALUES, controls)
	return {
		initialPageSize = StoryControls.positiveInteger(controls.initialPageSize, DEFAULT_VALUES.initialPageSize),
		maxPages = StoryControls.positiveInteger(controls.maxPages, DEFAULT_VALUES.maxPages),
		loadDelayMs = StoryControls.nonNegativeNumber(controls.loadDelayMs, DEFAULT_VALUES.loadDelayMs),
		endReachedThreshold = StoryControls.nonNegativeNumber(
			controls.endReachedThreshold,
			DEFAULT_VALUES.endReachedThreshold
		),
		itemLength = StoryControls.positiveInteger(controls.itemLength, DEFAULT_VALUES.itemLength),
		spacing = StoryControls.nonNegativeNumber(controls.spacing, DEFAULT_VALUES.spacing),
		overscan = StoryControls.nonNegativeNumber(controls.overscan, DEFAULT_VALUES.overscan),
	}
end

local function Scenario(props)
	local config = props.config
	local data = React.useState(function()
		return createData(config.initialPageSize)
	end)
	local loading, setLoading = React.useState(false)
	local page, setPage = React.useState(1)
	local loadingRef = React.useRef(false)
	local running = React.useRef(true)
	local listRef = React.useRef(nil :: ViewRecycler.VirtualListHandle?)

	React.useEffect(function()
		return function()
			running.current = false
		end
	end, {})

	local loadNextPage = React.useCallback(function()
		if loadingRef.current or page >= config.maxPages then
			return
		end
		loadingRef.current = true
		setLoading(true)
		data.append({ id = `loading-{page}`, kind = "loading", text = `Loading page {page + 1}…` })
		task.delay(config.loadDelayMs / 1000, function()
			if not running.current then
				return
			end
			data.transaction(function()
				data.remove(data.getItemCount())
				local first = page * config.initialPageSize + 1
				for index = first, first + config.initialPageSize - 1 do
					data.append({ id = `item-{index}`, kind = "item", text = `Result #{index}` })
				end
			end)
			setPage(page + 1)
			loadingRef.current = false
			setLoading(false)
		end)
	end, { config.initialPageSize, config.loadDelayMs, config.maxPages, data, loadingRef, page, running })

	return e("Frame", {
		BackgroundColor3 = Color3.fromRGB(22, 22, 28),
		Size = UDim2.fromOffset(420, 560),
	}, {
		Status = e("TextLabel", {
			BackgroundTransparency = 1,
			Font = Enum.Font.BuilderSans,
			Text = `Page: {page}/{config.maxPages}   Items: {data.getItemCount()}   Loading: {tostring(loading)}`,
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = 15,
			Size = UDim2.new(1, 0, 0, 30),
		}),
		Jump = e("TextButton", {
			Position = UDim2.fromOffset(4, 32),
			Size = UDim2.fromOffset(150, 30),
			Text = "Jump to current end",
			[React.Event.Activated] = function()
				local handle = listRef.current
				if handle ~= nil then
					handle.scrollToIndex(data.getItemCount(), { alignment = ViewRecycler.ScrollAlignment.End })
				end
			end,
		}),
		ListContainer = e("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(0, 66),
			Size = UDim2.new(1, 0, 1, -66),
		}, {
			List = e(ViewRecycler.VirtualList, {
				data = data,
				layout = props.layout,
				axis = ViewRecycler.Axis.Y,
				listRef = listRef,
				itemType = getItemType,
				onEndReached = loadNextPage,
				endReachedThreshold = config.endReachedThreshold,
				overscan = config.overscan,
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
		key = `{config.initialPageSize}:{config.maxPages}`,
		layout = layout,
	})
end

local Story = StoryShell.createStory({
	title = "Infinite Scroll",
	instructions = "Jump to the current end or scroll into the end threshold, then wait for each simulated page to append.",
	itemUpdate = "ReadyOnAssignment — loading and content rows are structural item types.",
	acceptanceCriteria = "Only one loading row appears per request, each page adds the selected number of keyed rows once, and pagination stops at the selected limit without duplicate requests.",
	size = UDim2.fromOffset(560, 700),
}, Component)

return {
	name = "Infinite Scroll",
	summary = "Appends paginated results through a recyclable loading row.",
	roact = React,
	story = Story,
	controls = CONTROLS,
}
