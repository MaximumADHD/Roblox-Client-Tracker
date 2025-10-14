local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize
local NumberInputControlsVariant = require(Foundation.Enums.NumberInputControlsVariant)
local View = require(Foundation.Components.View)

local NumberInput = require(Foundation.Components.NumberInput)

local widthOffset: { [InputSize]: number } = {
	[InputSize.Large] = 25,
	[InputSize.Medium] = 0,
	[InputSize.Small] = -25,
	[InputSize.XSmall] = -50,
}

local function DefaultStory(props)
	local controls = props.controls

	local value, setValue = React.useState(0)

	local function handleChange(newValue: number)
		print("newValue", newValue)
		setValue(newValue)
	end
	return React.createElement(
		View,
		{
			tag = "row gap-medium auto-y size-full-0 align-y-center",
		},
		Dash.map(
			{ InputSize.Large, InputSize.Medium, InputSize.Small, InputSize.XSmall } :: { InputSize },
			function(size: InputSize)
				return React.createElement(NumberInput, {
					value = value,
					controlsVariant = props.controlsVariant,
					hasError = controls.hasError,
					isDisabled = controls.isDisabled,
					isRequired = controls.isRequired,
					onChanged = handleChange,
					formatAsString = function(numValue: number)
						return `{numValue}px`
					end,
					label = controls.label,
					size = size,
					width = UDim.new(0, controls.baseWidth :: number + widthOffset[size]),
					maximum = controls.maximum,
					minimum = controls.minimum,
					step = controls.step,
					hint = controls.hint,
					precision = controls.precision,
					leadingIcon = if controls.leadingIcon == React.None then nil else controls.leadingIcon,
					isScrubbable = controls.isScrubbable,
				})
			end
		)
	)
end

return {
	summary = "NumberInput",
	stories = Dash.map(Dash.values(NumberInputControlsVariant), function(controlsVariant)
		return {
			name = controlsVariant,
			story = function(props)
				return React.createElement(DefaultStory, Dash.join(props, { controlsVariant = controlsVariant }))
			end,
		}
	end),
	controls = {
		label = "Label",
		hint = "Number from -5 to 100",
		isRequired = { React.None, false, true },
		hasError = false,
		isDisabled = false,
		maximum = 100,
		minimum = -5,
		step = 0.2,
		precision = 2,
		baseWidth = 200,
		controlsVariant = Dash.values(NumberInputControlsVariant),
		isScrubbable = false,
		leadingIcon = {
			"icons/placeholder/placeholderOn_small",
			"icons/status/private_small",
			"icons/common/search_small",
			React.None,
		},
	},
}
