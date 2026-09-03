---
category: Layout
---

## Overview

A `Popover` is a surface that displays content relative to an anchor element. The `Popover` component is composed of three subcomponents:

- [Popover.Root](#root): a surface-level container for grouping related components.
- [Popover.Anchor](#anchor): a component that acts as the anchor element for the `Popover`.
- [Popover.Content](#content): the wrapper for the `Popover`'s main content.

---

## Usage

Anchor could be an element, reference to the element, or a virtual reference (useful for context menus and tooltips following the mouse)

Anchor as an element:

```luau
local Foundation = require(Packages.Foundation)
local Popover = Foundation.Popover
local PopoverSide = Foundation.Enums.PopoverSide
local Button = Foundation.Button
local Text = Foundation.Text

local function Component()
	local open, setOpen = React.useState(false)

	return React.createElement(Popover.Root, {
		isOpen = open,
	}, {
		Anchor = React.createElement(Popover.Anchor, nil, {
			React.createElement(Button, {
				text = "Toggle Popover",
				onActivated = function()
					setOpen(not open)
				end,
			}),
		}),
		Content = React.createElement(Popover.Content, nil, {
			React.createElement(Text, {
				text = "This is a popover!",
			}),
		}),
	})
end
```

See storybook for more examples.

### Focusable Studio plugin popovers

Studio plugin popovers use tooltip QWidgets so nested popovers can remain open. When the popover contains a text input, set `isFocusable` to `true` on `Popover.Content`. This selects Studio's frameless, keyboard-focusable tooltip variant while retaining popover styling and stacking.

```luau
Content = React.createElement(Popover.Content, {
	isFocusable = true,
	onPressedOutside = function()
		setOpen(false)
	end,
}, {
	SearchInput = React.createElement(SearchInput, {
		placeholder = "Search",
	}),
})
```

### Anchoring to a Studio widget (plugin only)

In a Studio plugin context, a popover can be anchored directly to an existing Studio widget by passing its URI to `Popover.Anchor` via `anchorRef` (which accepts either a ref or a Studio widget URI). The popover panel is attached to that widget by the Studio framework, so no anchor element is rendered. This is useful for attaching popovers to widgets owned by other plugins (for example a Ribbon button). A URI only takes effect when the popover renders through the Studio plugin path; in non-plugin contexts it is ignored.

```luau
Anchor = React.createElement(Popover.Anchor, {
	anchorRef = {
		DataModel = "Standalone",
		PluginType = "Standalone",
		PluginId = "Ribbon",
		Category = "Widgets",
		ItemId = "Tabs/BuiltIn_HomeTab/Part",
	},
}),
```

## Positioning implementation

### Required Events and Refs

There is a `ref` for the anchor, content, and the overlay.

- The anchor `ref` is used to listen for `AbsolutePosition` and `AbsoluteSize` changes.
- The content `ref` is used to read the `AbsoluteSize` of the content.
- The overlay `ref` is used to listen for `AbsolutePosition` and `AbsoluteSize` changes.

If the popover is not open, no `AbsolutePosition`s or `AbsoluteSize`s will be read from the `ref`s. This is to prevent unnecessary re-layouts.

### Calculation

Calculating the position of the popover has three steps:

1. Check whether the anchor is on the screen.
    1. If the anchor is not on the screen, the popover will not be shown and the calculation exits early.
2. Calculate which side the popover should be placed on.
    1. If the popover does not have space on the desired side, but the opposite side has space, it will switch sides.
3. Calculate the position of the popover.
    1. With the final side and alignment, calculate the position of the popover relative to the anchor. The position will be clamped to the screen.
