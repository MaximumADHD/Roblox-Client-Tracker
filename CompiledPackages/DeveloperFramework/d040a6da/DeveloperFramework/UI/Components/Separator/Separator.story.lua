local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local Pane = require(Framework.UI.Components.Pane)
local Separator = require(Framework.UI.Components.Separator)
local TextLabel = require(Framework.UI.Components.TextLabel)

return Roact.createElement(Pane, {
	AutomaticSize = Enum.AutomaticSize.XY,
	HorizontalAlignment = Enum.HorizontalAlignment.Left,
	Layout = Enum.FillDirection.Vertical,
	Spacing = 10,
}, {
	Roact.createElement(TextLabel, {
		AutomaticSize = Enum.AutomaticSize.XY,
		Text = "Line 1",
	}),
	Roact.createElement(Separator, {}),
	Roact.createElement(TextLabel, {
		AutomaticSize = Enum.AutomaticSize.XY,
		Text = "Line 2",
	}),
})
