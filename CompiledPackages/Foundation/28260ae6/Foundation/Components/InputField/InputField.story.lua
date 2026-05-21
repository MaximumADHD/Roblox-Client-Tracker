local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local InputLabelSize = require(Foundation.Enums.InputLabelSize)
local InputSize = require(Foundation.Enums.InputSize)
local InternalTextInput = require(Foundation.Components.InternalTextInput)
local View = require(Foundation.Components.View)
local useTextInputVariants = require(Foundation.Components.TextInput.useTextInputVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)

local InputField = require(Foundation.Components.InputField)

local function Story(props)
	local controls = props.controls

	local tokens = useTokens()
	local variantProps = useTextInputVariants(tokens, controls.size)

	local text, setText = React.useBinding("")

	local function handleChange(newText: string)
		setText(newText)
	end

	return React.createElement(View, {
		tag = "gap-large auto-xy padding-xlarge",
	}, {
		React.createElement(InputField, {
			label = controls.label,
			size = controls.labelSize,
			hint = controls.hint,
			isDisabled = if Flags.FoundationInputFieldFixDisabled then controls.isDisabled else nil,
			input = function(ref)
				return React.createElement(InternalTextInput, {
					ref = ref,
					text = text,
					hasError = controls.hasError,
					isDisabled = controls.isDisabled,
					size = controls.size,
					horizontalPadding = {
						left = (if Flags.FoundationInputVariantsConsolidateContainer
							then variantProps.container
							else variantProps.innerContainer).horizontalPadding,
						right = (if Flags.FoundationInputVariantsConsolidateContainer
							then variantProps.container
							else variantProps.innerContainer).horizontalPadding,
					},
					onChanged = handleChange,
					placeholder = controls.placeholder,
				})
			end,
		}),
	})
end

return {
	summary = "Input field",
	story = Story,
	controls = {
		label = "Field label",
		hint = "Hint",
		hasError = false,
		isDisabled = false,
		size = Dash.values(InputSize),
		labelSize = Dash.values(InputLabelSize),
		placeholder = "Placeholder text",
	},
}
