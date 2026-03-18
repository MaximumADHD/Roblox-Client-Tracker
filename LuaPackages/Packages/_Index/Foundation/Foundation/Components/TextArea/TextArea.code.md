---
category: Inputs
---

## Overview

`TextArea` is a multi-line text box that has the ability to resize and scroll. It should be used when large bodies of text are expected as an input.

---

## Usage

`TextArea` has a default width of 400px unless `width` is specified. It may expand vertically based on the number of lines to show.

`TextArea` and `TextInput` have very similar behavior. In `TextArea`, you can specify the number of lines to show at once using the `numLines` prop. By default, 3 lines will be rendered.

The `isRequired` property should only be used on the inputs that fall in the minority. For example, if most inputs are required, only put `isRequired = false,` on the optional inputs, and `isRequired` as `nil` for the required inputs.

The `textBoxRef` property exposes additional imperative functions to the [TextBox](https://create.roblox.com/docs/reference/engine/classes/TextBox). Currently this exposes:

- `focus()`, which focuses the textbox
- `releaseFocus()`, which unfocuses the textbox
- `getIsFocused()`, which returns whether the TextBox is currently focused

```luau
local Foundation = require(Packages.Foundation)
local TextArea = Foundation.TextArea

local function Component()
	local text, setText = React.useState("")
	local textBoxRef = React.useRef(nil)
	return React.createElement(TextArea, {
		text = text,
        numLines = 4,
		placeholder = "Enter biography",
		isRequired = true,
		label = "Biography",
		help = "Tell us about you!",
		textBoxRef = textBoxRef,
		onChanged = function(txt)
			setText(txt)
		end,
	})
end
```
