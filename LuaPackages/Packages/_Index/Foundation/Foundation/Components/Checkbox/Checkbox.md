---
category: Inputs
---

## Overview

Checkboxes are controls for turning a boolean value on or off. The given text is displayed to the right of the checkbox.

---

## Usage

Checkboxes will automatically size to fit their text, and have a minimum height of the size of the checkbox itself.
Checkbox size depends on the size property. Possible values are defined in [[InputSize]].
`Medium` is the default. 

```lua
local Foundation = require(Packages.Foundation)
local Checkbox = Foundation.Checkbox
local InputSize = Foundation.Enums.InputSize
...
React.createElement(Checkbox, {
	label = "Checkbox Option",
	isChecked = false,
	isDisabled = false,
	onActivated = function() return end,
	size = InputSize.Medium,
	LayoutOrder = 1,
}),
...
