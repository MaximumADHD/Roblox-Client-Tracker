---
category: Display
---

## Overview

`InputLabel` displays label text on components like [[Checkbox]]es and [[RadioGroup]].Items. It can be used in place of `Text` and has default sizing and styling support.

---

## Usage

`InputLabel` supports an optional `RichText` prop. 

`InputLabel` also supports `onActivated` and `onHover` callbacks, which are used alongside an input button like a `RadioGroupItem`. 

```luau
local Foundation = require(Packages.Foundation)
local InputLabel = Foundation.InputLabel
local InputSize = Foundation.Enums.InputSize

return React.createElement(InputLabel, {
    Text = "I'm an <b>InputLabel</b>.",
    RichText = true,
    size = InputSize.Medium,
})
```
