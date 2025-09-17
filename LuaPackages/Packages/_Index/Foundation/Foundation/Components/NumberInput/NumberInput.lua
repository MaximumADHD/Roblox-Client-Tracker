local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Components = Foundation.Components
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
type InputLabelSize = InputLabelSize.InputLabelSize

local NumberInputControlsVariant = require(Foundation.Enums.NumberInputControlsVariant)
type NumberInputControlsVariant = NumberInputControlsVariant.NumberInputControlsVariant

local InternalTextInput = require(Components.InternalTextInput)
local InputField = require(Components.InputField)
local View = require(Components.View)
local getInputTextSize = require(Foundation.Utility.getInputTextSize)
local useTokens = require(Foundation.Providers.Style.useTokens)
local useTextInputVariants = require(Components.TextInput.useTextInputVariants)
local Types = require(Components.Types)
local Flags = require(Foundation.Utility.Flags)

local NumberInputControls = require(script.Parent.NumberInputControls)
local useNumberInputVariants = require(script.Parent.useNumberInputVariants)

local function round(num: number, numDecimalPlaces: number?)
	local mult = 10 ^ (numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

export type NumberInputProps = {
	-- Input number value
	value: number?,
	-- Variant of controls to use
	controlsVariant: NumberInputControlsVariant?,
	-- Whether the input is in an error state
	hasError: boolean?,
	-- Size of the number input
	size: InputSize?,
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
	controlsVariant = NumberInputControlsVariant.Stacked,
	size = InputSize.Large,
	minimum = -math.huge,
	maximum = math.huge,
	step = 1,
	precision = 3,
	value = 0,
	formatAsString = defaultFormatAsString,
	width = UDim.new(0, 400),
}

local function NumberInput(numberInputProps: NumberInputProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(numberInputProps, defaultProps) :: {
		controlsVariant: NumberInputControlsVariant?,
		hasError: boolean?,
		isDisabled: boolean?,
		size: InputSize,
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

	local tokens = useTokens()
	local variantProps = useTextInputVariants(tokens, props.size)
	local NumberInputControlsVariantProps = useNumberInputVariants(tokens, props.size)

	local focused, setFocused = React.useState(false)
	local isDisabledUp, isDisabledDown, upValue, downValue

	local clampValueToRange = React.useCallback(function(value: number)
		return math.clamp(value, props.minimum, props.maximum)
	end, { props.minimum, props.maximum })

	if not focused then
		if Flags.FoundationNumberInputIncrementClamp then
			upValue = clampValueToRange(round(props.value + props.step, props.precision))
			isDisabledUp = props.value == props.maximum
			downValue = clampValueToRange(round(props.value - props.step, props.precision))
			isDisabledDown = props.value == props.minimum
		else
			upValue = round(props.value + props.step, props.precision)
			isDisabledUp = upValue > props.maximum
			downValue = round(props.value - props.step, props.precision)
			isDisabledDown = downValue < props.minimum
		end
	end

	-- Should we have a default value?
	local roundedValue = if props.value then round(props.value, props.precision) else 0
	local currentText = if focused then tostring(props.value) else props.formatAsString(roundedValue)
	local controlsVariant = props.controlsVariant

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
			-- Prohibit new values that are not numbers
			return
		end
		props.onChanged(n :: number)
	end, { focused :: unknown, props.onChanged })

	local onIncrement = React.useCallback(function()
		if props.isDisabled or isDisabledUp then
			return
		end
		props.onChanged(upValue)
	end, { props.isDisabled, isDisabledUp, props.onChanged } :: { any })

	local onDecrement = React.useCallback(function()
		if props.isDisabled or isDisabledDown then
			return
		end
		props.onChanged(downValue)
	end)

	local controls = React.createElement(NumberInputControls, {
		variant = controlsVariant :: NumberInputControlsVariant,
		size = props.size,
		increment = {
			isDisabled = props.isDisabled or isDisabledUp,
			onClick = onIncrement,
		},
		decrement = {
			isDisabled = props.isDisabled or isDisabledDown,
			onClick = onDecrement,
		},
	})

	local widthOffset = React.useMemo(function()
		if controlsVariant == NumberInputControlsVariant.Split then
			return UDim.new(0, (2 * NumberInputControlsVariantProps.splitButton.size) + (2 * tokens.Gap.XSmall))
		end

		return UDim.new()
	end, { tokens, controlsVariant } :: { any })

	return React.createElement(
		InputField,
		withCommonProps(props, {
			width = props.width,
			ref = ref,
			hasError = props.hasError,
			label = props.label,
			size = getInputTextSize(props.size),
			isRequired = props.isRequired,
			hint = props.hint,
			input = function(inputRef)
				local isSplitVariant = controlsVariant == NumberInputControlsVariant.Split

				local input = React.createElement(InternalTextInput, {
					text = currentText,
					hasError = props.hasError,
					size = props.size,
					horizontalPadding = {
						left = variantProps.innerContainer.horizontalPadding,
					},
					onChanged = onChanged,
					onFocusLost = onFocusLost,
					onFocus = onFocus,
					ref = inputRef,
					trailingElement = if controlsVariant == NumberInputControlsVariant.Stacked then controls else nil,
					isDisabled = props.isDisabled,
				})

				return if isSplitVariant
					then React.createElement(View, {
						Size = UDim2.fromOffset(props.width.Offset - widthOffset.Offset, 0),
						tag = "row gap-xsmall auto-y align-y-center",
					}, {
						InputField = input,
						Controls = if isSplitVariant then controls else nil,
					})
					else input
			end,
		})
	)
end

return React.memo(React.forwardRef(NumberInput))
