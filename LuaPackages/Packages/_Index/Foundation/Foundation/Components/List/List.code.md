---
category: Inputs
---

## Overview

`List` can be used to display information or inputs in structured rows. The component is flexible by providing space for an icon, avatar, or graphical media in the `leading` prop and any component in the `trailing` slot.

`onActivated` makes a row tappable and runs on activation. A tappable row defaults to a trailing chevron, but the accessory is chosen independently through the `input` prop (`Chevron`, `Checkbox`, `Toggle`, `Radio`, or `None`), so a row can be activatable without rendering a chevron — for example a navigation row that opens another page. Any other trailing content, such as a check indicator, can be placed in the `trailing` slot.

```luau
-- Navigation row: tappable, no trailing accessory
React.createElement(List.Item, {
	title = "Open Build chat",
	onActivated = openBuildChat,
	input = Foundation.Enums.ListItemInputType.None,
})

-- Explicit chevron
React.createElement(List.Item, {
	title = "Settings",
	onActivated = openSettings,
	input = Foundation.Enums.ListItemInputType.Chevron,
})

-- Trailing input with its own change handler
React.createElement(List.Item, {
	title = "Notifications",
	input = {
		type = Foundation.Enums.ListItemInputType.Checkbox,
		isChecked = isChecked,
		onActivated = function(checked) setIsChecked(checked) end,
	},
})
```

`onSecondaryActivated` runs on a right click, a touch long press, or the gamepad and keyboard secondary shortcuts, and does not change the trailing accessory. Open a [[Menu]] from that callback and anchor it at the pointer with `useMeasurableRef` (a virtual popover anchor).

```luau
-- Row with a context menu at the click point
local isMenuOpen, setIsMenuOpen = React.useState(false)
local clickPosition, setClickPosition = React.useState(Vector2.zero)
local clickAnchorRef = Foundation.Hooks.useMeasurableRef(clickPosition, Vector2.one)

React.createElement(React.Fragment, nil, {
	List = React.createElement(List.Root, nil, {
		Item = React.createElement(List.Item, {
			title = "My game",
			onActivated = openGame,
			onSecondaryActivated = function(_self, inputObject)
				setClickPosition(Vector2.new(inputObject.Position.X, inputObject.Position.Y))
				setIsMenuOpen(true)
			end,
		}),
	}),
	ContextMenu = React.createElement(Menu, {
		isOpen = isMenuOpen,
		anchorRef = clickAnchorRef,
		items = {
			{ id = "option1", text = "Option 1" },
			{ id = "option2", text = "Option 2" },
			{ id = "option3", text = "Option 3" },
		},
		onPressedOutside = function()
			setIsMenuOpen(false)
		end,
		onActivated = function()
			setIsMenuOpen(false)
		end,
	}),
})
```

---

## Usage

```luau
local Foundation = require(Packages.Foundation)
local BuilderIcons = require(Packages.BuilderIcons)

local InputSize = Foundation.Enums.InputSize
local List = Foundation.List

return React.createElement(List.Root, {
	size = InputSize.Medium,
}, {
	Item1 = React.createElement(List.Item, {
		title = "Item Title",
		description = "Item description",
		leading = BuilderIcons.Icon.Robux,
	}),
	Item2 = React.createElement(List.Item, {
		title = "Another Item",
		description = "More detail",
		LayoutOrder = 2,
	}),
})
```
