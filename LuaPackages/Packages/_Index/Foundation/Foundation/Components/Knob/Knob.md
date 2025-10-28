---
category: Display
---

## Overview

`Knob` is a small, circular control element used as the interactive handle in compound inputs.

It is a sub-component that appears inside other controls such as [[Slider]], [[RangeSlider]], and [[Toggle]]. You typically do not use `Knob` directly; instead, it is composed by these higher-level components and inherits their states (size, inverse, disabled) through context and props.

---

## Usage

While `Knob` can be rendered on its own for custom compositions, prefer using the higher-level components that include it.

```luau
local Foundation = require(Packages.Foundation)
local Knob = Foundation.Knob
local InputSize = Foundation.Enums.InputSize

return React.createElement(Knob, {
    size = InputSize.Large,
    hasShadow = false,
})
```
