local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local TitledFrame = require(Framework.UI.Components.TitledFrame)
local TextLabel = require(Framework.UI.Components.TextLabel)

return {
	stories = {
		{
			name = "Horizontal layout (default)",
			story = function()
				return Roact.createElement(TitledFrame, {}, {
					Child = Roact.createElement(TextLabel, {
						AutomaticSize = Enum.AutomaticSize.XY,
						Text = "Child component",
					}),
				})
			end,
		},
		{
			name = "Horizontal layout + Label style",
			story = function()
				return Roact.createElement(TitledFrame, {
					Style = "Label",
				}, {
					Child = Roact.createElement(TextLabel, {
						AutomaticSize = Enum.AutomaticSize.XY,
						Text = "Child component",
					}),
				})
			end,
		},
		{
			name = "Vertical layout + Title style",
			story = function()
				return Roact.createElement(TitledFrame, {
					Style = "Title",
				}, {
					Child = Roact.createElement(TextLabel, {
						AutomaticSize = Enum.AutomaticSize.XY,
						Text = "Child component",
					}),
				})
			end,
		},
		{
			name = "Vertical layout + Subtitle style",
			story = function()
				return Roact.createElement(TitledFrame, {
					Style = "Subtitle",
				}, {
					Child = Roact.createElement(TextLabel, {
						AutomaticSize = Enum.AutomaticSize.XY,
						Text = "Child component",
					}),
				})
			end,
		},
	},
}
