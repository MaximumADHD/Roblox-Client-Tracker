---
category: Actions
---

## Overview

`Chip` is a stylized interactive, clickable user interface element.

Text and icon content type can be added any of the сhips

* If icon is nil then it will be a text only сhip
* If text is nil then it will be a icon only сhip
* If text and icon are nil it will be a blank сhip
* Otherwise, it will be an icon and text сhip

---

## Usage

`Chip`s will grow to fit their text until they reach their parents boundaries, in which case they will not exceed that width. Chip text does *not* wrap to multiple lines.

```lua
local Foundation = require(Packages.Foundation)
local Chip = Foundation.Chip
...
return React.createElement(Chip, {
	icon = "icons/common/filter",
	text = "Filter",
	onActivated = function()
		print("Chip Clicked!")
	end,
	isDisabled = false,
})
...
```
