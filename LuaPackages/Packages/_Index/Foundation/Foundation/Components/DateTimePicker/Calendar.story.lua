local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Calendar = require(script.Parent.Calendar)

return {
	summary = "Calendar",
	stories = {
		{
			name = "Calendar",
			story = function(storyProps)
				return React.createElement(Calendar, {
					defaultDates = { DateTime.now() },
					onSelectedDateChanged = function() end,
					showStartDateTimeCalendarInput = storyProps.controls.showStartDateTimeCalendarInput,
					showEndDateTimeCalendarInput = storyProps.controls.showEndDateTimeCalendarInput,
					showTimeDropdown = storyProps.controls.showTimeDropdown,
				})
			end,
		},
	},
	controls = {
		showStartDateTimeCalendarInput = false,
		showEndDateTimeCalendarInput = false,
		showTimeDropdown = false,
	},
}
