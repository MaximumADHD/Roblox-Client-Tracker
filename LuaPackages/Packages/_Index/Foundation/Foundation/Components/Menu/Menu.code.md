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
	{ id = "new", leading = "icons/common/add_small", text = "New" },
	{ id = "edit", leading = "icons/common/edit", text = "Edit" },
	{ id = "delete", leading = "icons/common/delete", text = "Delete", isDisabled = true },
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
			{ id = "rename", leading = "pencil-square", text = "Rename" },
			{ id = "copy", leading = "icons/actions/edit/copy", text = "Copy" },
		},
	},
	{
		items = {
			{ id = "sort-asc", leading = "arrow-small-up", text = "Sort ascending" },
			{ id = "sort-desc", leading = "arrow-small-down", text = "Sort descending" },
		},
	},
	{
		items = {
			{ id = "delete", leading = "trash-can", text = "Delete" },
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

The `maxHeight` property is inherited by submenus: when set, any submenu whose content exceeds
`maxHeight` becomes scrollable, just like the root menu.

```luau
local menuItems = {
	{
		id = "rename",
		leading = "pencil-square",
		text = "Rename",
	},
	{
		id = "insert",
		leading = "plus-large",
		text = "Insert",
		items = {
			{
				id = "insert-row",
				leading = "plus-small",
				text = "Row",
				items = {
					{ id = "insert-row-above", leading = "arrow-large-up", text = "Above" },
					{ id = "insert-row-below", leading = "arrow-large-down", text = "Below" },
				},
			},
			{
				id = "insert-col",
				leading = "plus-small",
				text = "Column",
				items = {
					{ id = "insert-col-left", leading = "arrow-large-left", text = "Left" },
					{ id = "insert-col-right", leading = "arrow-large-right", text = "Right" },
				},
			},
		},
	},
	{
		id = "delete",
		leading = "trash-can",
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

### Leading and trailing accessories

Each item can render an accessory at the start (`leading`) and end (`trailing`) of the row.

`leading` accepts either an icon name as a plain string, or a structured config:

- `{ iconName = "...", iconVariant = ... }` — an icon (equivalent to passing the name directly)
- `{ type = "Avatar", userId = ... }` — a user avatar

`trailing` accepts a hint (e.g. a keyboard shortcut) or a [[Badge]]:

- `{ type = "Hint", text = "..." }`
- `{ type = "Badge", text = "...", variant = ... }`

When at least one item has a leading accessory, all sibling items align their title to the same column.

```luau
local BadgeVariant = Foundation.Enums.BadgeVariant

local menuItems = {
	{
		id = "bold",
		leading = "icons/actions/edit/bold",
		text = "Bold",
		trailing = { type = "Hint", text = "⌘B" },
	},
	{
		id = "smart-compose",
		leading = "wand",
		text = "Smart compose",
		trailing = { type = "Badge", text = "New", variant = BadgeVariant.Success },
	},
	{
		id = "switch-user",
		leading = { type = "Avatar", userId = 24813339 },
		text = "Switch user",
	},
}
```

### Selection

Mark an item as selected by setting `isChecked = true`. A check icon appears in a dedicated column
at the start of the row. As soon as any item in the menu is checked, every other item shifts right
so that titles stay aligned with the checked rows.

```luau
local sortBy, setSortBy = React.useState("name")

local menuItems = {
	{
		title = "Sort by",
		items = {
			{ id = "name", text = "Name", isChecked = sortBy == "name" },
			{ id = "date", text = "Date modified", isChecked = sortBy == "date" },
			{ id = "size", text = "Size", isChecked = sortBy == "size" },
		},
	},
}

return React.createElement(Menu, {
	isOpen = open,
	items = menuItems,
	onPressedOutside = function()
		setOpen(false)
	end,
	onActivated = function(id)
		setSortBy(id)
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
