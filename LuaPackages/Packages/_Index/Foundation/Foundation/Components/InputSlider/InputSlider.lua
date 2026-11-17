local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Components = Foundation.Components
local InputLabel = require(Components.InputLabel)
local Text = require(Components.Text)
local Types = require(Components.Types)
local View = require(Components.View)

local getStateLayerStyle = require(Components.Interactable.getStateLayerStyle)
local useSliderDirectionalInput = require(Components.InternalSlider.useSliderDirectionalInput)

local devAssert = require(Foundation.Utility.devAssert)
local getBindableValue = require(Foundation.Utility.getBindableValue)
local getDisabledStyle = require(Foundation.Utility.getDisabledStyle)
local mapBindable = require(Foundation.Utility.mapBindable)
local useLastInputMode = require(Foundation.Utility.Input.useLastInputMode)
local usePlugin = require(Foundation.Providers.Plugin.usePlugin)
local useStyleTags = require(Foundation.Providers.Style.useStyleTags)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local InputLabelSize = require(Foundation.Enums.InputLabelSize)

local InputMode = require(Foundation.Utility.Input.InputMode)
type InputMode = InputMode.InputMode

local OnChangeCallbackReason = require(Foundation.Enums.OnChangeCallbackReason)
type OnChangeCallbackReason = OnChangeCallbackReason.OnChangeCallbackReason

local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)

local Tokens = require(Foundation.Providers.Style.Tokens)
local calculateInputSliderValue = require(script.Parent.calculateInputSliderValue)
local formatInputSliderValue = require(script.Parent.formatInputSliderValue)
local snapInputSliderValue = require(script.Parent.snapInputSliderValue)
local useInputSliderFill = require(script.Parent.useInputSliderFill)
type Tokens = Tokens.Tokens

type Bindable<T> = Types.Bindable<T>

-- Pointer travel, in pixels, before a press becomes a scrub instead of a click.
local SCRUB_THRESHOLD = 3
-- A fill that tracks the value makes one increment per pixel read far faster than NumberInput's
-- unfilled scrub, so the default sensitivity maps to one increment every 4 pixels.
local INCREMENTS_PER_PIXEL = 0.25
local DEFAULT_SENSITIVITY = 1
-- Gamepad steps without a `step` prop move by this amount, matching scrub increments.
local DEFAULT_GAMEPAD_STEP = 1

-- System cursors are only reachable through the plugin mouse.
local STUDIO_RESIZE_CURSOR = "rbxasset://SystemCursors/SizeEW"

local CAPTURED_SELECTION_GROUP: Types.SelectionGroup = {
	SelectionBehaviorLeft = Enum.SelectionBehavior.Stop,
	SelectionBehaviorRight = Enum.SelectionBehavior.Stop,
	SelectionBehaviorUp = Enum.SelectionBehavior.Stop,
	SelectionBehaviorDown = Enum.SelectionBehavior.Stop,
}

export type InputSliderProps = {
	-- Text shown above the field. Dragging the label scrubs the value, the same as dragging the field. Omit for no label.
	label: string?,
	-- Current value. Displayed and filled clamped to `range`.
	value: Bindable<number>,
	-- Called with each new value. `reason` is `Drag` while scrubbing, `Keyboard` for gamepad steps and typed values committed with Enter, and `FocusLost` for typed values committed on blur. Cancelling a gamepad adjustment calls it with the starting value. Cancelling a typed edit, with Escape or by disabling the field, does not call it.
	onValueChanged: (newValue: number, reason: OnChangeCallbackReason) -> (),
	-- Minimum and maximum value. Scrubbing, stepping, and typed values are clamped to it, and the fill spans it.
	range: NumberRange,
	-- Spacing of the grid `range.Min + n * step` that scrubbed, stepped, and typed values snap to, with `range.Max` also reachable. Each scrub increment and gamepad step moves one grid step. Omit to scrub and step by 1 without snapping. Must be positive; zero or less fails an assert in development and behaves as if omitted.
	step: number?,
	-- Scrub speed multiplier, independent of `step`. Defaults to 1, one increment every 4 pixels. Values above 1 scrub faster and values below 1 give finer control, so 2 doubles the speed and 0.5 halves it. Must be positive; zero or less fails an assert in development and falls back to 1.
	sensitivity: number?,
	-- Unit displayed after the value, such as `px`.
	suffix: string?,
	-- Called when pointer travel first starts a scrub. A press released without travel enters typing instead.
	onDragStarted: (() -> ())?,
	-- Called when a scrub ends on release.
	onDragEnded: (() -> ())?,
	-- Whether the field ignores input and renders at reduced opacity.
	isDisabled: boolean?,
	-- Width of the component. Defaults to filling the parent.
	width: UDim?,
} & Types.CommonProps

