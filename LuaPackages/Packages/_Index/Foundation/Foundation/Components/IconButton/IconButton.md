---
category: Actions
---

## Overview

The `IconButton` component allows you to render an interactive icon at one of the standard [[IconSize]]s.

To browse icons available for use through this component, visit [[Images]].

## How to Use

```lua
...
local Foundation = require(Packages.Foundation)
local IconButton = Foundation.IconButton
local IconSize = Foundation.Enums.IconSize
...
return React.createElement(IconButton, {
  size = IconSize.Medium,
  icon = "icons/common/search_small",
})
```
