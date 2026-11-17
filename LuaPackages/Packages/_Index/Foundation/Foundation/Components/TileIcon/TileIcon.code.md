---
category: Actions
---

## Overview

TileIcon shows one action as a tile: an icon in a circle, a label below it, and an optional status indicator. Use it for actions that sit beside player or item tiles, such as Add Friends or Share QR code.

---

## Usage

Pass any Builder icon name as `icon`, or `{ name, variant }` to pick a weight such as Filled, and the text under the circle as `label`. `metadata` adds an optional secondary line drawn with [[Metadata]]. Both lines are centered and truncate with an ellipsis.

`indicator` adds a [[StatusIndicator]] at the circle's top right. Pass a `value` for a numeric status indicator, and `max` to cap it (for example `99+`). Omit `value` for a regular status indicator. Both are Emphasis by default. `mask` changes the ring around it, which defaults to `Surface_0`.

### Sizing

TileIcon fills the width of its container by default, up to the Pictogram size. Set `Size` to change its width. The circle is as wide as the tile, the icon is 40% of the circle between 24 and 40, and a numeric status indicator switches to a smaller size once the circle is 48 wide or less. A regular status indicator stays the same size, and a wide numeric one grows inward from the circle's edge. The height hugs the content, so a TileIcon lines up with a [[TilePlayer]] of the same width.

### Examples

```luau
local Foundation = require(Packages.Foundation)
local TileIcon = Foundation.TileIcon

React.createElement(TileIcon, {
	icon = Foundation.Enums.IconName.Diamond,
	label = "Label",
	indicator = { value = 3, max = 99 },
	onActivated = function()
		print("Activated")
	end,
})
```

### Interaction

When `onActivated` is set, the whole tile is pressable, and hovering or pressing it tints the circle with a state layer, and the selection cursor surrounds the whole tile.
