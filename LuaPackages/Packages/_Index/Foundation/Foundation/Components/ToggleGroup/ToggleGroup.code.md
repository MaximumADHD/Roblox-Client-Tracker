---
category: Inputs
---

## Overview

A `ToggleGroup` lays out related [[Toggle]] children under an optional shared legend. It provides `size` and `placement` to its children; each toggle may override those props.

Toggles remain independently controlled, so any number of items may be enabled at once.

---

## Usage

```luau
local Foundation = require(Packages.Foundation)
local InputPlacement = Foundation.Enums.InputPlacement
local InputSize = Foundation.Enums.InputSize
local Toggle = Foundation.Toggle
local ToggleGroup = Foundation.ToggleGroup

return React.createElement(ToggleGroup, {
	legend = "Settings",
	size = InputSize.Medium,
	placement = InputPlacement.Start,
}, {
	Notifications = React.createElement(Toggle, {
		label = "Notifications",
		isChecked = true,
		onActivated = function() end,
		LayoutOrder = 1,
	}),
	Sounds = React.createElement(Toggle, {
		label = "Sounds",
		isChecked = false,
		onActivated = function() end,
		-- Explicit item props override the group's values.
		size = InputSize.Large,
		placement = InputPlacement.End,
		isDisabled = false,
		LayoutOrder = 2,
	}),
})
```
