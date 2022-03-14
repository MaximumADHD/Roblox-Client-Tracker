local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local App = Packages.UIBlox.App
local ControllerBarHint = require(App.Bar.ControllerBarHint)

return Roact.createElement(ControllerBarHint, {
	keyCode = Enum.KeyCode.ButtonB,
	text = "Controller Bar Hint",
	textSize = 19,
})
