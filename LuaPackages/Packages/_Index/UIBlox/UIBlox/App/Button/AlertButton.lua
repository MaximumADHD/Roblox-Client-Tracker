local ButtonRoot = script.Parent
local App = ButtonRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

local Button = require(ButtonRoot.Button)
local ButtonType = require(ButtonRoot.Enum.ButtonType)

return React.forwardRef(function(props, ref)
	return React.createElement(
		Button,
		Cryo.Dictionary.join(props, {
			ref = ref,
			buttonType = ButtonType.Alert,
		})
	)
end)
