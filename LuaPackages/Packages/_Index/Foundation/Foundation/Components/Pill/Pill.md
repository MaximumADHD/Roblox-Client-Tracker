---
category: Actions
---

## Overview

`Pill` is a stylized interactive, clickable user interface element.

Text and icon content type can be added any of the pills

* If icon is nil then it will be a text only pill
* If text is nil then it will be a icon only pill
* If text and icon are nil it will be a blank pill
* Otherwise, it will be an icon and text pill

## How to Use

`Pill`s will grow to fit their text until they reach their parents boundaries, in which case they will not exceed that width. Pill text does *not* wrap to multiple lines.

```lua
local Foundation = require(Packages.Foundation)
local Pill = Foundation.Pill
...
return React.createElement(Pill, {
	icon = "icons/common/filter",
	text = "Filter",
	onActivated = function()
		print("Pill Clicked!")
	end,
	isDisabled = false,
})
...
```
