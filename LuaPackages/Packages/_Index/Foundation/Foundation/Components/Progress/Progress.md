---
category: Display
---

## Overview

Progress components provide visual feedback about the completion status of tasks or processes. They support both determinate (with a specific value) and indeterminate (loading) states, and are available in two shapes: `Bar` and `Circle`.

The `Bar` shape only officially supports only one size, `Medium`, as well as an additional `width` property.

!!! info "Progress vs. Loading"

    [[Loading]] is the more expressive version of `Progress`. Use when appropriate.

---

## Usage

### Determinate

```luau
local Foundation = require(Packages.Foundation)
local Progress = Foundation.Progress
local ProgressShape = Foundation.ProgressShape
local ProgressSize = Foundation.ProgressSize

-- Determinate Progress Bar
React.createElement(Progress, {
    value = 65,
    shape = ProgressShape.Bar,
    size = ProgressSize.Medium,
})

-- Determinate Circular Progress
React.createElement(Progress, {
    value = 75,
    shape = ProgressShape.Circle,
    size = ProgressSize.Large,
})
```

### Indeterminate

```luau
-- Indeterminate Progress Bar (loading state)
React.createElement(Progress, {
    shape = ProgressShape.Bar,
    size = ProgressSize.Medium,
})

-- Indeterminate Circular Progress (loading state)
React.createElement(Progress, {
    shape = ProgressShape.Circle,
    size = ProgressSize.Large,
})
```

### Progress Label

```luau
-- Progress Circle with progress label shown
return React.createElement(Progress, {
    value = 75,
    shape = ProgressShape.Circle,
    size = ProgressSize.Large,
})
```
