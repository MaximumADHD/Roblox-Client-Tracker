local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
local InputSize = require(Foundation.Enums.InputSize)
local InternalTextInput = require(Foundation.Components.InternalTextInput)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTextInputVariants = require(Foundation.Components.TextInput.useTextInputVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)

local InputField = require(Foundation.Components.InputField)

type StoryControls = {
	label: string,
	hint: string,
	hasError: boolean,
	isDisabled: boolean,
	size: InputSize.InputSize,
	labelSize: InputLabelSize.InputLabelSize,
	placeholder: string,
}

local function createInputRenderer(options: {
	controls: StoryControls,
	horizontalPadding: UDim,
	text: React.Binding<string>,
	onChanged: (string) -> (),
})
	return function(ref: React.Ref<Types.InternalTextInputRef?>)
		local controls = options.controls
		return React.createElement(InternalTextInput, {
			ref = ref,
			text = options.text,
			hasError = controls.hasError,
			isDisabled = controls.isDisabled,
			size = controls.size,
			horizontalPadding = {
				left = options.horizontalPadding,
				right = options.horizontalPadding,
			},
			onChanged = options.onChanged,
			placeholder = controls.placeholder,
		})
	end
end

local function Story(props: { controls: StoryControls })
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
			isDisabled = controls.isDisabled,
			input = createInputRenderer({
				controls = controls,
				horizontalPadding = variantProps.container.horizontalPadding,
				text = text,
				onChanged = handleChange,
			}),
		}),
	})
end

return {
	summary = "Input field",
	stories = {
		{
			name = "Playground",
			story = Story,
		},
	},
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
