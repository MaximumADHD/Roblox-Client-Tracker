---
category: Inputs
---

## Overview

A `CheckboxGroup` lays out related [[Checkbox]] children under an optional shared legend. It provides `size` and `placement` to its children; each checkbox may override those props.

Checkboxes remain independently controlled, so any number of items may be checked at once.

---

## Usage

```luau
local Foundation = require(Packages.Foundation)
local Checkbox = Foundation.Checkbox
local CheckboxGroup = Foundation.CheckboxGroup
local InputPlacement = Foundation.Enums.InputPlacement
local InputSize = Foundation.Enums.InputSize

return React.createElement(CheckboxGroup, {
	legend = "Notification preferences",
	size = InputSize.Medium,
	placement = InputPlacement.Start,
}, {
	Email = React.createElement(Checkbox, {
		label = "Email notifications",
		isChecked = true,
		onActivated = function() end,
		LayoutOrder = 1,
	}),
	SMS = React.createElement(Checkbox, {
		label = "SMS notifications",
		isChecked = false,
		onActivated = function() end,
		-- Explicit item props override the group's values.
		size = InputSize.Large,
		placement = InputPlacement.End,
		isDisabled = true,
		LayoutOrder = 2,
	}),
})
```
