---
category: Display
---

## Overview

`FeedbackAlert` is a contextual notification component designed to provide inline feedback to users within a specific area of the interface. It displays an alert box with an icon, title, optional subtitle, optional description, optional link, optional action buttons, and an optional close button.

There are four severity levels defined in [[AlertSeverity]]: `Info`, `Warning`, `Success`, and `Error`. Each severity level automatically displays an appropriate icon and colors the alert border/background accordingly.

---

## Usage

`FeedbackAlert` is typically used within forms, sections, or containers to provide contextual feedback related to user actions or system state.

The component supports up to 3 action buttons. Any additional buttons beyond this limit will be ignored with a warning.

```luau
local Foundation = require(Packages.Foundation)
local FeedbackAlert = Foundation.FeedbackAlert
local AlertSeverity = Foundation.Enums.AlertSeverity
local ButtonVariant = Foundation.Enums.ButtonVariant

return React.createElement(FeedbackAlert, {
	severity = AlertSeverity.Warning,
	title = "Unsaved Changes",
	subtitle = "Draft",
	description = "You have unsaved changes that will be lost if you navigate away.",
	link = {
		text = "Learn more",
		onActivated = function()
			print("Opening help...")
		end,
	},
	actions = {
		{
			text = "Save",
			variant = ButtonVariant.Standard,
			onActivated = function()
				print("Saving changes...")
			end,
		},
		{
			text = "Discard",
			variant = ButtonVariant.Utility,
			onActivated = function()
				print("Discarding changes...")
			end,
		},
	},
	onClose = function()
		print("Alert dismissed")
	end,
})
```
