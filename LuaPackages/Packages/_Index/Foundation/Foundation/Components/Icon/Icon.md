---
category: Display
---

## Overview

The `Icon` component allows you to render an icon at one of the standard [[IconSize]]s.

To use the new Builder Icons, find the icon from [icons.foundation.roblox.com](https://icons.foundation.roblox.com). You can also access the icons through the Icon enum from the Builder Icons package.

Use the provided [[IconSize]] enum to set the size of the icon. The available sizes are `XSmall` (12pt), `Small` (16pt), `Medium` (20pt), and `Large` (24pt). If you have a very specific reason not to use these sizes, you can also set the size to a custom value by passing a size token like `tokens.Size.Size_1200`.

---

## Usage

```luau
local Foundation = require(Packages.Foundation)
local Icon = Foundation.Icon
local Enums = Foundation.Enums

return React.createElement(Icon, {
    name = Enums.IconName.House,
    size = Enums.IconSize.Medium,
})
```

## Legacy Icons

To browse legacy icons available for use through this component, visit [[Images]]. When possible use the new Builder Icons, as they are true vector graphics.


```luau
local Foundation = require(Packages.Foundation)
local Icon = Foundation.Icon
local IconSize = Foundation.Enums.IconSize

return React.createElement(Icon, {
    name = "icons/common/search_small",
    size = IconSize.Medium,
})
```
