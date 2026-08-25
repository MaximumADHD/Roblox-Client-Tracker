local Foundation = script:FindFirstAncestor("Foundation")

local Checkbox = require(Foundation.Components.Checkbox)
local CheckboxGroup = require(Foundation.Components.CheckboxGroup)
local InputGroupStory = require(Foundation.Utility.Stories.Shared.InputGroupStory)

return InputGroupStory.create({
	Group = CheckboxGroup,
	Item = Checkbox,
	itemName = "Checkbox",
	summary = "CheckboxGroup lays out related checkboxes with a shared legend and cascaded size, placement, and isDisabled.",
	defaultLegend = "Notification settings",
	labels = { "Email", "SMS", "Push", "In-app" },
	hints = {
		"Receive updates via email",
		"Get text messages for alerts",
		"Mobile push notifications",
		"Notifications inside the app",
	},
	states = {
		{ label = "Unchecked", isChecked = false },
		{ label = "Checked", isChecked = true },
		{ label = "Indeterminate", isIndeterminate = true },
		{ label = "Disabled", isDisabled = true, isChecked = false },
		{ label = "Disabled checked", isDisabled = true, isChecked = true },
	},
})
