local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local CalendarDay = require(script.Parent.CalendarDay)

return {
	summary = "CalendarDay",
	stories = {
		{
			name = "CalendarDay",
			story = function(storyProps)
				return React.createElement(CalendarDay, {
					emphasizeText = storyProps.controls.emphasizeText,
					highlight = storyProps.controls.highlight,
					isSelectable = storyProps.controls.isSelectable,
					isSelected = storyProps.controls.isSelected,
					LayoutOrder = 1,
					onActivated = function() end,
					Text = "10",
				})
			end,
		},
	},
	controls = {
		emphasizeText = true,
		highlight = true,
		isSelectable = true,
		isSelected = false,
	},
}
