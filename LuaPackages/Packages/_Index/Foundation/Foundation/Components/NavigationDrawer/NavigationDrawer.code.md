---
category: Layout
---

## Overview

A NavigationDrawer is a left-edge overlay for app navigation. `header`, `footer`, and `children` are full bleed, so put any padding on the slot content. It sits on the Drawer elevation layer, so a [[Sheet]] or [[Dialog]] opened over it covers it.

!!! warning "Automatic Scrolling Management"

    The body is already wrapped in a [[ScrollView]]. Do not wrap `children` in your own ScrollingFrame.

---

## Usage

```luau
local Foundation = require(Packages.Foundation)
local NavigationDrawer = Foundation.NavigationDrawer
local SwipeBehavior = Foundation.Enums.SwipeBehavior

local isOpen, setIsOpen = React.useState(false)

React.createElement(NavigationDrawer, {
	isOpen = isOpen,
	swipe = SwipeBehavior.OpenAndDismiss,
	onOpen = function()
		setIsOpen(true)
	end,
	onClose = function()
		setIsOpen(false)
	end,
})
```
