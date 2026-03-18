---
category: Layout
---

## Overview

Dividers are layout components used to control visual separation between visual, or informational categories. The visual styles of the divider communicate different meaning or importance in a layout.

---

## Usage

Dividers can be used in both horizontal and vertical orientations to achieve visual separation between components in a layout. The orientation is controlled by the `orientation` property, with possible values defined in [[Orientation]] (`Horizontal`/`Vertical`). `Horizontal` is the default.

### Variants

The divider's visual style and insets are controlled by the `variant` property. Possible values are defined in [[DividerVariant]] (`Default`/`Heavy`/`Inset`/`InsetLeft`/`InsetRight`). `Default` is the default.

Note: When `orientation` is set to `Vertical`, the `variant` property is always `Default` and other variants are not supported.

### Examples

```luau
local Foundation = require(Packages.Foundation)
local Divider = Foundation.Divider
local DividerVariant = require(Foundation.Enums.DividerVariant)
local Orientation = require(Foundation.Enums.Orientation)

-- Horizontal divider with variant
React.createElement(Divider, {
	variant = DividerVariant.Heavy,
	orientation = Orientation.Horizontal,
})

-- Vertical divider (always uses Default variant)
React.createElement(Divider, {
	orientation = Orientation.Vertical,
})
```
