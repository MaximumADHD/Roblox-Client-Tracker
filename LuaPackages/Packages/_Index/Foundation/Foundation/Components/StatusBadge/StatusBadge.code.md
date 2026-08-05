---
category: Display
---

## Overview

`StatusBadge` is a non-interactive label for repeated, color-coded states such as completed, warning, error, or pending.

There are five variants defined in [[StatusBadgeVariant]]: `Standard`, `Emphasis`, `Success`, `Warning`, and `Alert`.

There are two shapes defined in [[StatusBadgeShape]]: `Utility` (default) and `Box`.

There are two sizes defined in [[StatusBadgeSize]]: `Small` (default) and `XSmall`.

## Usage

`StatusBadge` labels remain on one line and truncate when they exceed the maximum content width.

```luau
local Foundation = require(Packages.Foundation)
local StatusBadge = Foundation.StatusBadge
local StatusBadgeShape = Foundation.Enums.StatusBadgeShape
local StatusBadgeSize = Foundation.Enums.StatusBadgeSize
local StatusBadgeVariant = Foundation.Enums.StatusBadgeVariant

return React.createElement(StatusBadge, {
	text = "Completed",
	variant = StatusBadgeVariant.Success,
	shape = StatusBadgeShape.Box,
	size = StatusBadgeSize.Small,
})
```
