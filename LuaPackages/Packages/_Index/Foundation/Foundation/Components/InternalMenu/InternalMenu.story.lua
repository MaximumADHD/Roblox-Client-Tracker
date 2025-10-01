local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)
local BuilderIcons = require(Packages.BuilderIcons)

local Types = require(Foundation.Components.Types)
type ItemId = Types.ItemId
local InternalMenu = require(Foundation.Components.InternalMenu)
local View = require(Foundation.Components.View)
local InputSize = require(Foundation.Enums.InputSize)

type InputSize = InputSize.InputSize
type MenuItem = InternalMenu.MenuItem
type MenuItemGroup = InternalMenu.MenuItemGroup
type MenuItems = InternalMenu.MenuItems

local exampleIcons = {}
for uibloxIcon, _ in pairs(BuilderIcons.Migration["uiblox"]) do
	table.insert(exampleIcons, uibloxIcon)
end

local function useMultiselect(items: { MenuItem })
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

local BASE_ITEMS: { MenuItem } = {
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

function BaseMenu(props: { items: MenuItems?, size: InputSize?, width: UDim? })
	return React.createElement(InternalMenu, {
		size = props.size,
		items = props.items or BASE_ITEMS,
		width = props.width,
		onActivated = function() end,
	})
end

return {
	summary = "Menu",
	stories = {
		{
			name = "Base",
			story = function(props)
				local selectedItem, setSelectedItem = React.useState("1" :: ItemId)
				local icon = if props.controls.hasIcon then props.controls.icon else nil
				return React.createElement(BaseMenu, {
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

				return React.createElement(InternalMenu, {
					size = props.controls.size,
					items = items,
					onActivated = onActivated,
				})
			end,
		},
		{
			name = "Actions menu",
			story = function(props)
				return React.createElement(InternalMenu, {
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
						return React.createElement(BaseMenu, {
							size = size,
							width = UDim.new(0.25, -24),
						})
					end)
				)
			end,
		},
		{
			name = "Fixed width",
			story = function()
				return React.createElement(BaseMenu, { width = UDim.new(0, 300) })
			end,
		},
		{
			name = "Full width",
			story = function()
				return React.createElement(BaseMenu, { width = UDim.new(1, 0) })
			end,
		},
		{
			name = "Grouped",
			story = function(props)
				return React.createElement(BaseMenu, {
					size = props.controls.size,
					items = {
						{
							title = "First Title",
							items = {
								{ id = "a1", icon = "icons/common/robux", text = "Alpha 1" } :: MenuItem,
								{ id = "a2", text = "Alpha 2" },
							},
						} :: MenuItemGroup,
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
				})
			end,
		},
	},
	controls = {
		size = Dash.values(InputSize),
		icon = Dash.values(exampleIcons),
		hasIcon = true,
	},
}
