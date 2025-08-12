local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Menu = require(Foundation.Components.Menu)
local Button = require(Foundation.Components.Button)
local IconButton = require(Foundation.Components.IconButton)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local IconSize = require(Foundation.Enums.IconSize)
local InputSize = require(Foundation.Enums.InputSize)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)

type MenuItem = Menu.MenuItem
type IconSize = IconSize.IconSize
type InputSize = InputSize.InputSize
type PopoverSide = PopoverSide.PopoverSide
type PopoverAlign = PopoverAlign.PopoverAlign

local SAMPLE_MENU_ITEMS: { MenuItem } = {
	{ id = "new", icon = "icons/actions/edit/add", text = "New" },
	{ id = "edit", icon = "icons/actions/edit/edit", text = "Edit" },
	{ id = "copy", icon = "icons/actions/edit/copy", text = "Copy" },
	{ id = "delete", icon = "icons/actions/edit/delete", text = "Delete", isDisabled = true },
}

local SELECTION_MENU_ITEMS: { MenuItem } = {
	{ id = "r15", text = "R15 Only" },
	{ id = "r6", text = "R6 Only" },
	{ id = "choice", text = "Player Choice" },
}

type Props = {
	controls: {
		size: InputSize,
		side: PopoverSide,
		align: PopoverAlign,
	},
}

return {
	summary = "Menu - A popover-based menu component that combines Popover with InternalMenu",
	stories = {
		{
			name = "Always Open",
			story = function(props: Props)
				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 300),
					tag = "row align-x-center align-y-center",
				}, {
					Menu = React.createElement(Menu, {
						isOpen = true,
						items = SAMPLE_MENU_ITEMS,
						size = props.controls.size,
						side = props.controls.side,
						align = props.controls.align,
						onActivated = function(id)
							print("Always open menu item activated:", id)
						end,
					}, {
						Button = React.createElement(Button, {
							text = "Always Open Menu",
							size = InputSize.Medium,
							onActivated = function()
								print("Button clicked but menu stays open")
							end,
						}),
					}),
				})
			end,
		},
		{
			name = "Basic Menu",
			story = function(props: Props)
				local isOpen, setIsOpen = React.useState(false)

				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 100),
					tag = "row align-x-center align-y-center",
				}, {
					Menu = React.createElement(Menu, {
						isOpen = isOpen,
						items = SAMPLE_MENU_ITEMS,
						size = props.controls.size,
						side = props.controls.side,
						align = props.controls.align,
						onPressedOutside = function()
							setIsOpen(false)
						end,
						onActivated = function(id)
							print("Menu item activated:", id)
							setIsOpen(false)
						end,
					}, {
						Button = React.createElement(Button, {
							text = "Open Menu",
							size = InputSize.Medium,
							onActivated = function()
								setIsOpen(not isOpen)
							end,
						}),
					}),
				})
			end,
		},
		{
			name = "Selection Menu",
			story = function(props: Props)
				local isOpen, setIsOpen = React.useState(false)
				local selectedItemId, setSelectedItemId = React.useState(SELECTION_MENU_ITEMS[1].id)

				local menuItems = React.useMemo(function()
					return Dash.map(SELECTION_MENU_ITEMS, function(item)
						return {
							id = item.id,
							text = item.text,
							isChecked = selectedItemId == item.id,
						}
					end)
				end, { selectedItemId })

				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 300),
					tag = "row align-x-center align-y-center",
				}, {
					Menu = React.createElement(Menu, {
						isOpen = isOpen,
						items = menuItems,
						size = props.controls.size,
						side = props.controls.side,
						align = props.controls.align,
						onPressedOutside = function()
							setIsOpen(false)
						end,
						onActivated = function(id)
							setSelectedItemId(id)
						end,
					}, {
						Button = React.createElement(Button, {
							text = "Selection Menu",
							size = InputSize.Medium,
							onActivated = function()
								setIsOpen(not isOpen)
							end,
						}),
					}),
				})
			end,
		},
		{
			name = "Different Anchors",
			story = function(props: Props)
				local isOpen1, setIsOpen1 = React.useState(false)
				local isOpen2, setIsOpen2 = React.useState(false)

				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 300),
					tag = "row align-x-center align-y-center gap-large",
				}, {
					ButtonMenu = React.createElement(Menu, {
						isOpen = isOpen1,
						items = SAMPLE_MENU_ITEMS,
						size = props.controls.size,
						side = props.controls.side,
						align = props.controls.align,
						onPressedOutside = function()
							setIsOpen1(false)
						end,
						onActivated = function(id)
							print("Button menu item activated:", id)
							setIsOpen1(false)
						end,
					}, {
						IconButton = React.createElement(IconButton, {
							icon = "icons/common/more",
							size = IconSize.Medium,
							onActivated = function()
								setIsOpen1(not isOpen1)
							end,
						}),
					}),
					CardMenu = React.createElement(Menu, {
						isOpen = isOpen2,
						items = SAMPLE_MENU_ITEMS,
						size = props.controls.size,
						side = props.controls.side,
						align = props.controls.align,
						onPressedOutside = function()
							setIsOpen2(false)
						end,
						onActivated = function(id)
							print("Card menu item activated:", id)
							setIsOpen2(false)
						end,
					}, {
						Card = React.createElement(View, {
							tag = "bg-surface-100 padding-large auto-xy radius-medium stroke-neutral col gap-medium",
							onActivated = function()
								setIsOpen2(not isOpen2)
							end,
						}, {
							Title = React.createElement(Text, {
								Text = "Card with Menu",
								tag = "auto-xy text-heading-medium",
							}),
							Subtitle = React.createElement(Text, {
								Text = "Click me to open menu",
								tag = "auto-xy text-body-small",
							}),
						}),
					}),
				})
			end,
		},
		{
			name = "Reference anchor",
			story = function(props: Props)
				local ref = React.useRef(nil)
				local isOpen, setIsOpen = React.useState(false)

				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 300),
					tag = "row align-x-center align-y-center",
				}, {
					Anchor = React.createElement(Button, {
						text = "Anchor outside of the menu component",
						size = InputSize.Medium,
						ref = ref,
						onActivated = function()
							setIsOpen(true)
						end,
					}),
					Menu = React.createElement(Menu, {
						isOpen = isOpen,
						items = SAMPLE_MENU_ITEMS,
						size = props.controls.size,
						side = props.controls.side,
						align = props.controls.align,
						onPressedOutside = function()
							setIsOpen(false)
						end,
						onActivated = function(id)
							print("Always open menu item activated:", id)
						end,
						anchorRef = ref,
					}),
				})
			end,
		},
	},
	controls = {
		size = Dash.values(InputSize),
		side = Dash.values(PopoverSide),
		align = Dash.values(PopoverAlign),
	},
}
