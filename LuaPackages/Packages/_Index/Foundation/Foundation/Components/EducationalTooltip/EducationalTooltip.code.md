---
category: Display
---

## Overview

!!! note "The canonical name from Foundation v2"

    **`EducationalTooltip` is the v2-canonical name** for what was called [[Coachmark]] in Foundation v1. **`Coachmark` will be removed in Foundation v2** — `EducationalTooltip` is the name you should use going forward.

    Foundation v1 already exposes `Foundation.EducationalTooltip` as an alias for `Foundation.Coachmark`, so you can adopt the new name **today** without breaking your build. Run the standalone [`rename-coachmark-to-education-tooltip`](https://github.com/Roblox/luau-ecosystem-codemod/blob/main/src/transforms/rename-coachmark-to-education-tooltip/README.md) codemod to migrate automatically, and see [Breaking Changes](../../develop/breaking-changes.md) for the full v2 migration guide.

EducationalTooltip is a component for displaying a popover with a title, optional text, optional media, optional step indicator, optional close affordance, and action buttons when clicking an anchor element. It's designed for guided user experiences and feature tours.

Actions should be provided as an array, with entries conforming to the ActionProps type (shared with other components):

```luau
type ActionProps = {
    onActivated: () -> (),
    variant: ButtonVariant?,
    text: string,
}
```

---

## Usage

Wrap the element you want to trigger the tooltip on with the EducationalTooltip component. By default, the tooltip will appear to the
right of the anchor element.

Click the anchor element to toggle the tooltip open and closed.

### Basic EducationalTooltip

```luau
local Foundation = require(Packages.Foundation)
local EducationalTooltip = Foundation.EducationalTooltip
local View = Foundation.View
local PopoverSide = Foundation.Enums.PopoverSide
local PopoverAlign = Foundation.Enums.PopoverAlign
local ButtonVariant = Foundation.Enums.ButtonVariant
...

React.createElement(
	EducationalTooltip,
	{
		title = "Welcome to the new feature!",
		text = "This is an education tooltip that helps guide users through new features. Click to toggle it open and closed.",
		side = PopoverSide.Top,
		align = PopoverAlign.Start,
		steps = {
			current = 1,
			total = 4,
		},
		actions = {
			{
				text = "Got it!",
				onActivated = function()
					print("Primary button clicked")
				end,
				variant = ButtonVariant.Emphasis,
			},
			{
				text = "Skip",
				onActivated = function()
					print("Secondary button clicked")
				end,
				variant = ButtonVariant.SoftEmphasis,
			},
		},
		media = React.createElement(View, {
			tag = "bg-primary-500",
			Size = UDim2.new(1, 0, 0, 100)
		}),
	},
	-- Anchor element that will trigger the tooltip on click
	React.createElement(View, nil)
)
...
```

### EducationalTooltip with Step Indicator

Add a `steps` property to display progress information above the title. This is useful for multi-step guided experiences.

```luau
React.createElement(
	EducationalTooltip,
	{
		title = "Step 2: Configure your settings",
		text = "Adjust your preferences to customize your experience.",
		steps = {
			current = 2,
			total = 5,
		},
		actions = {
			{
				text = "Next",
				onActivated = function()
					print("Next step")
				end,
				variant = ButtonVariant.Emphasis,
			},
			{
				text = "Back",
				onActivated = function()
					print("Previous step")
				end,
				variant = ButtonVariant.SoftEmphasis,
			},
		},
	},
	-- Anchor element
	React.createElement(View, nil)
)
```

### EducationalTooltip with Close Affordance

Add an `onClose` callback to display a close button in the header. The header text and step indicator will automatically constrain their width to prevent collision with the close button.

```luau
React.createElement(
	EducationalTooltip,
	{
		title = "Welcome to the new feature!",
		text = "This tooltip includes a close button for easy dismissal.",
		steps = {
			current = 3,
			total = 4,
		},
		onClose = function()
			print("Close affordance clicked")
		end,
		actions = {
			{
				text = "Got it!",
				onActivated = function()
					print("Primary button clicked")
				end,
				variant = ButtonVariant.Emphasis,
			},
		},
	},
	-- Anchor element
	React.createElement(View, nil)
)
```
