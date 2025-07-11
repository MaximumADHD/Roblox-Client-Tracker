---
category: Inputs
---

## Overview

`TextInput` is a single line text input with optional label, helper text, and icons.

---

## Usage

`TextInput` has a default width of 400px unless `width` is specified. The height is static and will depend on whether a label and helper text are provided.

The `isRequired` property should only be used on the inputs that fall in the minority. For example, if most inputs are required, only put `isRequired = false,` on the optional inputs, and `isRequired` as `nil` for the required inputs.

The `textBoxRef` property exposes additional imperative functions to the TextBox. Currently this exposes: <br>`focus()`, which
focuses the textbox.
<br>`releaseFocus()`, which unfocuses the textbox.
<br>`getIsFocused()`, which returns whether the TextBox is currently focused.

```lua
local Foundation = require(Packages.Foundation)
local TextInput = Foundation.TextInput
...
local text, setText = React.useState("")
local textBoxRef = React.useRef(nil)
React.createElement(TextInput, {
	text = text,
	placeholder = "Placeholder text",
	isRequired = true,
	label = "Username",
	help = "Must be alphanumeric",
	textBoxRef = textBoxRef,
	onChanged = function(txt)
		setText(txt)
	end,
	LayoutOrder = 1,
}),
```