local defaultProps = {
	sensitivity = DEFAULT_SENSITIVITY,
	isDisabled = false,
	testId = "--foundation-input-slider",
}

type ScrubState = {
	pressX: number,
	originX: number,
	startValue: number,
	hasStarted: boolean,
}

type ScrubDragDetectorProps = {
	isPresent: boolean,
	isEnabled: boolean,
	onDragStart: (rbx: GuiObject, position: Vector2) -> (),
	onDragContinue: (rbx: GuiObject, position: Vector2) -> (),
	onDragEnd: () -> (),
	testId: string,
}

local function ScrubDragDetector(props: ScrubDragDetectorProps): React.ReactNode
	if not props.isPresent then
		return nil
	end

	return React.createElement("UIDragDetector", {
		DragStyle = Enum.UIDragDetectorDragStyle.Scriptable,
		SelectionModeDragSpeed = UDim2.new(),
		Enabled = props.isEnabled,
		[React.Tag] = `data-testid={props.testId}` :: any,
		[React.Event.DragStart] = props.onDragStart,
		[React.Event.DragContinue] = props.onDragContinue,
		[React.Event.DragEnd] = props.onDragEnd,
	})
end

local function isSelectedState(state: ControlState): boolean
	return state == ControlState.Selected or state == ControlState.SelectedPressed
end

local function isHoveredState(state: ControlState): boolean
	return state == ControlState.Hover or state == ControlState.Pressed
end

local function isPointerOver(fieldState: ControlState, labelState: ControlState): boolean
	return isHoveredState(fieldState) or isHoveredState(labelState)
end

-- The fill gradient replaces the field's background, so hover and press need their own layer above it.
-- A scrub keeps the press layer until release, even after the pointer leaves the field.
local function getFieldStateLayerStyle(
	tokens: Tokens,
	fieldState: ControlState,
	isScrubbing: boolean
): { Color3: Color3, Transparency: number }?
	if isScrubbing then
		return getStateLayerStyle(tokens, nil, ControlState.Pressed)
	elseif isHoveredState(fieldState) then
		return getStateLayerStyle(tokens, nil, fieldState)
	end
	return nil
end

local function getContentStyles(
	tokens: Tokens,
	isActive: boolean,
	isDisabled: boolean
): (Types.ColorStyleValue, Types.ColorStyleValue)
	local valueColor = if isActive then tokens.Color.Content.Emphasis else tokens.Color.Content.Default
	local suffixColor = if isActive then tokens.Color.Content.Default else tokens.Color.Content.Muted
	return getDisabledStyle(valueColor, isDisabled), getDisabledStyle(suffixColor, isDisabled)
end

local function resolveSensitivity(sensitivity: number): number
	local isValid = sensitivity > 0
	devAssert(isValid, `InputSlider: sensitivity must be positive, got {sensitivity}.`)
	return if isValid then sensitivity else DEFAULT_SENSITIVITY
end

local function resolveStep(step: number?): number?
	if step == nil then
		return nil
	end
	local isValid = step > 0
	devAssert(isValid, `InputSlider: step must be positive, got {step}.`)
	return if isValid then step else nil
