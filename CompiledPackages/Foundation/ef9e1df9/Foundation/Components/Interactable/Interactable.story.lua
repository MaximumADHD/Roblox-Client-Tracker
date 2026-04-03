local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local ControlState = require(Foundation.Enums.ControlState)
local Interactable = require(Foundation.Components.Interactable)
local React = require(Packages.React)
local Text = require(Foundation.Components.Text)
local useTokens = require(Foundation.Providers.Style.useTokens)
type ControlState = ControlState.ControlState

local function Story()
	local tokens = useTokens()
	local state, setState = React.useBinding(ControlState.Initialize :: ControlState)

	local function onStateChanged(new: ControlState)
		setState(new)
	end

	return React.createElement(Interactable, {
		Size = UDim2.fromOffset(100, 100),
		BackgroundTransparency = tokens.Color.Extended.Green.Green_500.Transparency,
		BackgroundColor3 = tokens.Color.Extended.Green.Green_500.Color3,
		onStateChanged = onStateChanged,
		onActivated = function()
			print("activated")
		end,
		onSecondaryActivated = function()
			print("secondary activated")
		end,
	}, {
		React.createElement(Text, {
			Text = state:map(function(controlState)
				return tostring(controlState)
			end),
			Position = UDim2.fromScale(0.5, 0.5),
			textStyle = tokens.Color.Content.Emphasis,
		}),
	})
end

return {
	summary = "View",
	stories = {
		BasicStory = {
			name = "GUI State Use",
			story = Story,
		},
	},
}
