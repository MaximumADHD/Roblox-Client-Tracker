---
category: Display
---

## Overview

`SystemBanner` is a prominent notification component designed to communicate important system-level information to users. It displays a colored banner with an icon, title, optional description, optional action buttons, and an optional close button.

There are two variants defined in [[AlertVariant]]: `Standard` and `Emphasis`.

There are four severity levels defined in [[AlertSeverity]]: `Info`, `Warning`, `Success`, and `Error`. Each severity level automatically displays an appropriate icon for the level.

---

## Usage

`SystemBanner` is typically used at the top of a screen or section to display important system notifications, alerts, or status messages that require user attention.

The component supports up to 3 action buttons. Any additional buttons beyond this limit will be ignored with a warning.

```luau
local Foundation = require(Packages.Foundation)
local SystemBanner = Foundation.SystemBanner
local AlertVariant = Foundation.Enums.AlertVariant
local AlertSeverity = Foundation.Enums.AlertSeverity
local ButtonVariant = Foundation.Enums.ButtonVariant

return React.createElement(SystemBanner, {
	severity = AlertSeverity.Error,
	title = "Connection Lost",
	description = "Unable to connect to the server. Please check your internet connection.",
	actions = {
		{
			text = "Retry",
			variant = ButtonVariant.Standard,
			onActivated = function()
				print("Retrying connection...")
			end,
		},
		{
			text = "Help",
			variant = ButtonVariant.Utility,
			onActivated = function()
				print("Opening help...")
			end,
		},
	},
	onClose = function()
		print("Banner dismissed")
	end,
})
```
