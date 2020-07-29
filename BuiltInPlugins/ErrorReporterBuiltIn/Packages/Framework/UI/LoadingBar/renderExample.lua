local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local LoadingBar = UI.LoadingBar

return function()
	return Roact.createElement(LoadingBar, {
		Progress = 0.8,
		Size = UDim2.fromOffset(120, 8),
	})
end
