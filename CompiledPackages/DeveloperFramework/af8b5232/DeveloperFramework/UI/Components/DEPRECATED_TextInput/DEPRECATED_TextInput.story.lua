local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local DEPRECATED_TextInput = require(script.Parent)

return {
	stories = {
		{
			name = "RoundedBorder",
			story = Roact.createElement(DEPRECATED_TextInput, {
				Size = UDim2.new(0, 150, 0, 20),
				Style = "RoundedBorder",
				PlaceholderText = "Placeholder",
				TextXAlignment = Enum.TextXAlignment.Center,
				OnTextChanged = function(text)
					print("TextInput - OnTextChanged: ", text)
				end,
				OnFocusGained = function()
					print("TextInput - OnFocusGained")
				end,
				OnFocusLost = function(enterPressed, rbx)
					print("TextInput - OnFocusLost", enterPressed, "original text", rbx.Text)
				end,
			}),
		},
		{
			name = "FilledRoundedBorder",
			story = Roact.createElement(DEPRECATED_TextInput, {
				Size = UDim2.new(0, 150, 0, 20),
				Style = "FilledRoundedBorder",
				PlaceholderText = "Placeholder",
				OnTextChanged = function(text)
					print("TextInput - OnTextChanged: ", text)
				end,
				OnFocusGained = function()
					print("TextInput - OnFocusGained")
				end,
				OnFocusLost = function(enterPressed)
					print("TextInput - OnFocusLost", enterPressed)
				end,
			}),
		},
		{
			name = "FilledRoundedRedBorder",
			story = Roact.createElement(DEPRECATED_TextInput, {
				Size = UDim2.new(0, 150, 0, 20),
				Style = "FilledRoundedRedBorder",
				PlaceholderText = "Placeholder",
				OnTextChanged = function(text)
					print("TextInput - OnTextChanged: ", text)
				end,
				OnFocusGained = function()
					print("TextInput - OnFocusGained")
				end,
				OnFocusLost = function(enterPressed)
					print("TextInput - OnFocusLost", enterPressed)
				end,
			}),
		},
	},
}
