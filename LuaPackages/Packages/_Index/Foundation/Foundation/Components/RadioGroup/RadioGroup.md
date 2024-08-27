---
category: Inputs
---

## Overview

A `RadioGroup` is a way to have a list of options that only allows one choice checked at a time. Any of these may optionally be disabled. The `RadioGroup` component is composed of a list of [RadioGroup.Item](#item)s.

## How to Use

```lua
local Foundation = require(Packages.Foundation)
local RadioGroup = Foundation.RadioGroup

return React.createElement(RadioGroup.Root, {
    onValueChanged = function() end,
}, {
    React.createElement(RadioGroup.Item, {
        value = "A",
        label = "Label A",
    }),
    React.createElement(RadioGroup.Item, {
        value = "B",
        label = "Label B",
    }),
    React.createElement(RadioGroup.Item, {
        value = "C",
        label = "Label C",
        isDisabled = true,
    }),
}),
```

