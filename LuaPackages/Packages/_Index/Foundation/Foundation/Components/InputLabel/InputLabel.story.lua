local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local InputLabel = require(Foundation.Components.InputLabel)
local View = require(Foundation.Components.View)

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
type InputLabelSize = InputLabelSize.InputLabelSize

local function Story(props)
	local controls = props.controls
	local sizes: { InputLabelSize } = { InputLabelSize.Large, InputLabelSize.Medium, InputLabelSize.Small }

	return React.createElement(
		View,
		{
			tag = "row gap-xxlarge auto-xy align-y-center",
		},
		Dash.map(sizes, function(size, index)
			return React.createElement(InputLabel, {
				Text = controls.Text,
				size = size,
				isRequired = controls.isRequired,
				RichText = controls.RichText,
				LayoutOrder = index,
			})
		end)
	)
end

return {
	summary = "Label put above inputs",
	story = Story,
	controls = {
		Text = "Input label",
		isRequired = { React.None, false, true },
		RichText = false,
	},
}
