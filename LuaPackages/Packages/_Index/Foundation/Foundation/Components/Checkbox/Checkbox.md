---
category: Inputs
---

## Overview

Checkboxes are controls for turning a boolean value on or off. The given text is displayed to the right of the checkbox.

## How to Use

Checkboxes will automatically size to fit their text, and have a minimum height of the size of the checkbox itself.
Checkbox size depends on the size property. Possible values are defined in [[CheckboxSize]] (`Small`/`Medium`/`Large`).
`Large` is the default. 

```lua
local Foundation = require(Packages.Foundation)
local Checkbox = Foundation.Checkbox
local CheckboxSize = Foundation.Enums.CheckboxSize
...
React.createElement(Checkbox, {
	label = "Checkbox Option",
	isChecked = false,
	isDisabled = false,
	onActivated = function() return end,
	size = CheckboxSize.Medium
	LayoutOrder = 1,
}),
...
