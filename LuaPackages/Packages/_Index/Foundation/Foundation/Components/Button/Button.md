---
category: Actions
---

## Overview

`Button` is a stylized interactive, clickable user interface element.

There are 6 basic button types defined in [[ButtonVariant]]

* Emphasis
* SubEmphasis
* Standard
* Subtle
* Alert
* Text
* Link

Text and icon content type can be added any of the buttons

* If icon is nil then it will be a text only button
* If text is nil then it will be a icon only button
* If text and icon are nil it will be a blank button
* Otherwise, it will be a icon and text button

## How to Use

A `Button` should be used with a standard size defined in [[ButtonSize]] (`Medium`/`Small`/`XSmall`).

Each standard size will apply the corresponding font style, padding, border radius and button height.

`Button`s will grow to fit their text until they reach their parents boundaries, in which case they will not exceed that width. Button text does *not* wrap to multiple lines.

```lua
local Foundation = require(Packages.Foundation)
local Button = Foundation.Button
local ButtonVariant = Foundation.Enums.ButtonVariant
local ButtonSize = Foundation.Enums.ButtonSize
...
return React.createElement(Button, {
	icon = "icons/common/robux",
	text = "Purchase Item",
	variant = ButtonVariant.Emphasis,
	onActivated = function()
		print("Button Clicked!")
	end,
	isDisabled = false,
	size = ButtonSize.Small,
})
...
```
