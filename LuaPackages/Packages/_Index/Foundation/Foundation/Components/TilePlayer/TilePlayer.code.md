---
category: Display
---

## Overview

TilePlayer shows one player as a tile: a circular avatar with presence, the player's display name, and an optional metadata line. Use it in carousels and grids of players, such as a friends carousel.

---

## Usage

Pass the player's `userId` and display name as `title`. `metadata` adds one secondary line drawn with [[Metadata]], so it takes the same items, such as `@username` or the experience the player is in. Both lines are centered and truncate with an ellipsis.

`userPresence` shows presence on the avatar. Active and Away draw a status indicator that scales with the avatar, and InExperience draws the [[Avatar]] ring. TilePlayer also accepts Avatar's `includeProfileFrame` and `backgroundStyle`.

### Sizing

TilePlayer fills the width of its container by default, up to the Pictogram size. Set `Size` to change its width. The avatar is as wide as the tile, and the height hugs the content, so a TilePlayer lines up with a [[TileIcon]] of the same width.

### Examples

```luau
local Foundation = require(Packages.Foundation)
local TilePlayer = Foundation.TilePlayer
local UserPresence = Foundation.Enums.UserPresence

React.createElement(TilePlayer, {
	userId = 24813339,
	userPresence = UserPresence.Active,
	title = "DisplayName",
	metadata = "@username",
	onActivated = function()
		print("Activated")
	end,
})
```

### Interaction

When `onActivated` is set, the whole tile is pressable, and hovering or pressing it tints the avatar with a state layer, and the selection cursor surrounds the whole tile.
