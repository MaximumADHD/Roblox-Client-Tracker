local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local Button = UI.Button

return function()
	return Roact.createElement(Button, {
		Style = "Round",
		Text = "Button",
		Size = UDim2.fromOffset(120, 32),
		OnClick = function() end,
	})
end
