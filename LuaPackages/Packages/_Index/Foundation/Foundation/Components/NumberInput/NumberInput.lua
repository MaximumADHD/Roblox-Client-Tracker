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
local Icon = require(Components.Icon)
local View = require(Components.View)
local getInputTextSize = require(Foundation.Utility.getInputTextSize)
local useTokens = require(Foundation.Providers.Style.useTokens)
local useTextInputVariants = require(Components.TextInput.useTextInputVariants)
local Types = require(Components.Types)
local Flags = require(Foundation.Utility.Flags)

local NumberInputControls = require(script.Parent.NumberInputControls)
local useNumberInputVariants = require(script.Parent.useNumberInputVariants)

local calculateNumberInputValueFromPositions = require(script.Parent.calculateNumberInputValueFromPositions)

export type NumberInputRef = Types.TextInputRef

local function round(num: number, numDecimalPlaces: number?)
	local mult = 10 ^ (numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

export type NumberInputProps = {
	-- Input number value
	value: number?,
	-- Variant of controls to use
	controlsVariant: NumberInputControlsVariant?,
	-- Whether the input shows an error state. Always shows while true, if false then invalid input will still render an error state.
	hasError: boolean?,
	-- Size of the number input
	size: InputSize?,
	-- Whether the input is disabled
	isDisabled: boolean?,
	-- Whether the input is required, true for "*", false for " (optional)", nil for nothing
	isRequired: boolean?,
	-- The callback that processes the new value
	onChanged: (number: number) -> (),
	-- Input label text. To omit, set to an empty string
	label: string,
	-- Hint text below the input, is red on error
	hint: string?,
	-- Width of the component
	width: UDim?,
	-- Image before the input
	leadingIcon: string?,
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
	-- Whether the input can be dragged to change the value
	isScrubbable: boolean?,
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
	isScrubbable = false,
	testId = "--foundation-number-input",
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
		leadingIcon: string?,
		isScrubbable: boolean?,
		testId: string,
		-- Partial TextBox ref exposed via imperative handle
		textBoxRef: React.Ref<NumberInputRef>?,
		onFocusGained: (() -> ())?,
		onFocusLost: (() -> ())?,
		onReturnPressed: (() -> ())?,
	} & Types.CommonProps

	local tokens = useTokens()
	local variantProps = useTextInputVariants(tokens, props.size)
	local NumberInputControlsVariantProps = useNumberInputVariants(tokens, props.size)

	local focused, setFocused = React.useState(false)
	-- Remove with Flag.FoundationNumberInputDraggingDeltaFix
	local lastDragPosition = if Flags.FoundationNumberInputDraggingDeltaFix
		then nil :: never
		else React.useRef(nil :: Vector2?)
	local dragStartTable = if Flags.FoundationNumberInputDraggingDeltaFix
		then React.useRef(nil :: { position: number, value: number }?)
		else nil :: never
	local isDisabledUp, isDisabledDown, upValue, downValue

	local hasInvalidInput, setHasInvalidInput = React.useState(false)
	local hasError = props.hasError or hasInvalidInput

	local clampValueToRange = React.useCallback(function(value: number)
		return math.clamp(value, props.minimum, props.maximum)
	end, { props.minimum, props.maximum })

	local snapToStep = React.useCallback(function(value: number, roundFunction: (number) -> number)
		return roundFunction(value / props.step) * props.step
	end, { props.step })

	if not focused then
		local roundedValue = round(props.value, props.precision)
		local newUpValue = round(props.value + props.step, props.precision)
		local newDownValue = round(props.value - props.step, props.precision)

		local snapUpValue = round(snapToStep(props.value, math.ceil), props.precision)
		local snapDownValue = round(snapToStep(props.value, math.floor), props.precision)
		if roundedValue ~= snapUpValue then
			newUpValue = snapUpValue
		end
		if roundedValue ~= snapDownValue then
			newDownValue = snapDownValue
		end

		upValue = clampValueToRange(newUpValue)
		downValue = clampValueToRange(newDownValue)

		isDisabledUp = props.value == props.maximum
		isDisabledDown = props.value == props.minimum
	end

	-- Should we have a default value?
	local roundedValue = if props.value then round(props.value, props.precision) else 0
	local currentText = if focused then tostring(props.value) else props.formatAsString(roundedValue)
	local controlsVariant = props.controlsVariant

	local currentTextRef = React.useRef(currentText)
	currentTextRef.current = tostring(props.value)

	-- Get percentage of where the value is between min and max
	local percentage = React.useMemo(function()
		if props.value and props.maximum and props.minimum then
			local currentValue = clampValueToRange(props.value)
			if props.maximum == props.minimum then
				return 1
			else
				return (currentValue - props.minimum) / (props.maximum - props.minimum)
			end
		end
		return 0
	end, { props.value, props.maximum, props.minimum })

	local onFocus = React.useCallback(function()
		setFocused(true)
		if props.onFocusGained then
			props.onFocusGained()
		end
	end, { setFocused, props.onFocusGained } :: { unknown })

	local onFocusLost = React.useCallback(
		function()
			setFocused(false)
			setHasInvalidInput(false)
			local v = math.clamp(props.value, props.minimum, props.maximum)
			props.onChanged(round(v, props.precision))
			if props.onFocusLost then
				props.onFocusLost()
			end
		end,
		{ setFocused, props.onChanged, props.onFocusLost, props.maximum, props.minimum, props.precision, props.value } :: { unknown }
	)

	local onChanged = React.useCallback(function(text)
		if not focused then
			return
		end

		local n = tonumber(text)
		if n == nil then
			setHasInvalidInput(true)
			return
		else
			setHasInvalidInput(false)
		end
		props.onChanged(n :: number)
	end, { focused, props.onChanged } :: { unknown })

	local onIncrement = React.useCallback(function()
		if props.isDisabled or isDisabledUp then
			return
		end
		props.onChanged(upValue)
	end, { props.isDisabled, isDisabledUp, upValue, props.onChanged } :: { unknown })

	local onDecrement = React.useCallback(function()
		if props.isDisabled or isDisabledDown then
			return
		end
		props.onChanged(downValue)
	end, { props.isDisabled, isDisabledDown, downValue, props.onChanged } :: { unknown })

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
		testId = props.testId,
	})

	local widthOffset = React.useMemo(function()
		if controlsVariant == NumberInputControlsVariant.Split then
			return UDim.new(0, (2 * NumberInputControlsVariantProps.splitButton.size) + (2 * tokens.Gap.XSmall))
		end

		return UDim.new()
	end, { tokens, controlsVariant } :: { any })

	local onDragStarted = React.useCallback(function(_rbx, position: Vector2)
		if not props.isScrubbable then
			return
		end
		if Flags.FoundationNumberInputDraggingDeltaFix then
			local value = tonumber(currentTextRef.current)
			if dragStartTable and value then
				dragStartTable.current = { position = position.X, value = value }
			end
		else
			lastDragPosition.current = position
		end
	end, { props.isScrubbable } :: { unknown })

	local onDrag = React.useCallback(function(_rbx, position: Vector2)
		if not props.isScrubbable then
			return
		end
		if Flags.FoundationNumberInputDraggingDeltaFix then
			if dragStartTable and dragStartTable.current then
				local newValue = calculateNumberInputValueFromPositions(
					dragStartTable.current.value,
					dragStartTable.current.position,
					position.X,
					props.step
				)
				newValue = math.clamp(round(newValue, props.precision), props.minimum, props.maximum)
				props.onChanged(newValue)
			end
		else
			if lastDragPosition.current then
				local delta = (position - lastDragPosition.current).X
				local normalize = delta / math.abs(delta)

				if normalize ~= normalize then
					-- Check for normalize being NaN
					normalize = 0
				end

				lastDragPosition.current = position

				local current = tonumber(currentTextRef.current) :: number
				if current then
					local newValue = round(current + normalize * props.step, props.precision)
					newValue = math.clamp(newValue, props.minimum, props.maximum)
					props.onChanged(newValue)
				end
			end
		end
	end, { props.isScrubbable, props.onChanged } :: { unknown })

	local onDragEnded = React.useCallback(function()
		if not props.isScrubbable then
			return
		end
		if Flags.FoundationNumberInputDraggingDeltaFix then
			if dragStartTable and dragStartTable.current then
				dragStartTable.current = nil
			end
		else
			lastDragPosition.current = nil
		end
	end, { props.isScrubbable } :: { unknown })

	local numberSequence = React.useMemo(function()
		if percentage == 0 then
			return NumberSequence.new(1)
		elseif percentage == 1 then
			return NumberSequence.new(0)
		elseif percentage > 0 or percentage < 1 then
			local numberSequenceKeypoints = {
				NumberSequenceKeypoint.new(0, 0),
				NumberSequenceKeypoint.new(percentage, 0),
				NumberSequenceKeypoint.new(math.min(percentage + 0.001, 1), 1),
			}
			if percentage < 0.999 then
				table.insert(numberSequenceKeypoints, NumberSequenceKeypoint.new(1, 1))
			end

			return NumberSequence.new(numberSequenceKeypoints)
		end
		return NumberSequence.new(1)
	end, { percentage } :: { any })

	return React.createElement(
		InputField,
		withCommonProps(props, {
			width = props.width,
			ref = ref,
			hasError = hasError,
			label = props.label,
			size = getInputTextSize(props.size),
			isRequired = props.isRequired,
			hint = props.hint,
			textBoxRef = props.textBoxRef,
			input = function(inputRef)
				local isSplitVariant = controlsVariant == NumberInputControlsVariant.Split

				local input = React.createElement(InternalTextInput, {
					text = currentText,
					hasError = hasError,
					size = props.size,
					horizontalPadding = {
						left = variantProps.innerContainer.horizontalPadding,
					},
					onChanged = onChanged,
					onFocusLost = onFocusLost,
					onFocus = onFocus,
					onDragStarted = onDragStarted,
					onDrag = onDrag,
					onDragEnded = onDragEnded,
					onReturnPressed = props.onReturnPressed,
					ref = inputRef,
					backgroundElement = if props.isScrubbable and numberSequence
						then React.createElement(View, {
							backgroundStyle = tokens.Color.Shift.Shift_300,
							tag = {
								["size-full"] = true,
								["radius-medium"] = props.size ~= InputSize.XSmall,
								["radius-small"] = props.size == InputSize.XSmall,
							},
						}, {
							Gradient = React.createElement("UIGradient", {
								Color = ColorSequence.new(tokens.Color.Shift.Shift_300.Color3),
								Transparency = numberSequence,
								Rotation = 0,
							}),
						})
						else nil,
					trailingElement = if controlsVariant == NumberInputControlsVariant.Stacked then controls else nil,
					leadingElement = if props.leadingIcon
						then React.createElement(
							View,
							{ tag = "size-0-full auto-x row align-y-center" },
							React.createElement(Icon, {
								name = props.leadingIcon,
								style = variantProps.icon.style,
								size = variantProps.icon.size,
							})
						)
						else nil,
					isDisabled = props.isDisabled,
					testId = `{props.testId}--field`,
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
