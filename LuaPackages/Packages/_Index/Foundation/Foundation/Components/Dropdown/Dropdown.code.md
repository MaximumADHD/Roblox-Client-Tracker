---
category: Inputs
---

## Overview

A `Dropdown` is a way to have a list of options that only allows one choice selected at a time. Any of these may optionally be disabled. This component displays the selected option as a
label while the list of options are hidden, and we show the list of options vertically when this component is selected. Selecting a menu option will dismiss the list.

---

## Usage

Provide a `label`, a list of `items`, and an `onItemChanged` callback. The currently selected item
is controlled by `value` and is marked with a check icon when the menu is open.

```luau
local Foundation = require(Packages.Foundation)
local Dropdown = Foundation.Dropdown

local selected, setSelected = React.useState(nil)

return React.createElement(Dropdown.Root, {
	label = "Sort by",
	value = selected,
	onItemChanged = setSelected,
	items = {
		{ id = "name", text = "Name" },
		{ id = "date", text = "Date modified" },
		{ id = "size", text = "Size", isDisabled = true },
	},
})
```

### Grouped items

Items can be split into groups with an optional `title`. Pass an array of group objects instead of a flat list to `items`.

```luau
local items = {
	{
		title = "Recommended",
		items = {
			{ id = "name", text = "Name" },
			{ id = "date", text = "Date modified" },
		},
	},
	{
		items = {
			{ id = "size", text = "Size" },
		},
	},
}
```

### Leading and trailing accessories

Each item can render an accessory at the start (`leading`) and end (`trailing`) of the row.

`leading` accepts either an icon name as a plain string, or a structured config:

- `{ iconName = "...", iconVariant = ... }` — an icon (equivalent to passing the name directly)
- `{ type = "Avatar", userId = ... }` — a user avatar

`trailing` accepts a hint or a [[Badge]]:

- `{ type = "Hint", text = "..." }`
- `{ type = "Badge", text = "...", variant = ... }`

When at least one item has a leading accessory, all sibling items align their title to the same
column.

```luau
local BadgeVariant = Foundation.Enums.BadgeVariant

local items = {
	{
		id = "free",
		leading = "icons/common/safety",
		text = "Free tier",
	},
	{
		id = "pro",
		leading = "icons/actions/edit/bold",
		text = "Pro tier",
		trailing = { type = "Badge", text = "New", variant = BadgeVariant.Success },
	},
	{
		id = "team",
		leading = { type = "Avatar", userId = 24813339 },
		text = "Team plan",
	},
}
```
