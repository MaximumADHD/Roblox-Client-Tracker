local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Icon = require(Foundation.Components.Icon)
local IconButton = require(Foundation.Components.IconButton)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local useTokens = require(Foundation.Providers.Style.useTokens)

local IconSize = require(Foundation.Enums.IconSize)
local InputSize = require(Foundation.Enums.InputSize)

local InternalTextInput = require(Foundation.Components.InternalTextInput)

local function Story(props)
	local controls = props.controls
	local tokens = useTokens()

	local text, setText = React.useState("")
	local numReturnPressed, setNumReturnPressed = React.useState(0)

	local function handleChange(newText: string)
		setText(newText)
	end

	local function buttonPress()
		print("press!")
	end

	local function onReturnPressed()
		print("Return pressed!")
		setNumReturnPressed(function(numPressed)
			return numPressed + 1
		end)
	end

	return React.createElement(View, {
		tag = "col gap-large auto-xy padding-xlarge size-3000",
	}, {
		InternalTextInput = React.createElement(InternalTextInput, {
			text = text,
			size = controls.size,
			hasError = controls.hasError,
			isDisabled = controls.isDisabled,
			onChanged = handleChange,
			onReturnPressed = onReturnPressed,
			placeholder = controls.placeholder,
			leadingElement = if controls.leadingComponentIcon == React.None
				then nil
				else React.createElement(Icon, { name = controls.leadingComponentIcon, size = IconSize.Small }),
			trailingElement = if controls.trailingComponentIcon == React.None
				then nil
				else React.createElement(IconButton, {
					onActivated = buttonPress,
					isDisabled = controls.isDisabled,
					size = IconSize.Small,
					icon = controls.trailingComponentIcon,
				}),
			textInputType = if controls.textInputType == React.None then nil else controls.textInputType,
			LayoutOrder = 1,
		}),
		Output = React.createElement(Text, {
			Text = text,
			textStyle = tokens.Color.System.Alert,
			LayoutOrder = 2,
			tag = "auto-xy",
		}),
		NumReturnPressed = React.createElement(Text, {
			LayoutOrder = 3,
			Text = "Num return pressed: " .. tostring(numReturnPressed),
			textStyle = tokens.Color.Content.Emphasis,

			tag = "auto-xy",
		}),
	})
end

return {
	summary = "Internal text input",
	story = Story,
	controls = {
		hasError = false,
		isDisabled = false,
		size = Dash.values(InputSize),
		placeholder = "Placeholder text",
		leadingComponentIcon = {
			"icons/placeholder/placeholderOn_small",
			"icons/status/private_small",
			"icons/common/search_small",
			React.None,
		},
		trailingComponentIcon = {
			"icons/placeholder/placeholderOff",
			"icons/actions/edit/clear_small",
			"icons/actions/info_small",
			"icons/actions/viewOn",
			"icons/actions/viewOff",
			React.None,
		},
		textInputType = {
			React.None,
			Enum.TextInputType.Default,
			Enum.TextInputType.Password,
			Enum.TextInputType.Number,
		},
	},
}
