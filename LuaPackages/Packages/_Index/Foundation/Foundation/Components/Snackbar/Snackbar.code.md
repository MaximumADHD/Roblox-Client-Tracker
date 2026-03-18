---
category: Display
---

## Overview

[[Snackbar]] is an interactive user interface element incorporating multiple components such as:

* Text (Title)
* Icon (Optional)
* Action (Optional)
* Close Affordance (Optional)

If any of the optional fields are not provided then the corresponding components will not display.

---

## Usage

[[Snackbar]] will automatically change its layout and resize accordingly based on the props provided.

The action should be provided as an object conforming to the SnackbarAction type:

```luau
type SnackbarAction = {
	onActivated: () -> nil,
	text: string,
}
```

If the icon is provided as a string, it will be treated as the icon name with default style and variant. You can also provide an `Icon` object:

```luau
type Icon = {
	name: string,
	variant: IconVariant?,
}
```

```luau
local Foundation = require(Packages.Foundation)
local Snackbar = Foundation.Snackbar

return React.createElement(Snackbar, {
	title = "this is a snackbar!",
	icon = "simplified-diamond",
	action = {
		text = "Action",
		onActivated = function()
			print("Action clicked")
		end,
	},
	onClose = function()
		print("Closed")
	end,
})
```
