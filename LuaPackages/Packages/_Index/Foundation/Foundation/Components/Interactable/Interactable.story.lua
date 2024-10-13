local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Interactable = require(Foundation.Components.Interactable)
local Text = require(Foundation.Components.Text)
local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local function Story(props)
	local state, setState = React.useBinding(ControlState.Initialize :: ControlState)

	local function onStateChanged(new: ControlState)
		setState(new)
	end

	return React.createElement(Interactable, {
		Size = UDim2.new(0, 100, 0, 100),
		BackgroundTransparency = 0,
		BackgroundColor3 = Color3.fromRGB(20, 110, 20),
		onStateChanged = onStateChanged,
	}, {
		React.createElement(Text, {
			Text = state:map(function(state)
				return tostring(state)
			end),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			textStyle = {
				Color3 = Color3.fromRGB(255, 255, 255),
			},
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
