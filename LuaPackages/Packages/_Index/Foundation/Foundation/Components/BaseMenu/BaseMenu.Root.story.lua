local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local IconName = BuilderIcons.Icon
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local ThumbnailType = require(Foundation.Enums.ThumbnailType)
local Types = require(Foundation.Components.Types)
local getRbxThumb = require(Foundation.Utility.getRbxThumb)
type ItemId = Types.ItemId
local BaseMenu = require(Foundation.Components.BaseMenu)
local InputSize = require(Foundation.Enums.InputSize)
local TextInput = require(Foundation.Components.TextInput)
local View = require(Foundation.Components.View)

type InputSize = InputSize.InputSize
type BaseMenuItem = BaseMenu.BaseMenuItem
type BaseMenuItemGroup = BaseMenu.BaseMenuItemGroup
type BaseMenuItems = BaseMenu.BaseMenuItems

local exampleIcons = {}
for uibloxIcon, _ in pairs(BuilderIcons.Migration["uiblox"]) do
	table.insert(exampleIcons, uibloxIcon)
end

local function useMultiselect(items: { BaseMenuItem })
	local state, setState = React.useState(items)
	local onActivated = React.useCallback(function(id: ItemId)
		setState(function(prevState)
			local newValue = table.clone(prevState)
			for _, value in newValue do
				if value.id == id then
					value.isChecked = not value.isChecked
				end
			end
			return newValue
		end)
	end, { setState })

	return state, onActivated
end

local BASE_ITEMS: { BaseMenuItem } = {
	{
		id = "1",
		icon = IconName.Robux,
		text = "Item",
	},
	{
		id = "2",
		icon = IconName.Diamond,
		isChecked = true,
		text = "Item",
	},
	{
		id = "3",
		isDisabled = true,
		text = "Item",
	},
}

local EXPERIENCE_DATA: { { name: string, universeId: number } } = {
	{ name = "[💘] RIVALS", universeId = 6035872082 },
	{ name = "[❤️ Event] Blox Fruits", universeId = 994732206 },
	{ name = "Bee Swarm Simulator", universeId = 601130232 },
	{ name = "Murder Mystery 2", universeId = 66654135 },
	{ name = "[❤️‍🔥] Adopt Me!", universeId = 383310974 },
}

local SCROLL_TO_SELECTION_MAX_HEIGHT = 120
local SCROLL_TO_SELECTION_ITEM_COUNT = 20

-- Scroll from the scrollingFrameRef callback once the menu is measured and
-- clamped to maxHeight (canvas taller than the window). Before that, window
-- equals content height and centering math collapses to the top. Row position
-- is derived from canvasHeight / itemCount rather than AbsolutePosition.
local function useScrollToSelectedRef(items: { BaseMenuItem }, selectedId: ItemId)
	local connections = React.useRef(nil :: { RBXScriptConnection }?)
	local disconnect = React.useCallback(function()
		if connections.current then
			for _, connection in connections.current do
				connection:Disconnect()
			end
			connections.current = nil
		end
	end, {})

	local refCallback = React.useCallback(function(frame: ScrollingFrame?)
		disconnect()
		if not frame then
			return
		end

		local scrollingFrame = frame
		local function scrollToSelected(): boolean
			local count = #items
			local canvasHeight = scrollingFrame.AbsoluteCanvasSize.Y
			local windowHeight = scrollingFrame.AbsoluteWindowSize.Y
			if count == 0 or windowHeight <= 0 or canvasHeight <= windowHeight then
				return false
			end
			local rowHeight = canvasHeight / count
			local targetIndex = 0
			for index, item in items do
				if item.id == selectedId then
					targetIndex = index - 1
					break
				end
			end
			local centeredY = targetIndex * rowHeight - windowHeight / 2 + rowHeight / 2
			scrollingFrame.CanvasPosition = Vector2.new(0, math.clamp(centeredY, 0, canvasHeight - windowHeight))
			return true
		end

		if not scrollToSelected() then
			local function onSizeChanged()
				if scrollToSelected() then
					disconnect()
				end
			end
			connections.current = {
				scrollingFrame:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(onSizeChanged),
				scrollingFrame:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(onSizeChanged),
			}
		end
	end, { items, selectedId, disconnect } :: { unknown })

	React.useEffect(function()
		return disconnect
	end, { disconnect })

	return refCallback
