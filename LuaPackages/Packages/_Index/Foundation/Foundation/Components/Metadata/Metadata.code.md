---
category: Display
---

## Overview

Metadata provides concise, high-signal contextual information. It helps users quickly understand classification, status, appropriateness, or other decision-relevant descriptors. Metadata is not interactive.

---

## Usage

Pass a single item to `text`, or an array of items to render a list separated by `·`. Keep lists to 2–3 items.

An item is either a string or a `{ text, leading }` table. `leading` renders before that item's text — either an icon name, an icon config (`{ iconName, iconVariant }`), or an avatar (`{ type = AccessoryType.Avatar, userId }`). An optional `trailing` icon renders after the text; in a list it follows the last item only. Set `hasSeparator = false` to space items apart instead of separating them with `·`.

```luau
local Foundation = require(Packages.Foundation)
local Metadata = Foundation.Metadata
local IconName = Foundation.Enums.IconName
local AccessoryType = Foundation.Enums.AccessoryType

React.createElement(Metadata, {
	text = "Metadata",
})

React.createElement(Metadata, {
	text = { "Metadata", "Metadata", "Metadata" },
})

React.createElement(Metadata, {
	text = { text = "Metadata", leading = IconName.Diamond },
	trailing = IconName.Diamond,
})

React.createElement(Metadata, {
	text = { text = "Builderman", leading = { type = AccessoryType.Avatar, userId = 156 } },
})

React.createElement(Metadata, {
	text = {
		{ text = "Metadata", leading = IconName.Diamond },
		{ text = "Metadata", leading = IconName.Diamond },
	},
	hasSeparator = false,
})
```

A list that mixes plain strings and item tables needs a type annotation, because the type checker infers an unannotated list's type from its first entry:

```luau
local items: { Foundation.MetadataItem } = {
	"Metadata",
	{ text = "Metadata", leading = IconName.Diamond },
}

React.createElement(Metadata, {
	text = items,
	hasSeparator = false,
})
```

### Size

`size` sets the text style: `MetadataSize.Medium` (body medium, the default) or `MetadataSize.Small` (body small). Use `Small` next to smaller headings, such as a title-small heading. Icons, avatars, and spacing are the same in both sizes.

```luau
React.createElement(Metadata, {
	text = "Metadata",
	size = Foundation.Enums.MetadataSize.Small,
})
```

### Truncation

Metadata hugs its content, and truncates with an ellipsis when its parent is narrower than the content. In a row next to other elements, wrap it in a `View` tagged `shrink auto-xy` so it gives up space to its siblings instead of pushing them out. For a list, set `truncateIndex` to choose which item truncates; it defaults to the last item. Point it at the least important item so key metadata stays visible.

```luau
React.createElement(Metadata, {
	text = { "4.5K Playing", "Adventure and Exploration Experiences", "Ages 9+" },
	truncateIndex = 2,
})
```

### Wrapping

A single `text` stays on one line by default. Set `maxLines` to let it wrap onto more lines before it truncates. Lists always stay on one line.

```luau
React.createElement(Metadata, {
	text = "Adventure and Exploration Experiences for the whole family to enjoy together",
	maxLines = 2,
})
```

### Glyphs

Metadata always renders a slashed zero and a tailed lowercase l, so characters like `0`/`O` and `l`/`I`/`1` are easy to tell apart in usernames, counts, and prices.

---

## Accessibility

Metadata text uses the default content color, which meets the WCAG AA 4.5:1 contrast ratio. Place Metadata after the primary label it describes. Accessory icons are decorative.
