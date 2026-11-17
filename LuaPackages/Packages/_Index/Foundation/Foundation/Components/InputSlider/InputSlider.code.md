---
category: Inputs
---

## Overview

`InputSlider` is a compact numeric field for dense property panels. Drag the field or its label horizontally to scrub the value, or click it to type an exact number. The field fills in proportion to where the value sits within `range`.

---

## Usage

InputSlider is controlled: it displays `value` and reports every change through `onValueChanged`. Values are always clamped to `range`.

```luau
local Foundation = require(Packages.Foundation)
local InputSlider = Foundation.InputSlider

local function CornerRadiusField()
	local radius, setRadius = React.useState(12)

	return React.createElement(InputSlider, {
		label = "Corner radius",
		suffix = "px",
		value = radius,
		onValueChanged = function(newValue: number)
			setRadius(newValue)
		end,
		range = NumberRange.new(0, 100),
	})
end
```

`onValueChanged` receives an `OnChangeCallbackReason` alongside the value:

- `Drag` for each change while scrubbing.
- `Keyboard` for gamepad steps while captured and typed values committed with Enter.
- `FocusLost` for typed values committed by clicking away.

Pressing Escape, or disabling the field, cancels a typed edit without calling `onValueChanged`, so a value changed elsewhere during the edit is kept. While a gamepad has captured the field, B or Backspace restores the value from before the capture, and A or Enter keeps the adjusted value. Typed text that is not a number reverts without calling `onValueChanged`.

### Scrubbing

A press becomes a scrub once the pointer travels a few pixels; a press released without travel enters typing instead. `onDragStarted` and `onDragEnded` bracket each scrub, which is useful for batching undo history.

`step` sets how much each scrub increment changes the value, and `sensitivity` scales how fast increments occur. With `step` set, scrubbed, stepped, and typed values snap to the grid `range.Min + n * step`, and `range.Max` stays reachable when the grid does not land on it. A typed 12.3 with `step = 1` commits as 12, and a scrub from an off-grid value moves to the next grid line first. Without `step`, increments and gamepad steps add 1 and typed values are only clamped. `step` must be positive: zero or a negative value fails an assert in development and behaves as if `step` were omitted. `sensitivity` defaults to 1, one increment every 4 pixels of pointer travel. Values above 1 scrub faster and values below 1 give finer control, so 2 doubles the speed and 0.5 halves it. It must be positive: zero or a negative value fails an assert in development and falls back to 1. The two are independent, so a field with `step = 5` and `sensitivity = 2` moves 5 units for every 2 pixels.

```luau
React.createElement(InputSlider, {
	label = "Rotation",
	suffix = "°",
	value = rotation,
	onValueChanged = setRotation,
	range = NumberRange.new(0, 360),
	step = 5,
	sensitivity = 2,
})
```

### Keyboard and gamepad

Keyboard users type first: pressing Enter on a selected field starts typing. Gamepad users adjust first: pressing A captures the field, Left/Right adjust it, A commits, and B restores the starting value.