end

local function PlaygroundStory(props: {
	controls: {
		size: InputSize,
		icon: string,
		hasIcon: boolean,
	},
})
	local selectedItem, setSelectedItem = React.useState("1" :: ItemId)
	local icon = if props.controls.hasIcon then props.controls.icon else nil
	return React.createElement(BaseMenu.Root, {
		size = props.controls.size,
		onActivated = function(id)
			setSelectedItem(id)
		end,
		items = {
			{
				id = "1",
				icon = icon,
				isChecked = selectedItem == "1",
				isDisabled = false,
				text = "Item 1",
			},
			{
				id = "2",
				icon = icon,
				isChecked = selectedItem == "2",
				isDisabled = false,
				text = "Item with a longer label",
			},
			{
				id = "3",
				icon = icon,
				isChecked = selectedItem == "3",
				isDisabled = true,
				text = "Item 3",
			},
		},
	})
end

local function MultiSelectStory(props: {
	controls: {
		size: InputSize,
	},
})
	local items, onActivated = useMultiselect({
		{
			id = "1",
			icon = IconName.Robux,
			text = "Item 1",
		},
		{
			id = "2",
			icon = IconName.Robux,
			text = "Item 2",
		},
		{
			id = "3",
			icon = IconName.Robux,
			text = "Item 3",
		},
	})

	return React.createElement(BaseMenu.Root, {
		size = props.controls.size,
		items = items,
		onActivated = onActivated,
	})
end

local function ActionsMenuStory(props: {
	controls: {
		size: InputSize,
	},
})
	return React.createElement(BaseMenu.Root, {
		size = props.controls.size,
		onActivated = function(itemId: ItemId)
			print("Clicked item: " .. tostring(itemId))
		end,
		items = {
			{
				id = "1",
				icon = IconName.Robux,
				text = "Item 1",
			},
			{
				id = "2",
				icon = IconName.Robux,
				text = "Item 2",
			},
			{
				id = "3",
				icon = IconName.Robux,
				text = "Item 3",
			},
		},
	})
end

local function AllSizesStory()
	return React.createElement(
		View,
		{ tag = "row wrap gap-xxlarge size-full-0 auto-y" },
		Dash.map(InputSize, function(size)
			return React.createElement(BaseMenu.Root, {
				size = size,
				items = BASE_ITEMS,
				onActivated = Dash.noop(),
			})
		end)
	)
end

local function FixedWidthStory()
	return React.createElement(
		BaseMenu.Root,
		{ width = UDim.new(0, 300), items = BASE_ITEMS, onActivated = Dash.noop() }
	)
end

local function FullWidthStory()
	return React.createElement(BaseMenu.Root, { width = UDim.new(1, 0), items = BASE_ITEMS, onActivated = Dash.noop() })
end

local function GroupedStory(props: {
	controls: {
		size: InputSize,
	},
})
	return React.createElement(BaseMenu.Root, {
		size = props.controls.size,
		items = {
			{
				title = "First Title",
				items = {
					{ id = "a1", icon = IconName.Robux, text = "Alpha 1" } :: BaseMenuItem,
					{ id = "a2", text = "Alpha 2" },
				},
			} :: BaseMenuItemGroup,
			{
				title = "Second Title",
				items = {
					{ id = "b1", text = "Beta 1" },
					{ id = "b2", isDisabled = true, text = "Beta 2 (disabled)" },
				},
			},
			{
				items = {
					{ id = "c1", text = "Untitled group item" },
				},
			},
		},
		onActivated = Dash.noop(),
	})
end

local function CompositesStory(props: {
	controls: {
		size: InputSize,
	},
})
	return React.createElement(
		BaseMenu.Root,
		{
			size = props.controls.size,
			onActivated = function(id)
				print(`Clicked {id}`)
			end,
		},
		React.createElement(
			BaseMenu.Group,
			{ LayoutOrder = 1, title = "Test title" },
			React.createElement(BaseMenu.Item, { LayoutOrder = 1, id = "a1", text = "Text 1", icon = IconName.Robux }),
			React.createElement(BaseMenu.Item, { LayoutOrder = 2, id = "a2", text = "Text 2" }),
			React.createElement(BaseMenu.Item, { LayoutOrder = 3, id = "a3", text = "Text 3" })
		),
		React.createElement(
			BaseMenu.Group,
			{ LayoutOrder = 2 },
			React.createElement(BaseMenu.Item, { LayoutOrder = 1, id = "b1", text = "Text 11" }),
			React.createElement(BaseMenu.Item, { LayoutOrder = 2, id = "b2", text = "Text 22" }),
			React.createElement(BaseMenu.Item, { LayoutOrder = 3, id = "b3", text = "Text 33" })
		)
	)
