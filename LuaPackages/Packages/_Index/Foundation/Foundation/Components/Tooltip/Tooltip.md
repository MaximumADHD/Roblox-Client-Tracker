---
category: Display
---

## Overview

Tooltip is a component for displaying a popover with a title, optional text and optional shortcut when hovering over an anchor element.

---

## Usage

Wrap the element you want to trigger the tooltip on with the Tooltip component. By default, the tooltip will appear to the
 right of the anchor element.

If possible, a shortcut should be created as a constant outside the render function to avoid useless re-renders. 

```luau
local Foundation = require(Packages.Foundation)
local Tooltip = Foundation.Tooltip
local View = Foundation.View
local PopoverSide = Foundation.Enums.PopoverSide
local PopoverAlign = Foundation.Enums.PopoverAlign
...

local shortcut = { Enum.KeyCode.F2, Enum.KeyCode.One }

React.createElement(
	Tooltip,
	{
		title = props.controls.text,
		text = "Generally we should avoid tooltips with long titles and descriptions. Consider using other affordances for sharing contextual information when content expands beyond a few lines.",
		shortcut = shortcut,
		side = PopoverSide.Top,
		align = PopoverAlign.Start,
	},
	-- Anchor element that will trigget tooltip on hover
	React.createElement(View, nil)
)
...
```
