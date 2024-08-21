---
category: Inputs
---

## Overview

`TextInput` is a single line text input with optional label, helper text, and icons.

## How to Use

`TextInput` has a default width of 400px unless `width` is specified. The height is static and will depend on whether a label and helper text are provided.

The `isRequired` property should only be used on the inputs that fall in the minority. For example, if most inputs are required, only put `isRequired = false,` on the optional inputs, and `isRequired` as `nil` for the required inputs.

```lua
local Foundation = require(Packages.Foundation)
local TextInput = Foundation.TextInput
...
local text, setText = React.useState("")
React.createElement(TextInput, {
	text = text,
	placeholder = "Placeholder text",
	isRequired = true,
	label = "Username",
	help = "Must be alphanumeric",
	onChanged = function(txt)
		setText(txt)
	end,
	layoutOrder = 1,
}),
```
