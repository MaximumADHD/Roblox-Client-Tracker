---
category: Display
---

## Overview

Coachmark is a component for displaying a popover with a title, optional text, optional media, optional step indicator, optional close affordance, and action buttons when clicking an anchor element. It's designed for guided user experiences and feature tours.

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

Wrap the element you want to trigger the coachmark on with the Coachmark component. By default, the coachmark will appear to the
 right of the anchor element.

Click the anchor element to toggle the coachmark open and closed. 

### Basic Coachmark

```luau
local Foundation = require(Packages.Foundation)
local Coachmark = Foundation.Coachmark
local View = Foundation.View
local PopoverSide = Foundation.Enums.PopoverSide
local PopoverAlign = Foundation.Enums.PopoverAlign
local ButtonVariant = Foundation.Enums.ButtonVariant
...

React.createElement(
	Coachmark,
	{
		title = "Welcome to the new feature!",
		text = "This is a coachmark that helps guide users through new features. Click to toggle it open and closed.",
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
	-- Anchor element that will trigger coachmark on click
	React.createElement(View, nil)
)
...
```

### Coachmark with Step Indicator

Add a `steps` property to display progress information above the title. This is useful for multi-step guided experiences.

```luau
React.createElement(
	Coachmark,
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

### Coachmark with Close Affordance

Add an `onClose` callback to display a close button in the header. The header text and step indicator will automatically constrain their width to prevent collision with the close button.

```luau
React.createElement(
	Coachmark,
	{
		title = "Welcome to the new feature!",
		text = "This coachmark includes a close button for easy dismissal.",
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
