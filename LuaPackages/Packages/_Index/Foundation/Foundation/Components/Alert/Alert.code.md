---
category: Display
---

## Overview

!!! note "Migrating from `SystemBanner` and `FeedbackAlert`"

    Prefer `Foundation.Alert` over the deprecated [[SystemBanner]] and [[FeedbackAlert]] components. Use `AlertVariant.System` in place of SystemBanner, and `AlertVariant.Feedback` in place of FeedbackAlert.

`Alert` is a contextual message that surfaces severity-styled information to the user. It displays an icon, a message, an optional link or up to two action buttons, and an optional close button.

`Alert` renders two [[AlertVariant]] values: `Feedback`, which draws a rounded border around the whole alert, and `System`, which draws top and bottom edges only. The SystemBanner-only values, `Standard` and `Emphasis`, fall back to `Feedback`.

There are four severity levels defined in [[AlertSeverity]]: `Info`, `Warning`, `Success`, and `Error`. Each severity level automatically displays an appropriate icon and colors the alert border/background accordingly.

---

## Usage

Pass the message through `text`. A `link` and `actions` are mutually exclusive, and passing `onClose` makes the alert dismissable.

```luau
local Foundation = require(Packages.Foundation)
local Alert = Foundation.Alert
local AlertSeverity = Foundation.Enums.AlertSeverity
local AlertVariant = Foundation.Enums.AlertVariant

return React.createElement(Alert, {
	variant = AlertVariant.Feedback,
	severity = AlertSeverity.Warning,
	text = "You have unsaved changes that will be lost if you navigate away.",
	actions = {
		primary = {
			text = "Save",
			onActivated = function()
				print("Saving changes...")
			end,
		},
		secondary = {
			text = "Discard",
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
