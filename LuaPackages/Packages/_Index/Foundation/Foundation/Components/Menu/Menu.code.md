---
category: Inputs
---

## Overview

A `Menu` component is a popover-based menu that combines a `Popover` with an `InternalMenu` to provide a contextual menu experience. It displays a list of menu items in a popover that can be anchored to any element.

## Usage

### Simple Menu

```luau
local Foundation = require(Packages.Foundation)
local Menu = Foundation.Menu
local Button = Foundation.Button
local InputSize = Foundation.Enums.InputSize

local menuItems = {
	{ id = "new", icon = "icons/common/add_small", text = "New" },
	{ id = "edit", icon = "icons/common/edit", text = "Edit" },
	{ id = "delete", icon = "icons/common/delete", text = "Delete", isDisabled = true },
}

local open, setOpen = React.useState(false)

return React.createElement(Menu, {
	isOpen = open,
	items = menuItems,
	size = InputSize.Medium,
	onPressedOutside = function()
		setOpen(false)
	end,
	onActivated = function(id)
		print("Menu item activated:", id)
		setOpen(false)
	end,
}, {
	Button = React.createElement(Button, {
		text = "Open Menu",
		onActivated = function()
			setOpen(not open)
		end,
	}),
})
```

`onActivated` can be provided on the component level as in the example above, or you can provide it in the items themselves.

If you don't control the element you need a menu for, but have a reference to it, you can use the `anchorRef` property.

### Menu with Groups

Menus can have groups with dividers between them. Pass an array of group objects to the `items` property.
Each group can have an optional `title` and a required `items` array.

```luau
local menuItems = {
	{
		title = "Actions",
		items = {
			{ id = "rename", icon = "pencil-square", text = "Rename" },
			{ id = "copy", icon = "icons/actions/edit/copy", text = "Copy" },
		},
	},
	{
		items = {
			{ id = "sort-asc", icon = "arrow-small-up", text = "Sort ascending" },
			{ id = "sort-desc", icon = "arrow-small-down", text = "Sort descending" },
		},
	},
	{
		items = {
			{ id = "delete", icon = "trash-can", text = "Delete" },
		},
	},
}

local open, setOpen = React.useState(false)

return React.createElement(Menu, {
	isOpen = open,
	items = menuItems,
	onPressedOutside = function()
		setOpen(false)
	end,
	onActivated = function(id)
		print("Menu item activated:", id)
		setOpen(false)
	end,
}, {
	Button = React.createElement(Button, {
		text = "Open Menu",
		onActivated = function()
			setOpen(not open)
		end,
	}),
})
```

### Menu with Submenus

Any menu item can open a nested submenu by providing an `items` field. Submenus open to the right
when the trigger item is clicked. Nesting can be arbitrarily deep.

When a leaf item is activated, all ancestor submenus close automatically along with the root menu.

```luau
local menuItems = {
	{
		id = "rename",
		icon = "pencil-square",
		text = "Rename",
	},
	{
		id = "insert",
		icon = "plus-large",
		text = "Insert",
		items = {
			{
				id = "insert-row",
				icon = "plus-small",
				text = "Row",
				items = {
					{ id = "insert-row-above", icon = "arrow-large-up", text = "Above" },
					{ id = "insert-row-below", icon = "arrow-large-down", text = "Below" },
				},
			},
			{
				id = "insert-col",
				icon = "plus-small",
				text = "Column",
				items = {
					{ id = "insert-col-left", icon = "arrow-large-left", text = "Left" },
					{ id = "insert-col-right", icon = "arrow-large-right", text = "Right" },
				},
			},
		},
	},
	{
		id = "delete",
		icon = "trash-can",
		text = "Delete",
	},
}

local open, setOpen = React.useState(false)

return React.createElement(Menu, {
	isOpen = open,
	items = menuItems,
	onPressedOutside = function()
		setOpen(false)
	end,
	onActivated = function(id)
		print("Menu item activated:", id)
		setOpen(false)
	end,
}, {
	Button = React.createElement(Button, {
		text = "Open Menu",
		onActivated = function()
			setOpen(not open)
		end,
	}),
})
```
