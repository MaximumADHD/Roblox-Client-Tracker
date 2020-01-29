local Root = script.Parent.Parent.Parent

local LuaPackages = Root.Parent
local Roact = require(LuaPackages.Roact)

local Button = require(script.Parent.Button)
local withLayoutValues = require(script.Parent.Parent.Connection.withLayoutValues)

local function CancelButton(props)
	return withLayoutValues(function(values)
		local onClick = props.onClick

		return Roact.createElement(Button, {
			font = Enum.Font.SourceSans,
			imageUp = "ButtonUpRight",
			imageDown = "ButtonDownRight",
			gamepadButton = Enum.KeyCode.ButtonB,

			stringKey = "CoreScripts.PurchasePrompt.CancelPurchase.Cancel",
			size = UDim2.new(0.5, 0, 1, 0),
			position = UDim2.new(0.5, 0, 0, 0),

			onClick = onClick,
		})
	end)
end

return CancelButton