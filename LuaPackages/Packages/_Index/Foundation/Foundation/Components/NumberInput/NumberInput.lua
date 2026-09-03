local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)
local ReactUtils = require(Packages.ReactUtils)

local Components = Foundation.Components
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
type InputLabelSize = InputLabelSize.InputLabelSize

local InputVariant = require(Foundation.Enums.InputVariant)
type InputVariant = InputVariant.InputVariant

local NumberInputControlsVariant = require(Foundation.Enums.NumberInputControlsVariant)
type NumberInputControlsVariant = NumberInputControlsVariant.NumberInputControlsVariant

local ScrubBehavior = require(Foundation.Enums.ScrubBehavior)
type ScrubBehavior = ScrubBehavior.ScrubBehavior

local OnChangeCallbackReason = require(Foundation.Enums.OnChangeCallbackReason)
type OnChangeCallbackReason = OnChangeCallbackReason.OnChangeCallbackReason

local Flags = require(Foundation.Utility.Flags)
local Icon = require(Components.Icon)
local InputField = require(Components.InputField)
local InternalTextInput = require(Components.InternalTextInput)
local Text = require(Components.Text)
local Types = require(Components.Types)
local View = require(Components.View)
local getBindableValue = require(Foundation.Utility.getBindableValue)
local getInputTextSize = require(Foundation.Utility.getInputTextSize)
local getMultiLineTextHeight = require(Foundation.Utility.getMultiLineTextHeight)
local isBuilderIcon = require(Foundation.Utility.isBuilderIcon)
local joinBindables = require(Foundation.Utility.joinBindables)
local mapBindable = require(Foundation.Utility.mapBindable)
local useIconSize = require(Foundation.Utility.useIconSize)
local useTextInputVariants = require(Components.TextInput.useTextInputVariants)
local useTextSize = require(Foundation.Utility.useTextSize)
local useTokens = require(Foundation.Providers.Style.useTokens)

local NumberInputControls = require(script.Parent.NumberInputControls)
local useNumberInputVariants = require(script.Parent.useNumberInputVariants)

local Constants = require(Foundation.Constants)
local calculateNumberInputValueFromPositions = require(script.Parent.calculateNumberInputValueFromPositions)

type Bindable<T> = Types.Bindable<T>

local InputFocusBehavior = require(Foundation.Enums.InputFocusBehavior)
type InputFocusBehavior = InputFocusBehavior.InputFocusBehavior

type TextInputRef = Types.TextInputRef

