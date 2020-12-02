local Root = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local Button = require(script.Parent.Button)
local withLayoutValues = require(script.Parent.Parent.Connection.withLayoutValues)

local function OkButton(props)
	return withLayoutValues(function(values)
		local onClick = props.onClick

		return Roact.createElement(Button, {
			font = Enum.Font.SourceSans,
			imageUp = "ButtonUp",
			imageDown = "ButtonDown",
			gamepadButton = Enum.KeyCode.ButtonA,
			additionalBindings = {
				Enum.KeyCode.ButtonB,
			},

			stringKey = "CoreScripts.PurchasePrompt.Button.OK",
			size = UDim2.new(1, 0, 0, values.Size.ButtonHeight-4),

			onClick = onClick
		})
	end)
end

return OkButton
