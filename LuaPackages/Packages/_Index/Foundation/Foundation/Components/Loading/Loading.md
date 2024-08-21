---
category: Display
---

## Overview

`Loading` is a spinning icon used to indicate that something is loading.

## How to Use

`Loading` has a default [[IconSize]] of `Large`, and accepts all common props. The rotation rate is set to a multiple of the clock time and is not configurable.

```lua
local Foundation = require(Packages.Foundation)
local Loading = Foundation.Loading
local IconSize = Foundation.Enums.IconSize
...
React.createElement(Loading, {
	size = IconSize.Medium,
})
```
