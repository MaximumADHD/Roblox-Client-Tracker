---
category: Display
---

## Overview

`StatusIndicator` is a compact indicator used to display status information with optional numeric values. This component is smaller and more compact than [[Badge]], making it ideal for showing notification counts, statuses, or simple numeric indicators.

There are seven status indicator variants defined in [[StatusIndicatorVariant]]: `Success`, `Alert`, `Warning`, `Emphasis`, `Neutral`, `Standard`, and `Voice`.

The indicator supports three shapes defined in [[StatusIndicatorShape]]: `Circle` (default), `Ring`, and `Square`. The `shape` prop only applies when no `value` is provided — numeric indicators always render as a circle.

The `StatusIndicator` can display in two modes:

- If `value` is not provided, it will show as a dot in the configured shape
- If `value` is provided, it will show the number in a circular pill
- If `value` exceeds the optional `max`, it will show the max value followed by a "+" (e.g., "99+")

!!! warning

    Only the `Standard` and `Emphasis` variants are supported when using a `value`

---

## Usage

`StatusIndicator` takes an optional numeric value and displays it in a compact container. The component automatically converts the number to a string for display.

```luau
local Foundation = require(Packages.Foundation)
local StatusIndicator = Foundation.StatusIndicator
local StatusIndicatorVariant = Foundation.Enums.StatusIndicatorVariant
local StatusIndicatorShape = Foundation.Enums.StatusIndicatorShape

-- Empty indicator (no value shown)
React.createElement(StatusIndicator, {
	variant = StatusIndicatorVariant.Success,
})

-- With a shape
React.createElement(StatusIndicator, {
	shape = StatusIndicatorShape.Ring,
})

-- With a numeric value
React.createElement(StatusIndicator, {
	value = 5,
	variant = StatusIndicatorVariant.Emphasis,
})

-- With a max value (shows "99+" when value exceeds 99)
React.createElement(StatusIndicator, {
	value = 150,
	max = 99,
	variant = StatusIndicatorVariant.Emphasis,
})
```
