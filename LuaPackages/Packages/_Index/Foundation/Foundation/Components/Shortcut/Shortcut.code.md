---
category: Display
---

## Overview

`Shortcut` displays a keyboard or gamepad shortcut as a row of key caps. It does not register the binding. Prefer `Shortcut` over the deprecated [[KeyLabel]] component.

Pass the sequence as `shortcut`: keys (`{ keyCode = ... }`) and separators (`{ separator = ... }`) in order. Adjacent keys read as a chord. Use [[ShortcutSeparator]] `Or` (`/`) or `More` (`…`) only when adjacency would be wrong.

There are two variants in [[ShortcutVariant]]: `Standard` (default) and `Contrast`. Sizes are [[InputSize]] `XSmall` (default), `Small`, and `Medium`. An optional `keybinding` label sits beside the caps.

## Usage

Build `shortcut` outside the render function when you can. `Shortcut` is memoized, and a table literal is a new table every render.

```luau
local Foundation = require(Packages.Foundation)
local Shortcut = Foundation.Shortcut
local ShortcutSeparator = Foundation.Enums.ShortcutSeparator

return React.createElement(Shortcut, {
	shortcut = {
		{ keyCode = Enum.KeyCode.W },
		{ separator = ShortcutSeparator.Or },
		{ keyCode = Enum.KeyCode.Up },
	},
	keybinding = "Move forward",
})
```
