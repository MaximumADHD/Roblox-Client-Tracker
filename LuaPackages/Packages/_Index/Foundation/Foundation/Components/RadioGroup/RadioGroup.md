---
category: Inputs
---

## Overview

A `RadioGroup` is a way to have a list of options that only allows one choice checked at a time. Any of these may optionally be disabled. The `RadioGroup` component is composed of a list of [RadioGroup.Item](#item)s.

The `Selectable` prop can be set on the `RadioGroup.Root` to control whether the entire group is selectable, and all `RadioGroup.Item`s will inherit this setting.

---

## Usage

```lua
local Foundation = require(Packages.Foundation)
local RadioGroup = Foundation.RadioGroup

return React.createElement(RadioGroup.Root, {
    onValueChanged = function() end,
    Selectable = true, -- Controls selection for the entire group
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
        isDisabled = true, -- Disabled items are automatically non-selectable
    }),
}),
```

