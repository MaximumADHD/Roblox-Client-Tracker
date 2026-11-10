---
category: Layout
---

## Overview

NavigationBar lets users switch between the primary destinations of an app, particularly on smaller screens. It sits at the bottom of the screen and holds 3 to 5 tabs. Destinations should stay the same across the user's journey.

---

## Usage

Pass the destinations as `items`. Each item has an `id`, a `text` label, and an `icon`, which is either a [[Icon]] name or an avatar (`{ type = "Avatar", userId }`). The active item's icon switches to its filled variant, and an indicator along the top edge slides to the active tab; an active avatar also gets a contrast ring. Set `indicator` on an item to show a dot on its icon (`indicator = {}`) or a count (`indicator = { value = 5 }`). Counts above `max` (99 by default) show as `99+`.

NavigationBar fills the width of its parent and splits it equally between the tabs. On wide screens the tabs stop growing at 600px and center, while the background still fills the width.

```luau
local Foundation = require(Packages.Foundation)
local NavigationBar = Foundation.NavigationBar
local IconName = Foundation.Enums.IconName

React.createElement(NavigationBar, {
	items = {
		{ id = "home", text = "Home", icon = IconName.House },
		{ id = "chat", text = "Chat", icon = IconName.SpeechBubbleAlignCenter, indicator = { value = 5 } },
		{ id = "me", text = "Me", icon = { type = "Avatar", userId = 156 } },
	},
	activeItemId = activeItemId,
	onActivated = setActiveItemId,
})
```

Pass `activeItemId` to control the active item, or `defaultActiveItemId` to let NavigationBar track it; it defaults to the first item. `onActivated` is called with the item's `id` when a tab is activated.

---

## Accessibility

Keep labels short so they fit on one line.
