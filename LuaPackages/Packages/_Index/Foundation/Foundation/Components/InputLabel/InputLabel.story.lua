local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local InputLabel = require(Foundation.Components.InputLabel)

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
type InputLabelSize = InputLabelSize.InputLabelSize

local function Story(props)
	local controls = props.controls

	return React.createElement(InputLabel, {
		Text = controls.Text,
		size = controls.size,
		isRequired = controls.isRequired,
		RichText = controls.RichText,
	})
end

return {
	summary = "Label put above inputs",
	story = Story,
	controls = {
		Text = "Input Label",
		size = Dash.values(InputLabelSize),
		isRequired = { React.None, false, true },
		RichText = false,
	},
}
