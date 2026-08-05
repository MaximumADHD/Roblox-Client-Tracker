local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local TimeProgressBar = require(Framework.UI.Components.TimeProgressBar)
return {
	stories = {
		{
			name = "Default",
			story = Roact.createElement(TimeProgressBar, {
				TotalTime = 10,
			}),
		},
		{
			name = "Fixed Width",
			story = Roact.createElement(TimeProgressBar, {
				TotalTime = 10,
				Width = 200,
			}),
		},
		{
			name = "StartTime",
			description = "Specify start time instead of starting at component mount",
			story = Roact.createElement(TimeProgressBar, {
				StartTime = tick() - 10,
				TotalTime = 20,
				Width = 200,
			}),
		},
	},
}
