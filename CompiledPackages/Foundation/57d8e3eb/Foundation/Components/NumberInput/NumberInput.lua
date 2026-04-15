local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)

local Components = Foundation.Components
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
type InputLabelSize = InputLabelSize.InputLabelSize

local NumberInputControlsVariant = require(Foundation.Enums.NumberInputControlsVariant)
type NumberInputControlsVariant = NumberInputControlsVariant.NumberInputControlsVariant

local OnChangeCallbackReason = require(Foundation.Enums.OnChangeCallbackReason)
type OnChangeCallbackReason = OnChangeCallbackReason.OnChangeCallbackReason

local Flags = require(Foundation.Utility.Flags)
local Icon = require(Components.Icon)
local InputField = require(Components.InputField)
local InternalTextInput = require(Components.InternalTextInput)
local Types = require(Components.Types)
local View = require(Components.View)
local getInputTextSize = require(Foundation.Utility.getInputTextSize)
local useTextInputVariants = require(Components.TextInput.useTextInputVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)

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
	onChanged: (number: number, reason: OnChangeCallbackReason) -> (),
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
	isScrubbable = false,
	testId = "--foundation-number-input",
}

local function NumberInput(numberInputProps: NumberInputProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(numberInputProps, defaultProps) :: {
		controlsVariant: NumberInputControlsVariant,
		hasError: boolean?,
		isDisabled: boolean?,
		size: InputSize,
		step: number,
		maximum: number,
		minimum: number,
		precision: number,
		value: number,
		onChanged: (number: number, reason: OnChangeCallbackReason) -> (),
		formatAsString: (value: number) -> string,
		isRequired: boolean?,
		label: string,
		hint: string?,
		width: UDim?,
		leadingIcon: string?,
		isScrubbable: boolean?,
		testId: string,
		-- Partial TextBox ref exposed via imperative handle
		textBoxRef: React.Ref<NumberInputRef>?,
		onFocusGained: (() -> ())?,
		-- Called when focus is lost. The InputObject that caused focus to be lost is passed if available.
		onFocusLost: ((inputObject: InputObject?) -> ())?,
		onReturnPressed: (() -> ())?,
	} & Types.CommonProps

	local tokens = useTokens()
	local variantProps = useTextInputVariants(tokens, props.size)
	local NumberInputControlsVariantProps = useNumberInputVariants(
		tokens,
		props.size,
		if Flags.FoundationNumberInputFixControlSizes then props.controlsVariant else nil
	)

	local internalTextBoxRef = React.useRef(nil)
	local numberInputRef = (
		ReactUtils.useComposedRef(internalTextBoxRef, (props.textBoxRef :: unknown) :: React.Ref<Instance>) :: unknown
	) :: React.Ref<NumberInputRef>
	local dragStartTable = React.useRef(nil :: { position: number, value: number }?)

	local isFocused = React.useCallback(function()
		return if internalTextBoxRef.current then internalTextBoxRef.current.getIsFocused() else false
	end, {})

	local hasInvalidInput, setHasInvalidInput = React.useState(false)
	local hasError = props.hasError or hasInvalidInput
	local controlsVariant = props.controlsVariant

	local clampValueToRange = React.useCallback(function(value: number)
		return math.clamp(value, props.minimum, props.maximum)
	end, { props.minimum, props.maximum })

	local snapToStep = React.useCallback(function(value: number, roundFunction: (number) -> number)
		return roundFunction(value / props.step) * props.step
	end, { props.step })

	local upValue = React.useMemo(function()
		local roundedValue = round(props.value, props.precision)
		local newUpValue = round(props.value + props.step, props.precision)
		local snapUpValue = round(snapToStep(props.value, math.ceil), props.precision)
		if roundedValue ~= snapUpValue then
			newUpValue = snapUpValue
		end
		return clampValueToRange(newUpValue)
	end, { props.value, props.step, props.precision, clampValueToRange, snapToStep } :: { unknown })

	local downValue = React.useMemo(function()
		local roundedValue = round(props.value, props.precision)
		local newDownValue = round(props.value - props.step, props.precision)
		local snapDownValue = round(snapToStep(props.value, math.floor), props.precision)
		if roundedValue ~= snapDownValue then
			newDownValue = snapDownValue
		end
		return clampValueToRange(newDownValue)
	end, { props.value, props.step, props.precision, clampValueToRange, snapToStep } :: { unknown })

	local isUpDisabled = React.useMemo(function()
		return props.isDisabled or props.value == props.maximum
	end, { props.isDisabled, props.value, props.maximum } :: { unknown })

	local isDownDisabled = React.useMemo(function()
		return props.isDisabled or props.value == props.minimum
	end, { props.isDisabled, props.value, props.minimum } :: { unknown })

	local constrainValue = React.useCallback(function(value: number)
		return round(math.clamp(value, props.minimum, props.maximum), props.precision)
	end, { props.minimum, props.maximum, props.precision } :: { unknown })

	local textInput, setTextInput = React.useBinding(props.formatAsString(constrainValue(props.value)))

	local width = if props.width
		then props.width :: UDim
		else UDim.new(0, NumberInputControlsVariantProps.container.width)

	-- Get percentage of where the value is between min and max
	local scrubPercentage = React.useMemo(function()
		if props.value and props.maximum and props.minimum then
			local currentValue = clampValueToRange(props.value)
			if props.maximum == props.minimum then
				return 1
			else
				return (currentValue - props.minimum) / (props.maximum - props.minimum)
			end
		end
		return 0
	end, { props.value, props.maximum, props.minimum, clampValueToRange } :: { unknown })

	local onFocus = React.useCallback(function()
		setTextInput(tostring(props.value))

		if props.onFocusGained then
			props.onFocusGained()
		end
	end, { props.onFocusGained, props.value } :: { unknown })

	local valueChanged = React.useCallback(function(value: number, reason: OnChangeCallbackReason)
		value = constrainValue(value)
		setTextInput(if isFocused() then tostring(value) else props.formatAsString(value))
		props.onChanged(value, reason)
	end, { props.onChanged, props.formatAsString, constrainValue, isFocused } :: { unknown })

	local onFocusLost = React.useCallback(function(inputObject: InputObject?)
		setHasInvalidInput(false)
		valueChanged(props.value, OnChangeCallbackReason.FocusLost)

		if props.onFocusLost then
			props.onFocusLost(inputObject)
		end
	end, { valueChanged, props.onFocusLost, props.value, constrainValue } :: { unknown })

	local onTextChanged = React.useCallback(function(text)
		setTextInput(text)
		if not isFocused() then
			return
		end

		local n = tonumber(text)
		if n == nil then
			setHasInvalidInput(true)
			return
		else
			setHasInvalidInput(false)
		end
		props.onChanged(n :: number, OnChangeCallbackReason.Keyboard)
	end, { isFocused, props.onChanged } :: { unknown })

	local onIncrement = React.useCallback(function()
		if isUpDisabled then
			return
		end
		valueChanged(upValue, OnChangeCallbackReason.Activate)
	end, { isUpDisabled, upValue, valueChanged } :: { unknown })

	local onDecrement = React.useCallback(function()
		if isDownDisabled then
			return
		end
		valueChanged(downValue, OnChangeCallbackReason.Activate)
	end, { isDownDisabled, downValue, valueChanged } :: { unknown })

	local controls = React.createElement(NumberInputControls, {
		variant = controlsVariant :: NumberInputControlsVariant,
		size = props.size,
		increment = {
			isDisabled = isUpDisabled,
			onClick = onIncrement,
		},
		decrement = {
			isDisabled = isDownDisabled,
			onClick = onDecrement,
		},
		testId = props.testId,
	})

	local widthOffset = React.useMemo(
		function()
			if controlsVariant == NumberInputControlsVariant.Split then
				return UDim.new(0, (2 * NumberInputControlsVariantProps.splitButton.size) + (2 * tokens.Gap.XSmall))
			end

			return UDim.new()
		end,
		{ tokens, controlsVariant, NumberInputControlsVariantProps.splitButton.size, tokens.Gap.XSmall } :: { unknown }
	)

	local onDragStarted = React.useCallback(function(_rbx, position: Vector2)
		local value = props.value
		if value then
			dragStartTable.current = { position = position.X, value = value }
		end
	end, { props.value } :: { unknown })

	local onDrag = React.useCallback(function(_rbx, position: Vector2)
		if dragStartTable.current then
			local newValue = calculateNumberInputValueFromPositions(
				dragStartTable.current.value,
				dragStartTable.current.position,
				position.X,
				props.step
			)
			valueChanged(newValue, OnChangeCallbackReason.Drag)
		end
	end, { valueChanged, props.step, constrainValue } :: { unknown })

	local onDragEnded = React.useCallback(function()
		if dragStartTable.current then
			dragStartTable.current = nil
		end
	end, {})

	local filledStyleTransparency = tokens.Color.Shift.Shift_300.Transparency
	local unfilledStyleTransparency = tokens.Color.Shift.Shift_100.Transparency
	local scrubbableTransparencySequence = React.useMemo(function()
		if scrubPercentage == 0 then
			return NumberSequence.new(unfilledStyleTransparency)
		elseif scrubPercentage == 1 then
			return NumberSequence.new(filledStyleTransparency)
		elseif scrubPercentage > 0 or scrubPercentage < 1 then
			local numberSequenceKeypoints = {
				NumberSequenceKeypoint.new(0, filledStyleTransparency),
				NumberSequenceKeypoint.new(scrubPercentage, filledStyleTransparency),
				NumberSequenceKeypoint.new(math.min(scrubPercentage + 0.001, 1), unfilledStyleTransparency),
			}
			if scrubPercentage < 0.999 then
				table.insert(numberSequenceKeypoints, NumberSequenceKeypoint.new(1, unfilledStyleTransparency))
			end

			return NumberSequence.new(numberSequenceKeypoints)
		end
		return NumberSequence.new(unfilledStyleTransparency)
	end, { scrubPercentage, filledStyleTransparency, unfilledStyleTransparency } :: { unknown })

	React.useEffect(function()
		if not isFocused() then
			setTextInput(props.formatAsString(constrainValue(props.value)))
		end
	end, { props.value, props.formatAsString, constrainValue, isFocused } :: { unknown })

	return React.createElement(
		InputField,
		withCommonProps(props, {
			width = width,
			ref = ref,
			hasError = hasError,
			label = props.label,
			size = getInputTextSize(props.size),
			isRequired = props.isRequired,
			hint = props.hint,
			textBoxRef = numberInputRef,
			input = function(inputRef)
				local isSplitVariant = controlsVariant == NumberInputControlsVariant.Split

				local input = React.createElement(InternalTextInput, {
					text = textInput:map(function(text)
						if isFocused() then
							return text
						else
							return props.formatAsString(constrainValue(props.value))
						end
					end) :: any, -- TODO: fix in new solver?
					hasError = hasError,
					size = props.size,
					horizontalPadding = {
						left = variantProps.innerContainer.horizontalPadding,
					},
					onChanged = onTextChanged,
					onFocusLost = onFocusLost,
					onFocus = onFocus,
					onDragStarted = if props.isScrubbable then onDragStarted else nil,
					onDrag = if props.isScrubbable then onDrag else nil,
					onDragEnded = if props.isScrubbable then onDragEnded else nil,
					onReturnPressed = props.onReturnPressed,
					ref = inputRef,
					backgroundGradient = if props.isScrubbable and scrubbableTransparencySequence
						then React.createElement("UIGradient", {
							Color = ColorSequence.new(tokens.Color.Shift.Shift_300.Color3),
							Transparency = scrubbableTransparencySequence,
							Rotation = 0,
						})
						else nil,
					trailingElement = if controlsVariant == NumberInputControlsVariant.Stacked then controls else nil,
					leadingElement = if props.leadingIcon
						then React.createElement(
							View,
							{ tag = "row align-y-center size-0-full auto-x" },
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
						Size = UDim2.fromOffset(width.Offset - widthOffset.Offset, 0),
						tag = "row align-y-center gap-xsmall auto-y",
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
