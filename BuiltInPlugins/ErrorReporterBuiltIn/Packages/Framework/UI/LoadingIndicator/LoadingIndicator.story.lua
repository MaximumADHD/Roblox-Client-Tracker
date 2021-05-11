local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local Container = UI.Container
local LoadingIndicator = UI.LoadingIndicator

return function()
	return Roact.createElement(Container, {
		Size = UDim2.new(1, -30, 0, 40)
	}, {
		Roact.createElement(LoadingIndicator)
	})
end