local function round(num: number, numDecimalPlaces: number?)
	local mult = 10 ^ (numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

local scrubBehaviorToSensitivity: { [ScrubBehavior]: number } = {
	[ScrubBehavior.On] = 1,
	[ScrubBehavior.Off] = 0,
}

export type NumberInputProps = {
	-- Input number value
	value: Bindable<number>?,
	-- **DEPRECATED** Variant of controls to use
	controlsVariant: NumberInputControlsVariant?,
	-- Whether the input shows an error state. Always shows while true, if false then invalid input will still render an error state.
	hasError: boolean?,
	-- Style variant of the input
	variant: InputVariant?,
	-- Size of the number input
	size: InputSize?,
	-- Whether the input is disabled
	isDisabled: boolean?,
	-- Whether the input is required, true for "*", false for " (optional)", nil for nothing
	isRequired: boolean?,
	-- The callback that processes the new value
	onChanged: (number: number, reason: OnChangeCallbackReason) -> (),
	-- The callback that fires when text is inputted into the value.
	-- This is used in rare scenarios such as mathematical expressions (letting people type `1 + 2`),
	-- and `onChanged` is virtually always what you want.
	onTextChanged: ((value: string) -> ())?,
	-- Input label text. To omit, set to an empty string
	label: string,
	-- Hint text below the input, is red on error
	hint: string?,
	-- Width of the component
	width: UDim?,
	-- Image before the input
	leadingIcon: string?,
	-- Icon after the input
	trailingIcon: string?,
	-- The prefix to display before the input (e.g. $ or €)
	prefix: string?,
	-- The suffix to display after the input (e.g. % or px)
	suffix: string?,
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
	-- Whether the input can be dragged to change the value. A number sets the scrub sensitivity.
	-- **DEPRECATED** Use scrubBehavior instead
	isScrubbable: boolean?,
	-- Controls scrub (drag-to-change) behavior
	scrubBehavior: ScrubBehavior?,
	-- The callback that fires when scrubbing starts
	onScrubStarted: (() -> ())?,
	-- The callback that fires when scrubbing ends
	onScrubEnded: (() -> ())?,
	-- Behavior of the text input when focused. Mobile does not yet support Highlight behavior.
	focusBehavior: InputFocusBehavior?,
	-- Called when the input gains focus
	onFocusGained: (() -> ())?,
	-- Called when focus is lost. The InputObject that caused focus to be lost is passed if available.
	onFocusLost: ((inputObject: InputObject?) -> ())?,
	-- Called when Return is pressed while the input is focused
	onReturnPressed: (() -> ())?,
	-- Ref to the outermost container element of the internal text input
	inputRef: React.Ref<GuiObject>?,
	-- Partial TextBox ref exposed via imperative handle
	textBoxRef: React.Ref<TextInputRef>?,
	-- Whether the input renders increment/decrement controls
	hasControls: boolean?,
} & Types.SelectionProps & Types.CommonProps

local function defaultFormatAsString(value: number)
	return tostring(value)
end

local defaultProps = {
	variant = InputVariant.Standard,
	controlsVariant = if Flags.FoundationNumberInputBeta then nil else NumberInputControlsVariant.Stacked,
	size = InputSize.Large,
	minimum = -math.huge,
	maximum = math.huge,
	step = 1,
	precision = 3,
	value = 0,
	formatAsString = defaultFormatAsString,
	isScrubbable = false,
	scrubBehavior = ScrubBehavior.Off,
	hasControls = false,
	testId = "--foundation-number-input",
}

-- selene: allow(high_cyclomatic_complexity) remove with FoundationNumberInputBeta
local function NumberInput(numberInputProps: NumberInputProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(numberInputProps, defaultProps) :: {
		variant: InputVariant,
		-- Deprecated
		controlsVariant: NumberInputControlsVariant?,
		hasError: boolean?,
		isDisabled: boolean?,
		size: InputSize,
		step: number,
		maximum: number,
		minimum: number,
		precision: number,
		value: Bindable<number>,
		onChanged: (number: number, reason: OnChangeCallbackReason) -> (),
		onTextChanged: ((value: string) -> ())?,
		formatAsString: (value: number) -> string,
		isRequired: boolean?,
		label: string,
		hint: string?,
		width: UDim?,
		leadingIcon: string?,
		trailingIcon: string?,
		prefix: string?,
		suffix: string?,
		isScrubbable: boolean,
		scrubBehavior: ScrubBehavior,
		onScrubStarted: (() -> ())?,
		onScrubEnded: (() -> ())?,
		testId: string,
		-- Partial TextBox ref exposed via imperative handle
		textBoxRef: React.Ref<TextInputRef>?,
		onFocusGained: (() -> ())?,
		-- Called when focus is lost. The InputObject that caused focus to be lost is passed if available.
		onFocusLost: ((inputObject: InputObject?) -> ())?,
		onReturnPressed: (() -> ())?,
		-- Ref to the outermost container element of the internal text input
		inputRef: React.Ref<GuiObject>?,
		hasControls: boolean,
	} & Types.SelectionProps & Types.CommonProps

	local tokens = useTokens()
	local variantProps = useTextInputVariants(tokens, props.size, props.variant)
	local NumberInputControlsVariantProps = useNumberInputVariants(
		tokens,
		props.size,
		if Flags.FoundationNumberInputBeta then nil else props.controlsVariant
	)
	local controlsProps = if Flags.FoundationNumberInputBeta
		then NumberInputControlsVariantProps.controls
		else nil :: never

	local internalTextBoxRef = React.useRef(nil)
	local numberInputRef = (
		ReactUtils.useComposedRef(internalTextBoxRef, (props.textBoxRef :: unknown) :: React.Ref<Instance>) :: unknown
	) :: React.Ref<TextInputRef>
	local dragStartTable = React.useRef(nil :: { position: number, value: number }?)
	local hasScrubStarted = React.useRef(false)

	local isFocused = React.useCallback(function()
		return if internalTextBoxRef.current then internalTextBoxRef.current.getIsFocused() else false
	end, {})

	local hasInvalidInput, setHasInvalidInput = React.useState(false)
	local hasError = props.hasError or hasInvalidInput
	local controlsVariant: NumberInputControlsVariant? = props.controlsVariant
	local scrubBehavior: ScrubBehavior = if props.isScrubbable then ScrubBehavior.On else props.scrubBehavior
	local isScrubbable = scrubBehavior and scrubBehavior ~= ScrubBehavior.Off

	local scrubSensitivity = if Flags.FoundationNumberInputBeta then scrubBehaviorToSensitivity[scrubBehavior] else nil

	local clampValueToRange = React.useCallback(function(value: number)
		return math.clamp(value, props.minimum, props.maximum)
	end, { props.minimum, props.maximum })

	local snapToStep = React.useCallback(function(value: number, roundFunction: (number) -> number)
		return roundFunction(value / props.step) * props.step
	end, { props.step })

	local upValue = React.useMemo(function()
		return mapBindable(props.value, function(value)
			local roundedValue = round(value, props.precision)
			local newUpValue = round(value + props.step, props.precision)
			local snapUpValue = round(snapToStep(value, math.ceil), props.precision)
			if roundedValue ~= snapUpValue then
				newUpValue = snapUpValue
			end
			return clampValueToRange(newUpValue)
		end)
	end, { props.value, props.step, props.precision, clampValueToRange, snapToStep } :: { unknown })

	local downValue = React.useMemo(function()
		return mapBindable(props.value, function(value)
			local roundedValue = round(value, props.precision)
			local newDownValue = round(value - props.step, props.precision)
			local snapDownValue = round(snapToStep(value, math.floor), props.precision)
			if roundedValue ~= snapDownValue then
				newDownValue = snapDownValue
			end
			return clampValueToRange(newDownValue)
		end)
	end, { props.value, props.step, props.precision, clampValueToRange, snapToStep } :: { unknown })

	local isUpDisabled = React.useMemo(function()
		return mapBindable(props.value, function(value)
			return props.isDisabled or value == props.maximum
		end)
	end, { props.isDisabled, props.value, props.maximum } :: { unknown })

	local isDownDisabled = React.useMemo(function()
		return mapBindable(props.value, function(value)
			return props.isDisabled or value == props.minimum
		end)
	end, { props.isDisabled, props.value, props.minimum } :: { unknown })

	local constrainValue = React.useCallback(function(value: number)
		return round(math.clamp(value, props.minimum, props.maximum), props.precision)
	end, { props.minimum, props.maximum, props.precision } :: { unknown })

	local textInput, setTextInput =
		React.useBinding(props.formatAsString(constrainValue(getBindableValue(props.value))))

	local incrementButtonsGap = if Flags.FoundationNumberInputBeta
		then if props.size == InputSize.XSmall then tokens.Gap.Small - (tokens.Gap.XSmall / 2) else tokens.Gap.Small
		else nil :: never

	local hasUnits
	local prefixText
	local prefixTextSize
	local unitsPadding
	local unitsXOffsets: { left: UDim, right: UDim }
	if Flags.FoundationNumberInputBeta then
		local textBoxFontStyle = variantProps.textBox.fontStyle
		local textBoxFontSize = textBoxFontStyle.FontSize :: number

		hasUnits = (props.prefix and props.prefix ~= "") or (props.suffix and props.suffix ~= "")

		prefixText = if props.prefix then props.prefix .. " " else nil

		-- Floor FontSize before measuring: the engine floors TextSize on render,
		-- so fractional token sizes (e.g. BodyMedium = 17.64) overestimate width.
		local prefixFontStyle = React.useMemo(function()
			return {
				Font = textBoxFontStyle.Font,
				FontSize = math.floor(textBoxFontSize),
				LineHeight = textBoxFontStyle.LineHeight,
			}
		end, { textBoxFontStyle, textBoxFontSize } :: { unknown })
		prefixTextSize = useTextSize(prefixText, prefixFontStyle)

		local leadingIconSize = useIconSize(variantProps.icon.size, isBuilderIcon(props.leadingIcon)) :: UDim2
		local trailingIconSize = useIconSize(variantProps.icon.size, isBuilderIcon(props.trailingIcon)) :: UDim2
		local leadingIconWidth = if props.leadingIcon then leadingIconSize.X.Offset else 0
		local trailingIconWidth = if Flags.FoundationNumberInputBeta and props.trailingIcon
			then trailingIconSize.X.Offset
			else 0
		local containerGap = if props.size == InputSize.XSmall
			then tokens.Gap.Small
			elseif props.size == InputSize.Small then tokens.Gap.Medium
			else tokens.Gap.Large
		local leadingIconGap = if props.leadingIcon then containerGap else 0
		local trailingIconGap = if Flags.FoundationNumberInputBeta and props.trailingIcon then containerGap else 0

		unitsXOffsets = React.useMemo(
			function()
				return {
					left = UDim.new(
						0,
						variantProps.container.horizontalPadding.Offset + leadingIconWidth + leadingIconGap
					),
					right = UDim.new(
						0,
						variantProps.container.horizontalPadding.Offset + trailingIconWidth + trailingIconGap
					),
				}
			end,
			{
				variantProps.container.horizontalPadding,
				leadingIconGap,
				trailingIconGap,
				leadingIconWidth,
				trailingIconWidth,
			} :: { unknown }
		)

		-- Mirror InternalTextInput's textBoxWrapperPadding formula plus the 1px
		-- stroke inset so the overlay's text baseline matches the textbox's.
		unitsPadding = React.useMemo(
			function()
				local textHeight = getMultiLineTextHeight(textBoxFontSize, 1, textBoxFontStyle.LineHeight :: number)
				local outerBorderOffset = 2
				local containerPaddingY = math.round(
					(variantProps.container.minHeight - outerBorderOffset - textHeight) * 2
				) / 2
				local strokeInset = 1
				return {
					top = UDim.new(0, math.floor(containerPaddingY / 2) + strokeInset),
					bottom = UDim.new(0, math.ceil(containerPaddingY / 2) + strokeInset),
					left = UDim.new(),
					right = UDim.new(),
				}
			end,
			{
				variantProps.container.minHeight,
				textBoxFontStyle,
				textBoxFontSize,
			} :: { unknown }
		)
	end

	local width = if props.width
		then props.width :: UDim
		elseif Flags.FoundationNumberInputBeta then UDim.new(0, Constants.DEFAULT_NUMBER_INPUT_WIDTH)
		else UDim.new(0, NumberInputControlsVariantProps.container.width)

	local onFocus = React.useCallback(function()
		setTextInput(tostring(getBindableValue(props.value)))

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
		valueChanged(getBindableValue(props.value), OnChangeCallbackReason.FocusLost)

		if props.onFocusLost then
			props.onFocusLost(inputObject)
		end
	end, { valueChanged, props.onFocusLost, props.value, constrainValue } :: { unknown })

	local onTextChanged = React.useCallback(
		function(text)
			setTextInput(text)
			if not isFocused() then
				return
			end

			if Flags.FoundationNumberInputOnTextChanged then
				local n = tonumber(text)

				if props.onTextChanged ~= nil then
					props.onTextChanged(text)
				elseif n == nil then
					setHasInvalidInput(true)
					return
				end

				if n ~= nil then
					setHasInvalidInput(false)
					props.onChanged(n, OnChangeCallbackReason.Keyboard)
				end
			else
				local n = tonumber(text)
				if n == nil then
					setHasInvalidInput(true)
					return
				else
					setHasInvalidInput(false)
				end
				props.onChanged(n :: number, OnChangeCallbackReason.Keyboard)
			end
		end,
		{ isFocused, props.onChanged, if Flags.FoundationNumberInputOnTextChanged then props.onTextChanged else nil } :: { unknown }
	)

	local onIncrement = React.useCallback(function()
		if getBindableValue(isUpDisabled) then
			return
		end
		valueChanged(getBindableValue(upValue), OnChangeCallbackReason.Activate)
	end, { isUpDisabled, upValue, valueChanged } :: { unknown })

	local onDecrement = React.useCallback(function()
		if getBindableValue(isDownDisabled) then
			return
		end
		valueChanged(getBindableValue(downValue), OnChangeCallbackReason.Activate)
	end, { isDownDisabled, downValue, valueChanged } :: { unknown })

	local hasControls = if Flags.FoundationNumberInputBeta
		then props.hasControls
			and controlsVariant ~= NumberInputControlsVariant.None
			and controlsVariant ~= NumberInputControlsVariant.Stacked
		else nil

	local controls = if (Flags.FoundationNumberInputBeta and hasControls) or not Flags.FoundationNumberInputBeta
		then React.createElement(NumberInputControls, {
			variant = props.variant,
			controlsVariant = if Flags.FoundationNumberInputBeta
				then nil
				else controlsVariant :: NumberInputControlsVariant?,
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
		else nil

	local widthOffset = React.useMemo(
		function()
			if Flags.FoundationNumberInputBeta then
				if hasControls then
					return UDim.new(0, controlsProps.width + incrementButtonsGap)
				end
			elseif controlsVariant == NumberInputControlsVariant.Split then
				return UDim.new(0, (2 * NumberInputControlsVariantProps.splitButton.size) + (2 * tokens.Gap.XSmall))
			end

			return UDim.new()
		end,
		{
			tokens,
			controlsVariant,
			if Flags.FoundationNumberInputBeta then nil else NumberInputControlsVariantProps.splitButton.size,
			tokens.Gap.XSmall,
			if Flags.FoundationNumberInputBeta then controlsProps else nil,
			if Flags.FoundationNumberInputBeta then incrementButtonsGap else nil,
			if Flags.FoundationNumberInputBeta then hasControls else nil,
		} :: { unknown }
	)

	local onDragStarted = React.useCallback(function(_rbx, position: Vector2)
		local value = props.value
		hasScrubStarted.current = false
		if value then
			dragStartTable.current = {
				position = position.X,
				value = getBindableValue(value),
			}
		end
	end, { props.value })

	local onDrag = React.useCallback(
		function(_rbx, position: Vector2)
			if dragStartTable.current then
				if
					Flags.FoundationNumberInputScrubCallbackProps
					and props.onScrubStarted
					and not hasScrubStarted.current
				then
					props.onScrubStarted()
					hasScrubStarted.current = true
				end

				local newValue = calculateNumberInputValueFromPositions(
					dragStartTable.current.value,
					dragStartTable.current.position,
					position.X,
					props.step,
					if Flags.FoundationNumberInputBeta then scrubSensitivity else nil :: never
				)
				valueChanged(newValue, OnChangeCallbackReason.Drag)
			end
		end,
		{
			valueChanged,
			props.step,
			constrainValue,
			if Flags.FoundationNumberInputScrubCallbackProps then props.onScrubStarted else nil,
			if Flags.FoundationNumberInputBeta then scrubSensitivity else nil,
		} :: { unknown }
	)

	local onDragEnded = React.useCallback(function()
		if dragStartTable.current then
			dragStartTable.current = nil
			if Flags.FoundationNumberInputScrubCallbackProps and props.onScrubEnded and hasScrubStarted.current then
				props.onScrubEnded()
			end
		end
		hasScrubStarted.current = false
	end, { if Flags.FoundationNumberInputScrubCallbackProps then props.onScrubEnded else nil })

	local filledStyleTransparency = tokens.Color.Shift.Shift_300.Transparency
	local unfilledStyleTransparency = tokens.Color.Shift.Shift_100.Transparency
	local scrubbableTransparencySequence = React.useMemo(
		function()
			return mapBindable(props.value, function(value)
				local percentageScrubbed = 0
				if value and props.maximum and props.minimum then
					local currentValue = clampValueToRange(value)
					if props.maximum == props.minimum then
						percentageScrubbed = 1
					else
						percentageScrubbed = (currentValue - props.minimum) / (props.maximum - props.minimum)
					end
				end

				if percentageScrubbed == 0 then
					return NumberSequence.new(unfilledStyleTransparency)
				elseif percentageScrubbed == 1 then
					return NumberSequence.new(filledStyleTransparency)
				elseif percentageScrubbed > 0 or percentageScrubbed < 1 then
					local numberSequenceKeypoints = {
						NumberSequenceKeypoint.new(0, filledStyleTransparency),
						NumberSequenceKeypoint.new(percentageScrubbed :: number, filledStyleTransparency),
						NumberSequenceKeypoint.new(
							math.min((percentageScrubbed :: number) + 0.001, 1),
							unfilledStyleTransparency
						),
					}
					if percentageScrubbed < 0.999 then
						table.insert(numberSequenceKeypoints, NumberSequenceKeypoint.new(1, unfilledStyleTransparency))
					end

					return NumberSequence.new(numberSequenceKeypoints)
				end
				return NumberSequence.new(unfilledStyleTransparency)
			end)
		end,
		{
			filledStyleTransparency,
			unfilledStyleTransparency,
			props.value,
			clampValueToRange,
			props.maximum,
			props.minimum,
		} :: { unknown }
	)

	React.useEffect(function()
		if not isFocused() and not ReactIs.isBinding(props.value) then
			setTextInput(props.formatAsString(constrainValue(props.value :: number)))
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
			isDisabled = props.isDisabled,
			hint = props.hint,
			textBoxRef = numberInputRef,
			-- selene: allow(high_cyclomatic_complexity) remove with FoundationNumberInputBeta
			input = function(inputRef)
				local hasExternalControls = if Flags.FoundationNumberInputBeta
					then hasControls and controls
					else controlsVariant == NumberInputControlsVariant.Split

				local input = React.createElement(InternalTextInput, {
					inputRef = props.inputRef,
					text = joinBindables({
						text = textInput,
						value = props.value,
					}, function(bindables)
						if isFocused() then
							return bindables.text
						else
							return props.formatAsString(constrainValue(bindables.value))
						end
					end) :: any, -- TODO: fix in new solver?,
					hasError = hasError,
					variant = props.variant,
					size = props.size,
					Selectable = (props.Selectable) :: any,
					NextSelectionUp = (props.NextSelectionUp) :: any,
					NextSelectionDown = (props.NextSelectionDown) :: any,
					NextSelectionLeft = (props.NextSelectionLeft) :: any,
					NextSelectionRight = (props.NextSelectionRight) :: any,
					horizontalPadding = {
						left = variantProps.container.horizontalPadding,
						right = if Flags.FoundationNumberInputBeta
							then variantProps.container.horizontalPadding
							else nil,
						innerLeft = if Flags.FoundationNumberInputBeta
							then if prefixTextSize and prefixTextSize.X > 0 then UDim.new(0, prefixTextSize.X) else nil
							else nil,
					},
					focusBehavior = numberInputProps.focusBehavior,
					onChanged = onTextChanged,
					onFocusLost = onFocusLost,
					onFocus = onFocus,
					onDragStarted = if isScrubbable then onDragStarted else nil,
					onDrag = if isScrubbable then onDrag else nil,
					onDragEnded = if isScrubbable then onDragEnded else nil,
					onReturnPressed = props.onReturnPressed,
					ref = inputRef,
					backgroundGradient = if isScrubbable and scrubbableTransparencySequence
						then React.createElement("UIGradient", {
							Color = ColorSequence.new(tokens.Color.Shift.Shift_300.Color3),
							Transparency = scrubbableTransparencySequence,
							Rotation = 0,
						})
						else nil,
					trailingElement = if Flags.FoundationNumberInputBeta
						then if props.trailingIcon
							then React.createElement(
								View,
								{ tag = "row align-y-center size-0-full auto-x" },
								React.createElement(Icon, {
									name = props.trailingIcon,
									style = variantProps.icon.style,
									size = variantProps.icon.size,
								})
							)
							else nil
						elseif controlsVariant == NumberInputControlsVariant.Stacked then controls
						else nil,
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
					LayoutOrder = if hasExternalControls and Flags.FoundationNumberInputBeta then 0 else nil,
					testId = `{props.testId}--field`,
				})

				local unitsOverlay = if Flags.FoundationNumberInputBeta and hasUnits
					then React.createElement(Text, {
						tag = "text-align-x-left text-align-y-center content-muted",
						fontStyle = variantProps.textBox.fontStyle,
						Size = UDim2.new(1, -(unitsXOffsets.left.Offset + unitsXOffsets.right.Offset), 1, 0),
						Position = UDim2.fromOffset(unitsXOffsets.left.Offset, 0),
						Text = textInput:map(function(value)
							return `{if props.prefix then props.prefix .. " " else ""}<font transparency="1">{value}</font>{if props.suffix
								then " " .. props.suffix
								else ""}`
						end),
						RichText = true,
						ClipsDescendants = true,
						padding = unitsPadding,
						testId = `{props.testId}--units`,
					})
					else nil

				if Flags.FoundationNumberInputBeta then
					input = React.createElement(View, { tag = "size-full-0 auto-y" }, {
						Input = input,
						Units = unitsOverlay,
					}) :: any
				end

				return if hasExternalControls or Flags.FoundationNumberInputBeta
					then React.createElement(View, {
						Size = if Flags.FoundationNumberInputBeta
							then UDim2.new(width.Scale - widthOffset.Scale, width.Offset - widthOffset.Offset, 0, 0)
							else UDim2.fromOffset(width.Offset - widthOffset.Offset, 0),
						tag = if Flags.FoundationNumberInputBeta
							then "row align-y-center auto-y"
							else "row align-y-center gap-xsmall auto-y",
						layout = if Flags.FoundationNumberInputBeta
							then {
								FillDirection = Enum.FillDirection.Horizontal,
								Padding = UDim.new(0, incrementButtonsGap),
								SortOrder = Enum.SortOrder.LayoutOrder,
							}
							else nil,
					}, {
						InputField = input,
						Controls = if hasExternalControls then controls else nil,
					})
					else input
			end,
		})
	)
end

return React.memo(React.forwardRef(NumberInput))
