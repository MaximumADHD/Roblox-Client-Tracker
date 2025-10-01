---
category: Inputs
---

## Overview

Toggles are controls for turning a boolean value on or off.

---

## Usage

A `Toggle` should be used with a standard size defined in [[InputSize]]. `Medium` is the default.

```luau
local Foundation = require(Packages.Foundation)
local Toggle = Foundation.Toggle
local InputSize = Foundation.Enums.InputSize

React.createElement(Toggle, {
	label = "I am a toggle!",
	isDisabled = disabled,
	isChecked = checked,
	onActivated = function()
		print("Toggle switch activated")
	end,
	size = InputSize.Medium
})
```
