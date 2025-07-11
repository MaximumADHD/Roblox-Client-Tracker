---
category: Inputs
---

## Overview

A `Dropdown` is a way to have a list of options that only allows one choice selected at a time. Any of these may optionally be disabled. This component displays the selected option as a
label while the list of options are hidden, and we show the list of options vertically when this component is selected. Selecting a menu option will dismiss the list.

---

## Usage

```lua
local Foundation = require(Packages.Foundation)
local Dropdown = Foundation.Dropdown

return React.createElement(Dropdown.Root, {
    label = "I am a dropdown",
    onItemChanged = function(id, label) end,
    items = {
        {
			id = "A",
			text = "Item A",
		},
		{
			id = "B",
			text = "Item B",
			isDisabled = true,
		},
		{
			id = "C",
			text = "Item C",
			icon = "icons/common/safety",
		},
    }
}),
```