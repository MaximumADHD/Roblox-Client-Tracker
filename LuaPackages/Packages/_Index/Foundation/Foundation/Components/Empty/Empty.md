---
category: Display
---

## Overview

The `Empty` component can be used to display error states, or to fill a page when there is no relevant content.

---

## Usage

The text, icon, and button contents are all overridable but have sensible defaults for easy usage.

```lua
...
local Foundation = require(Packages.Foundation)
local Empty = Foundation.Empty
...
return React.createElement(Empty, {
    icon = "icons/common/search",
})
```
