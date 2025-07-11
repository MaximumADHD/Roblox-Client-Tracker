---
category: Inputs
---

## Overview

`InternalTextInput` is a single line input with optional leading and trailing elements

---

## Usage

`InternalTextInput` takes full width of the parent component, the height is static.
You can provide any element as `leadingElement` or `trailingElement`. The input will take the rest space without any paddings by default. 


```lua
local Foundation = require(Packages.Foundation)
local InternalTextInput = Foundation.InternalTextInput
...
local text, setText = React.useState(0)
React.createElement(InternalTextInput, {
	text = text,
	onChanged = function() end,
	placeholder = "Placeholder",
	leadingElement = React.createElement(Icon, { name = "icons/common/search_small", size = IconSize.Small }),
	trailingElement = React.createElement(IconButton, {
		onActivated = buttonPress,
		isDisabled = controls.isDisabled,
		size = IconSize.Small,
		icon = controls.trailingComponentIcon,
	}),
	LayoutOrder = 1,
}),
```
