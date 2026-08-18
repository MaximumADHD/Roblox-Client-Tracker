---
category: Inputs
---

## Overview

`InputChip` is a compact, dismissible label used to represent selections inside inputs. Unlike [[Chip]], it is not a standalone interactive control — use it to show selected values within text inputs and similar fields.

Each chip displays a text label and a close affordance. Long labels truncate with an ellipsis rather than wrapping to multiple lines.

---

## Usage

`InputChip` requires `text` and `onClose`. Use `size` to match the surrounding input, and set `isDisabled` to prevent dismissal.

```luau
local Foundation = require(Packages.Foundation)
local InputChip = Foundation.InputChip
local InputSize = Foundation.Enums.InputSize

return React.createElement(InputChip, {
	text = "Design",
	size = InputSize.Medium,
	onClose = function()
		print("InputChip dismissed")
	end,
})
```

Manage a list of chips in the parent component:

```luau
local chips, setChips = React.useState({ "Design", "Engineering" })

return React.createElement(
	View,
	{ tag = "row wrap gap-small auto-xy" },
	Dash.map(chips, function(chipText, index)
		return React.createElement(InputChip, {
			key = chipText,
			text = chipText,
			LayoutOrder = index,
			onClose = function()
				setChips(Dash.filter(chips, function(existingChip)
					return existingChip ~= chipText
				end))
			end,
		})
	end)
)
```