end

local function OverflowStory(props: {
	controls: {
		size: InputSize,
	},
})
	local items = {}
	for i = 1, 100 do
		table.insert(items, {
			id = tostring(i),
			icon = IconName.Robux,
			text = "Item " .. tostring(i),
			isChecked = i % 3 == 0,
			isDisabled = i % 7 == 0,
		})
	end
	return React.createElement(BaseMenu.Root, {
		size = props.controls.size,
		items = items,
		maxHeight = 500,
		onActivated = Dash.noop(),
	})
end

local function ScrollToSelectionStory(props: {
	controls: {
		size: InputSize,
	},
}): React.ReactNode
	local selectedId, setSelectedId = React.useState("18" :: ItemId)

	local items = React.useMemo(function()
		local list: { BaseMenuItem } = {}
		for index = 1, SCROLL_TO_SELECTION_ITEM_COUNT do
			local id = tostring(index)
			table.insert(list, {
				id = id,
				text = `Item {index}`,
				isChecked = selectedId == id,
			})
		end
		return list
	end, { selectedId })

	local scrollingFrameRef = useScrollToSelectedRef(items, selectedId)

	return React.createElement(BaseMenu.Root, {
		size = props.controls.size,
		items = items,
		maxHeight = SCROLL_TO_SELECTION_MAX_HEIGHT,
		scrollingFrameRef = scrollingFrameRef,
		onActivated = setSelectedId,
	})
end

local function DynamicallySizingStory()
	local searchContent, setSearchContent = React.useState("")

	return React.createElement(View, { tag = "col gap-large auto-xy" }, {
		Input = React.createElement(TextInput, {
			onChanged = function(text: string)
				setSearchContent(text)
			end,
			label = "Search",
			text = searchContent,
			LayoutOrder = 1,
		}),
		Menu = React.createElement(BaseMenu.Root, {
			width = UDim.new(0, 260),
			items = Dash.map(
				Dash.filter(BuilderIcons.Icon, function(icon)
					return string.find(icon, searchContent, nil, true) ~= nil
				end),
				function(item)
					return { id = item, icon = item, text = item }
				end
			),
			maxHeight = 600,
			LayoutOrder = 2,
		}),
	})
end

local function ExperienceIconsStory(props: {
	controls: {
		size: InputSize,
	},
})
	local selectedItem, setSelectedItem = React.useState(EXPERIENCE_DATA[1].name :: ItemId)

	local items = {}
	for _, experience in EXPERIENCE_DATA do
		table.insert(items, {
			id = experience.name,
			icon = getRbxThumb(ThumbnailType.GameIcon, experience.universeId),
			isChecked = selectedItem == experience.name,
			text = experience.name,
		})
	end

	return React.createElement(BaseMenu.Root, {
		size = props.controls.size,
		onActivated = function(id)
			setSelectedItem(id)
		end,
		items = items,
	})
end

return {
	summary = "BaseMenu",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Multi select",
			story = MultiSelectStory,
		},
		{
			name = "Actions menu",
			story = ActionsMenuStory,
		},
		{
			name = "All Sizes",
			story = AllSizesStory,
		},
		{
			name = "Fixed width",
			story = FixedWidthStory,
		},
		{
			name = "Full width",
			story = FullWidthStory,
		},
		{
			name = "Grouped",
			story = GroupedStory,
		},
		{
			name = "Composites",
			story = CompositesStory,
		},
		{
			name = "Overflow",
			story = OverflowStory,
		},
		{
			name = "Scroll-to-selection",
			summary = "Use scrollingFrameRef to scroll the menu to the selected item.",
			story = ScrollToSelectionStory,
		},
		{
			name = "Dynamically Sizing",
			story = DynamicallySizingStory,
		},
		{
			name = "Experience Icons",
			story = ExperienceIconsStory,
		},
	},
	controls = {
		size = Dash.values(InputSize),
		icon = Dash.values(exampleIcons),
		hasIcon = true,
	},
}
