---
category: Inputs
---

## Overview

`List` can be used to display information or inputs in structured rows. The component is flexible by providing space for an icon, avatar, or graphical media in the `leading` prop and any component in the `trailing` slot.

---

## Usage

```luau
local Foundation = require(Packages.Foundation)
local BuilderIcons = require(Packages.BuilderIcons)

local InputSize = Foundation.Enums.InputSize
local List = Foundation.List

return React.createElement(List.Root, {
	size = InputSize.Medium,
}, {
	Item1 = React.createElement(List.Item, {
		title = "Item Title",
		description = "Item description",
		leading = BuilderIcons.Icon.Robux,
	}),
	Item2 = React.createElement(List.Item, {
		title = "Another Item",
		description = "More detail",
		LayoutOrder = 2,
	}),
})
```
