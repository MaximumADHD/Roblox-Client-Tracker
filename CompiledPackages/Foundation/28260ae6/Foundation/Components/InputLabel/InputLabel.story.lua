local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
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
			tag = "row align-y-center gap-xxlarge auto-xy",
		},
		Dash.map(sizes, function(size, index)
			return React.createElement(InputLabel, {
				Text = controls.Text,
				size = size,
				isRequired = controls.isRequired,
				isDisabled = if Flags.FoundationInputFieldFixDisabled then controls.isDisabled else nil,
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
		isDisabled = if Flags.FoundationInputFieldFixDisabled then false else nil,
		RichText = false,
	},
}
