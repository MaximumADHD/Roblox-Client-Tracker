local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local BaseMenu = require(Foundation.Components.BaseMenu)
local Button = require(Foundation.Components.Button)
local Checkbox = require(Foundation.Components.Checkbox)
local Chip = require(Foundation.Components.Chip)
local Divider = require(Foundation.Components.Divider)
local Interactable = require(Foundation.Components.Interactable)
local View = require(Foundation.Components.View)

local function DynamicComponent()
	return React.createElement(View, {
		LayoutOrder = 14,
		tag = "col gap-medium auto-x",
	}, {
		DynamicChip = React.createElement(Chip, {
			text = "Dynamic Chip (focus me!)",
			onActivated = function()
				print("Dynamic chip clicked!")
			end,
		}),
	})
end

local function UseCursorStory()
	local showDynamic, setShowDynamic = React.useState(false)

	return React.createElement(View, {
		tag = "col gap-medium auto-x",
	}, {
		TestButton1 = React.createElement(Button, {
			LayoutOrder = 2,
			text = "Button Component 1",
			onActivated = function()
				print("Button 1 clicked")
			end,
		}),

		TestButton2 = React.createElement(Button, {
			LayoutOrder = 3,
			text = "Button Component 2",
			onActivated = function()
				print("Button 2 clicked")
			end,
		}),

		Divider1 = React.createElement(Divider, { LayoutOrder = 4 }),

		TestCheckbox1 = React.createElement(Checkbox, {
			LayoutOrder = 5,
			label = "Checkbox Component 1",
			onActivated = function(checked)
				print("Checkbox 1 toggled:", checked)
			end,
		}),

		TestCheckbox2 = React.createElement(Checkbox, {
			LayoutOrder = 6,
			label = "Checkbox Component 2",
			onActivated = function(checked)
				print("Checkbox 2 toggled:", checked)
			end,
		}),

		Divider2 = React.createElement(Divider, { LayoutOrder = 7 }),

		TestMenu = React.createElement(BaseMenu.Root, {
			LayoutOrder = 8,
			items = {
				{
					id = "item1",
					text = "Menu Item 1",
				},
				{
					id = "item2",
					text = "Menu Item 2",
				},
			},
			onActivated = function(id)
				print("Menu item clicked:", id)
			end,
		}),

		Divider3 = React.createElement(Divider, { LayoutOrder = 9 }),

		TestChip1 = React.createElement(Chip, {
			LayoutOrder = 10,
			text = "Static Chip Component 1",
			onActivated = function()
				print("Static Chip 1 clicked")
			end,
		}),

		TestChip2 = React.createElement(Chip, {
			LayoutOrder = 11,
			text = "Static Chip Component 2",
			onActivated = function()
				print("Static Chip 2 clicked")
			end,
		}),

		Divider4 = React.createElement(Divider, { LayoutOrder = 12 }),

		DefaultCursor = React.createElement(Interactable, {
			LayoutOrder = 13,
			cursor = {},
			Size = UDim2.fromOffset(50, 50),
		}),

		Divider5 = React.createElement(Divider, { LayoutOrder = 14 }),

		ToggleButton = React.createElement(Button, {
			LayoutOrder = 15,
			text = showDynamic and "Hide Dynamic Component" or "Show Dynamic Component",
			onActivated = function()
				setShowDynamic(not showDynamic)
				print("Dynamic component toggled:", not showDynamic)
			end,
		}),

		DynamicSection = showDynamic and React.createElement(DynamicComponent, {}) or nil,
	})
end

return {
	summary = "useCursor: static & dynamic components",
	story = React.createElement(UseCursorStory),
}
