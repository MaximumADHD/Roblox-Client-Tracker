---
category: Actions
---

## Overview

`Badge` is a stylized, presentational user interface element. This simple component is used to display notification counts on icons or additional info such as "NEW" or "Sale" on tiles.

There are two badge variants defined in [[BadgeVariant]]: `Primary`, `Secondary` and `Alert`.

Text and icon content type can be added any of the badges

* If icon is nil then it will be a text only badge
* If text is nil then it will be a icon only badge
* If text and icon are nil it will be a (small, empty state) blank badge
* Otherwise, it will be an icon and text badge

## How to Use

`Badge`s will grow to fit their text until they reach a maximum width defined by the `Size_800` token. Badge text does *not* wrap to multiple lines.

`Badge` text has `RichText` enabled by default to support custom colorization of the `text` prop.

```lua
local Foundation = require(Packages.Foundation)
local Badge = Foundation.Badge
local BadgeVariant = Foundation.Enums.BadgeVariant
...
return React.createElement(Badge, {
	icon = "icons/menu/clothing/limited_on",
	text = "#100",
	variant = BadgeVariant.Primary,
})
...
```
