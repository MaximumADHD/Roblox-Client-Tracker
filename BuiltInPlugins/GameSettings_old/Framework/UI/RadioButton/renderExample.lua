local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local Container = UI.Container
local RadioButton = UI.RadioButton

return function()
	return Roact.createElement(Container, {
		Size = UDim2.fromOffset(100, 20),
	}, {
		Decoration = Roact.createElement(RadioButton, {
			Disabled = false,
			Key = "KEY",
			OnClick = function() end,
			Selected = true,
			Text = "option text",
		})
	})
end
