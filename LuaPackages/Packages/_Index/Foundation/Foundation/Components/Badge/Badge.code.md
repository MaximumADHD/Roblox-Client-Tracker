---
category: Actions
---

## Overview

`Badge` is a stylized, presentational user interface element. This simple component is used to display notification counts on icons or additional info such as "NEW" or "Sale" on tiles.

There are seven badge variants defined in [[BadgeVariant]]: `Neutral`, `Contrast`, `Alert`, `Warning`, `Success`, `OverMedia`, and `Emphasis`.

There are two badge shapes defined in [[BadgeShape]]: `Pill` (default) and `Box`.

There are two badge sizes defined in [[BadgeSize]]: `XSmall` (default) and `Small`.

Text and icon content type can be added to any of the badges:

- If icon is nil then it will be a text-only badge
- If text is nil then it will be an icon-only badge
- If text and icon are nil it will be a (small, empty state) blank badge
- Otherwise, it will be an icon and text badge

Icons can be passed as a string (icon name) or as a table with `name`, `variant`, and `position` fields. The `position` field accepts [[IconPosition]] values (`Left` or `Right`) to control icon placement relative to text.

---

## Usage

`Badge`s will grow to fit their text. Badge text does _not_ wrap to multiple lines.

`Badge` text has `RichText` enabled by default to support custom colorization of the `text` prop.

```luau
local Foundation = require(Packages.Foundation)
local Badge = Foundation.Badge
local BadgeVariant = Foundation.Enums.BadgeVariant
local BadgeShape = Foundation.Enums.BadgeShape
local BadgeSize = Foundation.Enums.BadgeSize
local IconPosition = Foundation.Enums.IconPosition
local IconName = Foundation.Enums.IconName

return React.createElement(Badge, {
	icon = {
		name = IconName.CirclePlus,
		position = IconPosition.Right,
	},
	text = "#100",
	variant = BadgeVariant.Neutral,
	shape = BadgeShape.Pill,
	size = BadgeSize.XSmall,
})
```
