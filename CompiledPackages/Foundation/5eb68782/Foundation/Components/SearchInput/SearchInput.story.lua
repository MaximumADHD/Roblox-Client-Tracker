local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local Button = require(Foundation.Components.Button)

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local InputSize = require(Foundation.Enums.InputSize)
local InputVariant = require(Foundation.Enums.InputVariant)
local SearchInputShape = require(Foundation.Enums.SearchInputShape)

local SearchInput = require(Foundation.Components.SearchInput)

local function Story(props)
	local controls = props.controls

	local text, setText = React.useBinding("")
	local tokens = useTokens()

	local ref = React.useRef(nil)

	local function handleChange(newText: string)
		print(`[SearchInput] query changed: "{newText}"`)
		setText(newText)
	end

	local function gainFocus()
		if ref.current and ref.current.focus then
			ref.current.focus()
		end
	end

	local function onFocusGained()
		print("[SearchInput] focus gained!")
	end

	local function onFocusLost(inputObject: InputObject?)
		print(
			"[SearchInput] focus lost!",
			if inputObject then `InputObject: {inputObject.UserInputType.Name}` else "no input object"
		)
	end

	return React.createElement(View, {
		tag = "col gap-large auto-xy padding-xlarge",
	}, {
		SearchInput = React.createElement(SearchInput, {
			LayoutOrder = 1,
			text = text,
			placeholder = if controls.placeholder == "" then nil else controls.placeholder,
			hasError = controls.hasError,
			isDisabled = controls.isDisabled,
			shape = controls.shape,
			variant = controls.variant,
			onChanged = handleChange,
			onFocusGained = onFocusGained,
			onFocusLost = onFocusLost,
			size = controls.size,
			width = if controls.width == 0 then nil else UDim.new(0, controls.width),
			ref = ref,
		}),

		Output = React.createElement(Text, {
			LayoutOrder = 2,
			Text = text,
			textStyle = tokens.Color.System.Alert,
			tag = "auto-xy",
		}),

		FocusButton = React.createElement(Button, {
			LayoutOrder = 3,
			text = "Focus SearchInput",
			onActivated = gainFocus,
			variant = ButtonVariant.Standard,
		}),
	})
end

return {
	summary = "Search input field with leading search icon",
	stories = Dash.map(
		{ InputVariant.Standard, InputVariant.Contrast, InputVariant.Utility } :: { InputVariant.InputVariant },
		function(inputVariant)
			return {
				name = inputVariant,
				story = function(props: { controls: { [string]: any } })
					return React.createElement(
						Story,
						Dash.join(props, { controls = Dash.join(props.controls, { variant = inputVariant }) })
					)
				end,
			}
		end
	),
	controls = {
		hasError = false,
		isDisabled = false,
		size = Dash.values(InputSize),
		shape = Dash.values(SearchInputShape),
		width = 0,
		placeholder = "",
	},
}
