local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local TextInput = UI.TextInput
local FFlagDevFrameworkTextInputContainer = game:GetFastFlag("DevFrameworkTextInputContainer")

return function()
	return Roact.createElement("Frame", {
		Size = FFlagDevFrameworkTextInputContainer and UDim2.new(0, 120, 0, 32) or UDim2.new(0, 80, 0, 20),
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderSizePixel = 0
	}, {
		Roact.createElement(TextInput, {
			Style = FFlagDevFrameworkTextInputContainer and "RoundedBorder" or nil,
			PlaceholderText = "Placeholder",
			OnTextChanged = function(text)
				print("TextInput - OnTextChanged: ", text)
			end,
			OnFocusGained = function()
				print("TextInput - OnFocusGained")
			end,
			OnFocusLost = function(enterPressed)
				print("TextInput - OnFocusLost", enterPressed)
			end
		})
	})
end
