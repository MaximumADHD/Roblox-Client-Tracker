---
category: Display
---

## Overview

`StatusIndicator` is a compact, circular indicator used to display status information with optional numeric values. This component is smaller and more compact than [[Badge]], making it ideal for showing notification counts, statuses, or simple numeric indicators.

There are six status indicator variants defined in [[StatusIndicatorVariant]]: `Success`, `Alert`, `Warning`, `Emphasis`, `Neutral`, and `Standard`.

The `StatusIndicator` can display in two states:

* If `value` is not provided, it will show as an empty indicator (no text)
* If `value` is provided, it will show the number

!!! warning

    Only the `Standard` and `Emphasis` variants are supported when using a `value`

---

## Usage

`StatusIndicator` takes an optional numeric value and displays it in a compact circular container. The component automatically converts the number to a string for display.

```lua
local Foundation = require(Packages.Foundation)
local StatusIndicator = Foundation.StatusIndicator
local StatusIndicatorVariant = Foundation.Enums.StatusIndicatorVariant
...
-- Empty indicator (no value shown)
return React.createElement(StatusIndicator, {
	variant = StatusIndicatorVariant.Success,
})

-- With a numeric value
return React.createElement(StatusIndicator, {
	value = 5,
	variant = StatusIndicatorVariant.Emphasis,
})
...
```
