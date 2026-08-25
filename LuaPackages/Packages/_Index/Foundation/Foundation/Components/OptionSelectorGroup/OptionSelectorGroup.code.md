---
category: Inputs
---

## Overview

An `OptionSelectorGroup` is a way to have a list of options that only allows one choice selected at a time. Any of the individual items may optionally be disabled. This component displays all options as either a vertical or horizontal list. Selecting a new choice deselects the previously selected choice, and you can also select and deselect the same choice by interacting with it again.

---

## Usage

```luau
local Foundation = require(Packages.Foundation)
local OptionSelectorGroup = Foundation.OptionSelectorGroup
local OptionSelectorGroupSize = Foundation.Enums.OptionSelectorGroupSize
local Orientation = Foundation.Enums.Orientation

return React.createElement(OptionSelectorGroup.Root, {
    onValueChanged = function() end,
    orientation = Orientation.Horizontal,
    size = OptionSelectorGroupSize.Medium,
    legend = "Choose an option",
}, {
    React.createElement(OptionSelectorGroup.Item, {
        value = "A",
        label = "Label A",
    }),
    React.createElement(OptionSelectorGroup.Item, {
        value = "B",
        label = "Label B",
    }),
    React.createElement(OptionSelectorGroup.Item, {
        value = "C",
        label = "Label C",
        isDisabled = true,
    }),
})
```

---

## Sizing

Prefer `size` and `fillBehavior` on Root; both cascade to items. Item props are deprecated. `fillBehavior` applies in horizontal groups only.
