---
category: Display
---

## Overview

Text displays... text! It's used in place of `TextLabel` and `TextButton` engine components.

---

## Usage

In normal cases, you can replace `TextLabel` and `TextButton` with `Text` directly. Note that some properties have been put into tables to improve structure and compatibility with style tokens.

`Text` also supports state updates with the `onStateChanged` callback, which gives updates on hover, press, select, and more. In most cases, a [[Button]] with the `TextButton` variant should be used instead of `Text` for interactive elements.

!!! danger "Performance Notice"

    `onStateChanged` callback function should **never** be declared locally in a render function. For functional components, declare them in a `useCallback` hook and focus on reducing dependencies as much as possible. For class components declare them in the `Init` function.

    To reduce the number of re-renders, use `Bindings` as much as possible when driving prop changes.

See how to style `Text` quickly with the [[Style Tags]].

```luau
local Foundation = require(Packages.Foundation)
local Text = Foundation.Text

local function Component()
	local onStateChanged = React.useCallback(function(state)
		print("Text state changed", state)
	end, {})

	return React.createElement(Text, {
		Text = "Hello world!",
		onStateChanged = onStateChanged,
		tag = "padding-small grow size-2800",
	})
end
```

!!! warning "Line Height and Padding"

    When using `fontStyle.LineHeight` and the Builder Sans font, padding will be set automatically to ensure that line height behaves the same as Figma. If you also set padding, it will override the automatic padding. A longer term engine solution is being looked into.
