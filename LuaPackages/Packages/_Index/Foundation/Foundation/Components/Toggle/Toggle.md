---
category: Inputs
---

## Overview

Toggles are controls for turning a boolean value on or off.

## How to Use

A `Toggle` should be used with a standard size defined in [[ToggleSize]] (`Medium`/`Large`). `Large` is the default.

```lua
local Foundation = require(Packages.Foundation)
local Toggle = Foundation.Toggle
local ToggleSize = Foundation.Enums.ToggleSize
...
React.createElement(Toggle, {
	label = "I am a toggle!",
	isDisabled = disabled,
	isChecked = checked,
	onActivated = function()
		print("Toggle switch activated")
	end,
	size = ToggleSize.Medium
})
...
```