end

local function InputSlider(inputSliderProps: InputSliderProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(inputSliderProps, defaultProps)
	local tokens = useTokens()
	local plugin = usePlugin()
	local lastInputMode: InputMode? = useLastInputMode()

	local range = props.range
	local step = resolveStep(props.step)
	local sensitivity = resolveSensitivity(props.sensitivity :: number)
	local isDisabled = props.isDisabled :: boolean

	local textBoxRef = React.useRef(nil :: TextBox?)
	local scrubRef = React.useRef(nil :: ScrubState?)
	local isTypingCancelledRef = React.useRef(false)
	local captureStartValueRef = React.useRef(0)
	local shouldAnimateFillRef = React.useRef(false)

	local isFocused, setIsFocused = React.useState(false)
	local isScrubbing, setIsScrubbing = React.useState(false)
	local isPressHeld, setIsPressHeld = React.useState(false)
	local isCaptured, setIsCaptured = React.useState(false)
	local fieldState, setFieldState = React.useState(ControlState.Initialize :: ControlState)
	local labelState, setLabelState = React.useState(ControlState.Initialize :: ControlState)
	local typedText, setTypedText = React.useBinding("")

	local isSelected = isSelectedState(fieldState)
	local isActive = isFocused or isScrubbing or isCaptured

	local getValue = React.useCallback(function(): number
		return math.clamp(getBindableValue(props.value), range.Min, range.Max)
	end, { props.value, range } :: { unknown })

	local changeValue = React.useCallback(function(newValue: number, reason: OnChangeCallbackReason)
		if newValue ~= getValue() then
			props.onValueChanged(newValue, reason)
		end
	end, { props.onValueChanged, getValue } :: { unknown })

	local focusTextBox = React.useCallback(function()
		local textBox = textBoxRef.current
		if textBox == nil or isDisabled then
			return
		end

		textBox:CaptureFocus()
		-- Selecting on the same frame as CaptureFocus leaves the last character unselected.
		task.defer(function()
			if textBox.Parent ~= nil and textBox:IsFocused() then
				textBox.SelectionStart = 1
				textBox.CursorPosition = utf8.len(textBox.Text) :: number + 1
			end
		end)
	end, { isDisabled })

	local onDragStart = React.useCallback(function(_rbx: GuiObject, position: Vector2)
		if isDisabled then
			return
		end
		setIsPressHeld(true)
		scrubRef.current = {
			pressX = position.X,
			originX = position.X,
			startValue = getValue(),
			hasStarted = false,
		}
	end, { isDisabled, getValue } :: { unknown })

	local onDragContinue = React.useCallback(function(_rbx: GuiObject, position: Vector2)
		local scrub = scrubRef.current
		if scrub == nil then
			return
		end

		if not scrub.hasStarted then
			if math.abs(position.X - scrub.pressX) < SCRUB_THRESHOLD then
				return
			end
			scrub.hasStarted = true
			scrub.originX = position.X
			-- A typed commit the caller did not apply leaves the ease pending, and the fill must follow a scrub directly.
			shouldAnimateFillRef.current = false
			setIsScrubbing(true)
			if props.onDragStarted then
				props.onDragStarted()
			end
		end

		changeValue(
			calculateInputSliderValue(
				scrub.startValue,
				position.X - scrub.originX,
				sensitivity * INCREMENTS_PER_PIXEL,
				step,
				range
			),
			OnChangeCallbackReason.Drag
		)
	end, { props.onDragStarted, changeValue, sensitivity, step, range } :: { unknown })

	local onDragEnd = React.useCallback(function()
		setIsPressHeld(false)
		local scrub = scrubRef.current
		scrubRef.current = nil
		if scrub == nil then
			return
		end

		if scrub.hasStarted then
			setIsScrubbing(false)
			if props.onDragEnded then
				props.onDragEnded()
			end
		else
			focusTextBox()
		end
	end, { props.onDragEnded, focusTextBox } :: { unknown })

	-- Disabling and unmounting end a scrub from effects that should not rerun when the callback
	-- changes, so they read the latest callback from this ref.
	local onDragEndedRef = React.useRef(props.onDragEnded)
	onDragEndedRef.current = props.onDragEnded

	-- Ends a scrub without the detector's DragEnd, keeping the scrubbed value.
	local endScrub = React.useCallback(function()
		local scrub = scrubRef.current
		scrubRef.current = nil
		if scrub == nil or not scrub.hasStarted then
			return
		end

		setIsScrubbing(false)
		if onDragEndedRef.current then
			onDragEndedRef.current()
		end
	end, {})

	React.useEffect(function()
		return function()
			local scrub = scrubRef.current
			-- The detector can still report DragEnd while it is destroyed, so clearing the scrub keeps this to one call.
			scrubRef.current = nil
			if scrub ~= nil and scrub.hasStarted and onDragEndedRef.current then
				onDragEndedRef.current()
			end
		end
	end, {})

	local onTextBoxFocused = React.useCallback(function(textBox: TextBox)
		local text = formatInputSliderValue(getValue())
		isTypingCancelledRef.current = false
		setTypedText(text)
		textBox.Text = text
		setIsFocused(true)
	end, { getValue })

	local onTextBoxFocusLost = React.useCallback(
		function(textBox: TextBox, enterPressed: boolean, inputThatCausedFocusLoss: InputObject?)
			setIsFocused(false)

			-- The engine releases focus on Escape before UserInputService reports the key.
			local isEscape = inputThatCausedFocusLoss ~= nil and inputThatCausedFocusLoss.KeyCode == Enum.KeyCode.Escape
			-- A cancelled edit reports nothing, so a value changed elsewhere during the edit survives.
			if isTypingCancelledRef.current or isEscape then
				isTypingCancelledRef.current = false
				return
			end

			-- The box shows a rounded value, so committing unedited text would silently round the caller's value.
			local typedValue = tonumber(textBox.Text)
			-- NaN is the only value that differs from itself.
			local isNaN = typedValue ~= typedValue
			if typedValue == nil or isNaN or textBox.Text == formatInputSliderValue(getValue()) then
				return
			end

			local newValue = snapInputSliderValue(typedValue, step, range)
			-- The fill clears this flag only when the value changes, so a no-op commit must not set it.
			if newValue ~= getValue() then
				shouldAnimateFillRef.current = true
			end
			changeValue(
				newValue,
				if enterPressed then OnChangeCallbackReason.Keyboard else OnChangeCallbackReason.FocusLost
			)
		end,
		{ getValue, changeValue, range, step } :: { unknown }
	)

	local onTextBoxTextChanged = React.useCallback(function(textBox: TextBox)
		setTypedText(textBox.Text)
	end, {})

	local cancelTyping = React.useCallback(function()
		local textBox = textBoxRef.current
		if textBox and textBox:IsFocused() then
			isTypingCancelledRef.current = true
			textBox:ReleaseFocus()
		end
	end, {})

	local startCapture = React.useCallback(function()
		captureStartValueRef.current = getValue()
		setIsCaptured(true)
	end, { getValue })

	local commitCapture = React.useCallback(function()
		setIsCaptured(false)
	end, {})

	local cancelCapture = React.useCallback(function()
		changeValue(captureStartValueRef.current, OnChangeCallbackReason.Keyboard)
		setIsCaptured(false)
	end, { changeValue })

	local directionalInputHandlers = React.useMemo(function(): useSliderDirectionalInput.Handlers
		return {
			getValue = getValue,
			onStep = function(newValue: number)
				if step == nil then
					-- The hook snaps to a grid from `range.Min`, so keep only its direction to match an unsnapped scrub.
					local currentValue = getValue()
					local direction = math.sign(newValue - currentValue)
					newValue = math.clamp(currentValue + direction * DEFAULT_GAMEPAD_STEP, range.Min, range.Max)
				end
				changeValue(newValue, OnChangeCallbackReason.Keyboard)
			end,
			onExit = cancelCapture,
		}
	end, { getValue, changeValue, cancelCapture, step, range } :: { unknown })

	useSliderDirectionalInput(
		isCaptured and not isDisabled,
		step or DEFAULT_GAMEPAD_STEP,
		range,
		false,
		directionalInputHandlers
	)

	-- Capture belongs to directional input on the selected field. It keeps the adjusted value and
	-- ends once selection leaves the field, typing starts, or input switches to a pointer or touch,
	-- so arrow keys meant for a text box never step this field.
	React.useEffect(function()
		local isPointerInput = lastInputMode ~= nil and lastInputMode ~= InputMode.Directional
		if isCaptured and (not isSelected or isFocused or isPointerInput) then
			setIsCaptured(false)
		end
	end, { isCaptured, isSelected, isFocused, lastInputMode } :: { unknown })

	-- Keyboard users type first and gamepad users adjust first: Enter on a selected field starts
	-- typing, while A captures it for directional adjustment. Either key commits a capture.
	local onFieldActivated = React.useCallback(function(_rbx: GuiObject, input: InputObject)
		local isEnter = input.KeyCode == Enum.KeyCode.Return or input.KeyCode == Enum.KeyCode.KeypadEnter
		if not isEnter and input.KeyCode ~= Enum.KeyCode.ButtonA then
			return
		end

		if isCaptured then
			commitCapture()
		elseif isEnter then
			focusTextBox()
		else
			startCapture()
		end
	end, { isCaptured, commitCapture, focusTextBox, startCapture } :: { unknown })

	React.useEffect(function()
		if isDisabled then
			setIsCaptured(false)
			cancelTyping()
			endScrub()
		end
	end, { isDisabled, endScrub } :: { unknown })

	local showsResizeCursor = not isDisabled
		and not isFocused
		and (isScrubbing or isPointerOver(fieldState, labelState))

	React.useEffect(function()
		if plugin == nil or not showsResizeCursor then
			return
		end

		local mouse = plugin:GetMouse()
		local previousIcon = mouse.Icon
		mouse.Icon = STUDIO_RESIZE_CURSOR
		return function()
			mouse.Icon = previousIcon
		end
	end, { plugin, showsResizeCursor } :: { unknown })

	local fill = useInputSliderFill(props.value, range, isDisabled, shouldAnimateFillRef)

	local displayText = React.useMemo(function(): Bindable<string>
		if isFocused then
			return typedText
		end
		return mapBindable(props.value, function(value: number)
			return formatInputSliderValue(math.clamp(value, range.Min, range.Max))
		end)
	end, { isFocused, typedText, props.value, range } :: { unknown })

	local valueStyle, suffixStyle = getContentStyles(tokens, isActive, isDisabled)
	local stateLayerStyle = if isDisabled
			or isFocused
			or isCaptured
		then nil
		else getFieldStateLayerStyle(tokens, fieldState, isScrubbing)
	local textBoxTag = useStyleTags("text-body-small text-align-x-left text-align-y-center gui-object-defaults")

	-- The engine makes any parent of a UIDragDetector a selection target, and A or Enter on a
	-- selected field would start a selection-mode drag that ends by entering typing. An active
	-- scrub keeps its detector so a stray key press cannot strand it without a DragEnd.
	-- A detector disabled under a held press never reports DragEnd, and the engine then
	-- swallows every later click, so disabling waits for the press to be released.
	local dragDetectorProps = {
		isPresent = isScrubbing or isPressHeld or lastInputMode ~= InputMode.Directional,
		isEnabled = not isFocused and (not isDisabled or isPressHeld),
		onDragStart = onDragStart,
		onDragContinue = onDragContinue,
		onDragEnd = onDragEnd,
	}

	return React.createElement(
		View,
		withCommonProps(props, {
			Size = UDim2.new(props.width or UDim.new(1, 0), UDim.new()),
			tag = "col gap-small auto-y",
			selectionGroup = if isCaptured then CAPTURED_SELECTION_GROUP else nil,
			ref = ref,
		}),
		{
			Label = if props.label and props.label ~= ""
				then React.createElement(View, {
					tag = "auto-xy",
					onStateChanged = setLabelState,
					stateLayer = { affordance = StateLayerAffordance.None },
					selection = { Selectable = false },
					isDisabled = isDisabled,
					LayoutOrder = 1,
					testId = `{props.testId}--label`,
				}, {
					Text = React.createElement(InputLabel, {
						Text = props.label,
						size = InputLabelSize.XSmall,
						isDisabled = isDisabled,
						testId = `{props.testId}--label-text`,
					}),
					DragDetector = React.createElement(
						ScrubDragDetector,
						Dash.join(dragDetectorProps, { testId = `{props.testId}--label--drag-detector` })
					),
				})
				else nil,
			Field = React.createElement(View, {
				tag = {
					["size-full-600 radius-small"] = true,
					["stroke-standard stroke-position-inner stroke-system-emphasis"] = isActive,
				},
				stateLayer = { affordance = StateLayerAffordance.None },
				backgroundStyle = {
					--selene: allow(roblox_internal_custom_color)
					Color3 = Color3.new(1, 1, 1),
					-- a value of 0 causes styling to override
					Transparency = 0.001,
				},
				cursor = {
					radius = UDim.new(0, tokens.Radius.Small),
					offset = tokens.Stroke.Thick,
					borderWidth = tokens.Stroke.Thick,
				},
				onStateChanged = setFieldState,
				onActivated = onFieldActivated,
				isDisabled = isDisabled,
				LayoutOrder = 2,
				testId = `{props.testId}--field`,
			}, {
				Fill = React.createElement("UIGradient", {
					Color = fill.color,
					Transparency = fill.transparency,
					Offset = fill.offset,
					[React.Tag] = `data-testid={props.testId}--fill`,
				}),
				DragDetector = React.createElement(
					ScrubDragDetector,
					Dash.join(dragDetectorProps, { testId = `{props.testId}--field--drag-detector` })
				),
				StateLayer = if stateLayerStyle
					then React.createElement(View, {
						tag = "size-full radius-small",
						backgroundStyle = stateLayerStyle,
						ZIndex = 2,
						testId = `{props.testId}--state-layer`,
					})
					else nil,
				Content = React.createElement(View, {
					tag = "row align-y-center gap-xxsmall size-full padding-x-small",
					ZIndex = 3,
				}, {
					-- lute-lint-ignore(noEnginePrimitives) Foundation's text inputs draw their own container, which cannot sit inside the scrub field.
					Value = React.createElement("TextBox", {
						Text = displayText,
						ClearTextOnFocus = false,
						TextEditable = not isDisabled,
						Interactable = isFocused,
						Selectable = false,
						AutomaticSize = Enum.AutomaticSize.X,
						Size = UDim2.fromScale(0, 1),
						TextColor3 = valueStyle.Color3,
						TextTransparency = valueStyle.Transparency,
						LayoutOrder = 1,
						ref = textBoxRef,
						[React.Tag] = `{textBoxTag} data-testid={props.testId}--textbox` :: any,
						[React.Event.Focused] = onTextBoxFocused,
						[React.Event.FocusLost] = onTextBoxFocusLost,
						[React.Change.Text] = onTextBoxTextChanged,
					}),
					Suffix = if props.suffix
						then React.createElement(Text, {
							Text = props.suffix,
							tag = "auto-xy text-body-small",
							textStyle = suffixStyle,
							LayoutOrder = 2,
							testId = `{props.testId}--suffix`,
						})
						else nil,
				}),
			}),
		}
	)
end

return React.memo(React.forwardRef(InputSlider))
