---
category: Actions
---

## Overview

The `IconButton` component allows you to render an interactive icon at one of the standard [[InputSize]]s.

To browse icons available for use through this component, visit [[Images]].

---

## Usage

```luau
local Foundation = require(Packages.Foundation)
local IconButton = Foundation.IconButton

local InputSize = require(Foundation.Enums.InputSize)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)

return React.createElement(IconButton, {
  size = InputSize.Medium,
  icon = "icons/common/search_small",
  variant = ButtonVariant.Standard,
})
```
