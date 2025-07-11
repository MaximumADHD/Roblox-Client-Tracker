---
category: Layout
---

## Overview

Dividers are layout components used to control visual separation between visual, or informational categories. The visual styles of the divider communicate different meaning or importance in a layout.

---

## Usage

Dividers will horizontally fill their containers in order to achieve visual separation between other components in a layout. Vertical spacing and margins must be applied externally.
Divider insets and visual style are controlled by the `variant` property. Possible values are defined in [[DividerVariant]] (`Default`/`Heavy`/`Inset`/`InsetLeft`/`InsetRight`)
`Default` is the default.

```lua
local Foundation = require(Packages.Foundation)
local Divider = Foundation.Divider
local DividerVariant = require(Foundation.Enums.DividerVariant)
...
return React.createElement(Divider, {
	variant = DividerVariant.Default,
})
...
```
