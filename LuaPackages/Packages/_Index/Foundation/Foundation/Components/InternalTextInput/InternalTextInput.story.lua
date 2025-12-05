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
		tag = "auto-xy padding-xlarge",
	}, {
		WidthContainer = React.createElement(View, {
			Size = UDim2.fromOffset(controls.width, tokens.Size.Size_3000),
			tag = "col gap-large auto-y",
		}, {
			InternalTextInput = React.createElement(InternalTextInput, {
				text = text,
				size = controls.size,
				hasError = controls.hasError,
				isDisabled = controls.isDisabled,
				numLines = controls.numLines,
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
		}),
	})
end

return {
	summary = "Internal text input",
	stories = {
		{
			name = "Single-line",
			story = function(props: any)
				return React.createElement(
					Story,
					Dash.union(props, {
						controls = Dash.union(props.controls, {
							numLines = 1,
						}),
					})
				)
			end,
		},
		{
			name = "Multi-line",
			story = function(props: any)
				local placeholder = ""
				local nums = {}
				for i = 1, 1000 do
					table.insert(nums, i)
				end
				placeholder = table.concat(nums, "\n")

				return React.createElement(
					Story,
					Dash.union(props, {
						controls = Dash.union(props.controls, {
							placeholder = placeholder,
						}),
					})
				)
			end,
		},
	},
	controls = {
		hasError = false,
		isDisabled = false,
		size = Dash.values(InputSize),
		numLines = 3,
		width = 400,
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
