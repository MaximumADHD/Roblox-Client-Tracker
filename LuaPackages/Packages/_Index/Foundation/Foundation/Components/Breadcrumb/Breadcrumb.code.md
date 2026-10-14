---
category: Layout
---

## Overview

Breadcrumbs are a list of links that help a user visualize a page's location within the hierarchical structure of an experience, and let them navigate up to any of its ancestors.

---

## Usage

A breadcrumb is driven by an ordered `items` list, from the top-most ancestor to the current page. An ancestor with an `onActivated` renders as a [[Link]] that navigates on activation; an ancestor without one renders as plain, non-interactive text. The last entry is the **current page**, rendered as emphasized, non-interactive text. A `/` separator is drawn between each pair of items.

### Size

The `size` property applies to every crumb and separator. Possible values are defined in [[InputSize]] (`Small`/`Medium`/`Large`); `Medium` is the default.

### Leading accessories

Each item may set a `leading` accessory, rendered before its text. It is one of:

- an **icon** — a BuilderIcons name string (e.g. `IconName.House`), or `{ iconName, iconVariant }` to choose a variant;
- an **avatar** — `{ type = "Avatar", userId }`, rendered as an [[AvatarIcon]];
- an **image** — any non-icon asset string (e.g. a game or group thumbnail), rendered as an [[Image]].

### Collapsing

Trails of more than four crumbs collapse automatically: the first crumb and the current page stay visible, and everything in between collapses into an overflow (`…`) button. Activating it opens a [[Menu]] of the hidden crumbs; choosing one calls that crumb's `onActivated`.

### Dropdown

Pass `onDropdownActivated` to add a dropdown chevron to the current crumb; activating the crumb calls it. Any item can take a `ref`, forwarded to its crumb, for anchoring a [[Menu]], [[Popover]], or [[EducationalTooltip]] to it. To open a dropdown menu under the current crumb, give the current item a `ref` and use it as the menu's `anchorRef`. Crumbs collapsed into the overflow aren't rendered, so their `ref` stays unset.

```luau
local currentRef = React.useRef(nil :: GuiObject?)
local isOpen, setIsOpen = React.useState(false)

React.createElement(React.Fragment, nil, {
	Breadcrumb = React.createElement(Breadcrumb, {
		items = {
			{ text = "Home", onActivated = goHome },
			{ text = "Games", onActivated = goToGames },
			{ text = "Tower Defense Simulator", ref = currentRef },
		},
		onDropdownActivated = function()
			setIsOpen(not isOpen)
		end,
	}),
	Menu = React.createElement(Foundation.Menu, {
		isOpen = isOpen,
		anchorRef = currentRef,
		items = siblingPages,
		onPressedOutside = function()
			setIsOpen(false)
		end,
		onActivated = function()
			setIsOpen(false)
		end,
	}),
})
```

### Examples

```luau
local Foundation = require(Packages.Foundation)
local Breadcrumb = Foundation.Breadcrumb
local InputSize = require(Foundation.Enums.InputSize)
local IconName = Foundation.Enums.IconName

React.createElement(Breadcrumb, {
	size = InputSize.Medium,
	items = {
		{ text = "Home", onActivated = goHome, leading = IconName.House },
		{ text = "Games", onActivated = goToGames },
		{ text = "Tower Defense Simulator" },
	},
})
```

## Accessibility

- Ancestor crumbs are interactive [[Link]]s and participate in selection/focus, as do the overflow button and, when `onDropdownActivated` is passed, the current crumb. Otherwise the current page and separators are non-interactive text, so they stay out of the focus order.
- Hover transitions honor reduced-motion (handled by [[Link]]), and the crumb, separator, and current-page colors meet WCAG AA contrast.
