---
category: Inputs
---

## Overview

A `Menu` component is a popover-based menu that combines a `Popover` with an `InternalMenu` to provide a contextual menu experience. It displays a list of menu items in a popover that can be anchored to any element.

## Usage

```lua
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

`onActivated` can be provide on the component level as in the example above, or you can provide it in the items themselves.

If you don't control the element, you need a menu for, but have a reference to it, you can use the `anchorRef` property. 
