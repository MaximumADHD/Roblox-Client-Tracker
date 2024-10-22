local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local TextInput = require(Foundation.Components.TextInput)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)

local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

local function Story(props)
	local controls = props.controls

	local text, setText = React.useState("")

	local ref = React.useRef(nil)

	local function handleChange(newText: string)
		setText(newText)
	end

	local function buttonPress()
		print("press!")
	end

	local function gainFocus()
		if ref.current and ref.current.focus then
			ref.current.focus()
		end
	end

	return React.createElement(View, {
		tag = "col gap-large auto-xy padding-xlarge",
	}, {
		TextInput = React.createElement(TextInput, {
			LayoutOrder = 1,
			text = text,
			textInputType = if controls.textInputType == React.None then nil else controls.textInputType,
			hasError = controls.hasError,
			isDisabled = controls.isDisabled,
			isRequired = controls.isRequired,
			onChanged = handleChange,
			label = controls.input,
			hint = if controls.hint == "" then nil else controls.hint,
			placeholder = controls.placeholder,
			iconLeading = if controls.iconLeading == React.None then nil else controls.iconLeading,
			iconTrailing = if controls.iconTrailing == React.None
				then nil
				else if controls.trailingButton
					then {
						name = controls.iconTrailing,
						onActivated = buttonPress,
					}
					else controls.iconTrailing,
			textBoxRef = ref,
		}),

		Output = React.createElement(Text, {
			LayoutOrder = 2,
			Text = text,
			textStyle = {
				Color3 = Color3.new(1, 0, 0.5),
			},

			tag = "auto-xy",
		}),

		FocusButton = React.createElement(Button, {
			LayoutOrder = 3,
			text = "Focus TextInput",
			onActivated = gainFocus,
			variant = ButtonVariant.Standard,
		}),
	})
end

return {
	summary = "Text field",
	story = Story,
	controls = {
		hasError = false,
		isDisabled = false,
		isRequired = { React.None, false, true },
		textInputType = {
			React.None,
			Enum.TextInputType.Default,
			Enum.TextInputType.Password,
			Enum.TextInputType.Number,
		},
		input = "Input Label",
		hint = "Helper text goes here",
		placeholder = "Placeholder text",
		iconLeading = {
			"icons/placeholder/placeholderOn_small",
			"icons/status/private_small",
			"icons/common/search_small",
			React.None,
		},
		iconTrailing = {
			"icons/placeholder/placeholderOff",
			"icons/actions/edit/clear_small",
			"icons/actions/info_small",
			"icons/actions/viewOn",
			"icons/actions/viewOff",
			React.None,
		},
		trailingButton = false,
	},
}
