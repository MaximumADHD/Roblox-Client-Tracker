---
category: Inputs
---

## Overview

SegmentedControl is a horizontal control that allows users to select one of several mutually exclusive options. It is typically used for navigation or filtering content.

---

## Usage

```luau
local Foundation = require(Packages.Foundation)
local SegmentedControl = Foundation.SegmentedControl
local InputSize = Foundation.Enums.InputSize

local segments = {
	{
		id = "1",
		text = "Lorem Ipsum",
	},
	{
		id = "2",
		text = "Lorem Ipsum",
	},
}

local function Component()
	local value, setValue = React.useState(segments[1].id)

	return React.createElement(View, {
		SegmentedControl = React.createElement(SegmentedControl, {
			size = InputSize.Medium,
			segments = segments,
			value = value,
			onActivated = function(id)
				print(`Segment Clicked: {id}`)
				setValue(id)
			end,
		}),
	})
end
```
