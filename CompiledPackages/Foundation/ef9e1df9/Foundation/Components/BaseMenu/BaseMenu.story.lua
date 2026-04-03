local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local ThumbnailType = require(Foundation.Enums.ThumbnailType)
local Types = require(Foundation.Components.Types)
local getRbxThumb = require(Foundation.Utility.getRbxThumb)
type ItemId = Types.ItemId
local BaseMenu = require(Foundation.Components.BaseMenu)
local InputSize = require(Foundation.Enums.InputSize)
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
		setState(function()
			local newValue = table.clone(state)
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
		icon = "icons/common/robux",
		text = "Item",
	},
	{
		id = "2",
		icon = "icons/menu/gem_medium",
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

return {
	summary = "BaseMenu",
	stories = {
		{
			name = "Base",
			story = function(props)
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
							text = "Item 2,000,000,000,000,000,000,000,000",
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
			end,
		} :: unknown,
		{
			name = "Multi select",
			story = function(props)
				local items, onActivated = useMultiselect({
					{
						id = "1",
						icon = "icons/common/robux",
						text = "Item 1",
					},
					{
						id = "2",
						icon = "icons/common/robux",
						text = "Item 2",
					},
					{
						id = "3",
						icon = "icons/common/robux",
						text = "Item 3",
					},
				})

				return React.createElement(BaseMenu.Root, {
					size = props.controls.size,
					items = items,
					onActivated = onActivated,
				})
			end,
		},
		{
			name = "Actions menu",
			story = function(props)
				return React.createElement(BaseMenu.Root, {
					size = props.controls.size,
					onActivated = function(itemId: ItemId)
						print("Clicked item: " .. tostring(itemId))
					end,
					items = {
						{
							id = "1",
							icon = "icons/common/robux",
							text = "Item 1",
						},
						{
							id = "2",
							icon = "icons/common/robux",
							text = "Item 2",
						},
						{
							id = "3",
							icon = "icons/common/robux",
							text = "Item 3",
						},
					},
				})
			end,
		},
		{
			name = "All Sizes",
			story = function()
				return React.createElement(
					View,
					{ tag = "row gap-xxlarge size-full-0 auto-y wrap" },
					Dash.map(InputSize, function(size)
						return React.createElement(BaseMenu.Root, {
							size = size,
							items = BASE_ITEMS,
							onActivated = Dash.noop(),
						})
					end)
				)
			end,
		},
		{
			name = "Fixed width",
			story = function()
				return React.createElement(
					BaseMenu.Root,
					{ width = UDim.new(0, 300), items = BASE_ITEMS, onActivated = Dash.noop() }
				)
			end,
		},
		{
			name = "Full width",
			story = function()
				return React.createElement(
					BaseMenu.Root,
					{ width = UDim.new(1, 0), items = BASE_ITEMS, onActivated = Dash.noop() }
				)
			end,
		},
		{
			name = "Grouped",
			story = function(props)
				return React.createElement(BaseMenu.Root, {
					size = props.controls.size,
					items = {
						{
							title = "First Title",
							items = {
								{ id = "a1", icon = "icons/common/robux", text = "Alpha 1" } :: BaseMenuItem,
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
			end,
		},
		{
			name = "Composites",
			story = function(props)
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
						React.createElement(
							BaseMenu.Item,
							{ LayoutOrder = 1, id = "a1", text = "Text 1", icon = "icons/common/robux" }
						),
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
			end,
		},
		{
			name = "Overflow",
			story = function(props)
				local items = {}
				for i = 1, 100 do
					table.insert(items, {
						id = tostring(i),
						icon = "icons/common/robux",
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
			end,
		},
		{
			name = "Experience Icons",
			story = function(props)
				Flags.FoundationBaseMenuItemImageRadius = props.controls.FoundationBaseMenuItemImageRadius
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
			end,
		},
	},
	controls = {
		size = Dash.values(InputSize),
		icon = Dash.values(exampleIcons),
		hasIcon = true,
		FoundationBaseMenuItemImageRadius = Flags.FoundationBaseMenuItemImageRadius,
	},
}
