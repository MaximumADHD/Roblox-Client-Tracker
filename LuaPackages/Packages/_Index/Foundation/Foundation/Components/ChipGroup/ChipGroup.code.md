---
category: Actions
---

## Overview

`ChipGroup` renders a group of [[Chip]]s with consistent sizing and spacing. Use `variant` to choose between `Row` — a single horizontally scrolling row with edge scrims that spills outside the group bounds — and `Wrap` — chips that flow onto multiple rows and clip to the group bounds.

All chips in a group share the same [[ChipSize]]. Each chip item supports the same accessories and selected state as a standalone [[Chip]] (leading/trailing icons and `isChecked`).

---

## Usage

```luau
local Foundation = require(Packages.Foundation)
local ChipGroup = Foundation.ChipGroup
local ChipSize = Foundation.Enums.ChipSize
local ChipGroupVariant = Foundation.Enums.ChipGroupVariant
local IconName = Foundation.Enums.IconName

return React.createElement(ChipGroup, {
    size = ChipSize.Medium,
    variant = ChipGroupVariant.Wrap,
    chips = {
        {
            text = "Relevance",
            leading = IconName.Robux,
            isChecked = true,
            onActivated = function() end,
        },
        {
            text = "Top rated",
            onActivated = function() end,
        },
        {
            text = "Most popular",
            onActivated = function() end,
        },
    },
})
```
