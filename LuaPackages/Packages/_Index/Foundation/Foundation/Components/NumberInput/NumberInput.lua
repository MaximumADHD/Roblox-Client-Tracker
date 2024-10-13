local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Components = Foundation.Components
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
type InputLabelSize = InputLabelSize.InputLabelSize

local InternalTextInput = require(Components.InternalTextInput)
local InputField = require(Components.InputField)
local Types = require(Components.Types)

local NumberInputControls = require(script.Parent.NumberInputControls)

local function round(num: number, numDecimalPlaces: number?)
	local mult = 10 ^ (numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

export type Props = {
	-- Input number value
	value: number?,
	-- Whether the input is disabled
	isDisabled: boolean?,
	-- Whether the input is required, true for "*", false for " (optional)", nil for nothing
	isRequired: boolean?,
	onChanged: (number: number) -> (),
	-- Input label text. To omit, set to an empty string
	label: string,
	-- Hint text below the input, is red on error
	hint: string?,
	-- Width of the component
	width: UDim?,
	-- Value that will be added/subtracted every time you press increment/decrement controls
	step: number?,
	-- Maximum value input may reach via increment
	maximum: number?,
	-- Minimum value input may reach via decrement
	minimum: number?,
	-- Precision that will be used to display a value. Value will be rounded to the nearest value. With the precision being 3 0.0001 will be rounded to 0, 0.0006 to 0.001
	precision: number?,
	-- Callback to format the value when input is not focused
	formatAsString: ((value: number) -> string)?,
} & Types.CommonProps

local function defaultFormatAsString(value: number)
	return tostring(value)
end

local defaultProps = {
	minimum = -math.huge,
	maximum = math.huge,
	step = 1,
	precision = 3,
	value = 0,
	formatAsString = defaultFormatAsString,
	width = UDim.new(0, 400),
}

local function NumberInput(numberInputProps: Props, ref: React.Ref<GuiObject>?)
	local props = withDefaults(numberInputProps, defaultProps) :: {
		isDisabled: boolean?,
		step: number,
		maximum: number,
		minimum: number,
		precision: number,
		value: number,
		onChanged: (number: number) -> (),
		formatAsString: (value: number) -> string,
		isRequired: boolean?,
		label: string,
		hint: string?,
		width: UDim,
	} & Types.CommonProps
	local focused, setFocused = React.useState(false)
	local isDisabledUp
	local isDisabledDown
	local upValue
	local downValue

	if not focused then
		upValue = round(props.value + props.step, props.precision)
		isDisabledUp = upValue > props.maximum
		downValue = round(props.value - props.step, props.precision)
		isDisabledDown = downValue < props.minimum
	end

	-- Should we have a default value?
	local roundedValue = if props.value then round(props.value, props.precision) else 0
	local currentText = if focused then tostring(props.value) else props.formatAsString(roundedValue)

	local onFocus = React.useCallback(function()
		setFocused(true)
	end, { setFocused })

	local onFocusLost = React.useCallback(function()
		setFocused(false)
		local v = math.clamp(props.value, props.minimum, props.maximum)
		props.onChanged(round(v, props.precision))
	end, { setFocused :: unknown, props.onChanged, props.maximum, props.minimum, props.precision, props.value })

	local onChanged = React.useCallback(function(text)
		if not focused then
			return
		end
		local n = tonumber(text)
		if n == nil then
			--Prohibit new values that are not numbers
			return
		end
		props.onChanged(n :: number)
	end, { focused :: unknown, props.onChanged })

	return React.createElement(
		InputField,
		withCommonProps(props, {
			width = props.width,
			ref = ref,
			label = props.label,
			size = InputLabelSize.Small,
			isRequired = props.isRequired,
			hint = props.hint,
			input = function(inputRef)
				return React.createElement(InternalTextInput, {
					text = currentText,
					onChanged = onChanged,
					onFocusLost = onFocusLost,
					onFocus = onFocus,
					ref = inputRef,
					trailingElement = React.createElement(NumberInputControls, {
						up = {
							isDisabled = props.isDisabled or isDisabledUp,
							onClick = function()
								if props.isDisabled or isDisabledUp then
									return
								end
								props.onChanged(upValue)
							end,
						},
						down = {
							isDisabled = props.isDisabled or isDisabledDown,
							onClick = function()
								if props.isDisabled or isDisabledDown then
									return
								end
								props.onChanged(downValue)
							end,
						},
					}),
					isDisabled = props.isDisabled,
					tag = "padding-x-medium",
				})
			end,
		})
	)
end

return React.forwardRef(NumberInput)
