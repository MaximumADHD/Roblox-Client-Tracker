local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local ToggleButton = UI.ToggleButton
local Container = UI.Container

return function()
	return Roact.createElement(Container, {
		Size = UDim2.fromOffset(40, 24),
	}, {
		Decoration = Roact.createElement(ToggleButton, {
			OnClick = function() end,
			Selected = true,
			Size = UDim2.fromOffset(40, 24),
		})
	})
end
