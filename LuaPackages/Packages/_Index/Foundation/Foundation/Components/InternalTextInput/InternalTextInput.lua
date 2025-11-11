local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Flags = require(Foundation.Utility.Flags)

local React = require(Packages.React)

local Components = Foundation.Components
local View = require(Components.View)
local Types = require(Components.Types)

local FoundationConstants = require(Foundation.Constants)
local useTextInputVariants = require(Components.TextInput.useTextInputVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local useStyleTags = require(Foundation.Providers.Style.useStyleTags)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local isPluginSecurity = require(Foundation.Utility.isPluginSecurity)
local getMultiLineTextHeight = require(Foundation.Utility.getMultiLineTextHeight)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState
type InternalTextInputRef = Types.InternalTextInputRef
type Padding = Types.Padding
type Bindable<T> = Types.Bindable<T>
type HorizontalPadding = {
	left: Bindable<UDim>?,
	right: Bindable<UDim>?,
}

type TextInputProps = {
	-- Input text value
	text: string,
	-- Type of text input. Only available for use in descendants of `CoreGui`.
	textInputType: Enum.TextInputType?,
	-- Size of the text input
	size: InputSize?,
	-- Horizontal-only padding around the text input
	horizontalPadding: HorizontalPadding?,
	-- Whether the input is in an error state
	hasError: boolean?,
	-- Whether the input is disabled
	isDisabled: boolean?,
	-- The number of lines to render based on text size
	maxLines: number?,
	-- On input text change
	onChanged: (text: string) -> (),
	onFocus: (() -> ())?,
	onFocusLost: (() -> ())?,
	onReturnPressed: (() -> ())?,
	onDragStarted: ((inputObject: InputObject, position: Vector2) -> ())?,
	onDrag: ((inputObject: InputObject, position: Vector2) -> ())?,
	onDragEnded: ((inputObject: InputObject, position: Vector2) -> ())?,
	-- Placeholder text for input
	placeholder: string?,
	-- Background element to show behind the input
	backgroundElement: React.ReactElement?,
	leadingElement: React.ReactElement?,
	trailingElement: React.ReactElement?,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Large,
	maxLines = 1,
	testId = "--foundation-internal-text-input",
}

type TextBoxProps = {
	text: string,
	fontStyle: Types.FontStyle,
	textStyle: Types.ColorStyleValue,
	automaticSize: Enum.AutomaticSize?,
	isDisabled: boolean?,
	placeholder: string?,
	textInputType: Enum.TextInputType?,
	isMultiLine: boolean?,
	onTextChanged: ((TextBox) -> ())?,
	onFocusGained: (() -> ())?,
	onFocusLost: ((TextBox, boolean, InputObject) -> ())?,
	tag: string,
	children: React.Node?,
}
local TextBox = React.memo(React.forwardRef(function(props: TextBoxProps, ref: React.Ref<TextBox>?)
	return React.createElement("TextBox", {
		ClearTextOnFocus = false,
		Selectable = false,
		-- BEGIN: Remove when Flags.FoundationDisableStylingPolyfill is removed
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		TextXAlignment = Enum.TextXAlignment.Left,
		Font = props.fontStyle.Font,
		TextSize = props.fontStyle.FontSize,
		LineHeight = props.fontStyle.LineHeight,
		TextColor3 = props.textStyle.Color3,
		TextTransparency = props.textStyle.Transparency,
		-- END: Remove when Flags.FoundationDisableStylingPolyfill is removed
		MultiLine = props.isMultiLine,
		TextWrapped = props.isMultiLine,
		TextYAlignment = if props.isMultiLine then Enum.TextYAlignment.Top else Enum.TextYAlignment.Center,
		TextEditable = not props.isDisabled,
		PlaceholderText = props.placeholder,
		TextInputType = if isPluginSecurity() then props.textInputType else nil,
		Size = UDim2.fromScale(1, 1),
		AutomaticSize = props.automaticSize,
		Text = props.text,
		ref = ref,
		[React.Tag] = props.tag :: any,
		[React.Change.Text] = props.onTextChanged,
		[React.Event.Focused] = props.onFocusGained,
		[React.Event.FocusLost] = props.onFocusLost,
	}, props.children)
end))

local function InternalTextInput(textInputProps: TextInputProps, ref: React.Ref<InternalTextInputRef>?)
	local props = withDefaults(textInputProps, defaultProps)
	local tokens = useTokens()
	local lineCount = math.max(1, props.maxLines :: number)
	local isMultiLine = lineCount > 1
	local variantProps = useTextInputVariants(tokens, props.size)
	local textBoxTag = if Flags.FoundationDisableStylingPolyfill then useStyleTags(variantProps.textBox.tag) else nil

	local textBoxRef = React.useRef(nil :: TextBox?)
	local dragStartPosition = React.useRef(nil :: Vector2?)
	local hover, setHover = React.useState(false)
	local focus, setFocus = React.useState(false)

	local outerBorderThickness = tokens.Stroke.Standard
	local outerBorderOffset = math.ceil(outerBorderThickness) * 2
	local innerBorderThickness = tokens.Stroke.Thick
	local innerBorderOffset = math.ceil(innerBorderThickness) * 2

	local textStyle = tokens.Color.Content.Emphasis
	local fontStyle = variantProps.textBox.fontStyle
	local fontSize = fontStyle.FontSize :: number
	local lineHeight = fontStyle.LineHeight :: number

	local focusTextBox = React.useCallback(function()
		if textBoxRef.current then
			textBoxRef.current:CaptureFocus()
		end
	end, {})

	local releaseTextBoxFocus = React.useCallback(function()
		if textBoxRef.current then
			textBoxRef.current:ReleaseFocus()
		end
	end, {})

	local getIsFocused = React.useCallback(function()
		if textBoxRef.current then
			return textBoxRef.current:IsFocused() :: boolean?
		end
		return nil
	end, {})

	local getSelectionStart = React.useCallback(function(): number?
		if textBoxRef.current then
			return textBoxRef.current.SelectionStart
		end
		return nil
	end, {})

	local getCursorPosition = React.useCallback(function(): number?
		if textBoxRef.current then
			return textBoxRef.current.CursorPosition
		end
		return nil
	end, {})

	local setSelectionStart = React.useCallback(function(position)
		if textBoxRef.current then
			textBoxRef.current.SelectionStart = position
		end
	end, {})

	local setCursorPosition = React.useCallback(function(position)
		if textBoxRef.current then
			textBoxRef.current.CursorPosition = position
		end
	end, {})

	React.useImperativeHandle(ref, function()
		return {
			getIsFocused = getIsFocused,
			focus = focusTextBox,
			releaseFocus = releaseTextBoxFocus,
			setHover = setHover,
			getSelectionStart = if Flags.FoundationNumberInputRefAndCallbacks then getSelectionStart else nil,
			getCursorPosition = if Flags.FoundationNumberInputRefAndCallbacks then getCursorPosition else nil,
			setCursorPosition = if Flags.FoundationNumberInputRefAndCallbacks then setCursorPosition else nil,
			setSelectionStart = if Flags.FoundationNumberInputRefAndCallbacks then setSelectionStart else nil,
		}
	end, {
		getCursorPosition :: unknown,
		getIsFocused,
		getSelectionStart,
		focusTextBox,
		releaseTextBoxFocus,
		setCursorPosition,
		setSelectionStart,
	})

	local onTextChange = React.useCallback(function(rbx: TextBox?)
		if rbx == nil then
			props.onChanged("")
		else
			props.onChanged(rbx.Text)
		end
	end, { props.onChanged })

	local onFocusGained = React.useCallback(function()
		if props.isDisabled then
			return
		end

		setFocus(true)
		if props.onFocus then
			props.onFocus()
		end
	end, { props.onFocus :: unknown, props.isDisabled })

	local onFocusLost = React.useCallback(
		function(_rbx: TextBox, enterPressed: boolean, _inputThatCausedFocusLoss: InputObject)
			setFocus(false)
			if props.onFocusLost then
				props.onFocusLost()
			end

			if enterPressed and props.onReturnPressed then
				props.onReturnPressed()
			end
		end,
		{ props.onReturnPressed :: unknown, props.onFocusLost }
	)

	local onInputStateChanged = React.useCallback(function(newState: ControlState)
		setHover(newState == ControlState.Hover)
	end, {})

	local onDragStarted = React.useCallback(function(_rbx: InputObject, position: Vector2)
		dragStartPosition.current = position
		if props.onDragStarted then
			props.onDragStarted(_rbx, position)
		end
	end, { props.onDragStarted })

	local onDrag = React.useCallback(function(_rbx: InputObject, position: Vector2)
		if props.onDrag then
			props.onDrag(_rbx, position)
		end
	end, { props.onDrag })

	local onDragEnded = React.useCallback(function(_rbx: InputObject, position: Vector2)
		if dragStartPosition.current == position then
			focusTextBox()
		else
			releaseTextBoxFocus()
			setFocus(false)
		end
		dragStartPosition.current = nil
		if props.onDragEnded then
			props.onDragEnded(_rbx, position)
		end
	end, { props.onDragEnded })

	local cursor = React.useMemo(function()
		return {
			radius = UDim.new(0, variantProps.innerContainer.radius),
			offset = tokens.Stroke.Thick,
			borderWidth = tokens.Stroke.Thick,
		}
	end, { tokens :: unknown, variantProps.innerContainer.radius })

	local textBoxViewportHeight = React.useMemo(function()
		return getMultiLineTextHeight(fontSize, lineCount, lineHeight)
	end, { fontSize, lineCount, lineHeight } :: { unknown })

	local textBoxWrapperPadding, borderFrameHeight = React.useMemo(
		function()
			-- This variable needs to be in increments of 0.5 to account for +- 1 on top and bottom padding.
			-- If we round it off, then the container won't visibily line up pixel-perfectly with any size tokens
			-- (see NumberInput)
			local containerPaddingY = math.round(
				(variantProps.outerContainer.minHeight - outerBorderOffset - innerBorderOffset - math.ceil(fontSize))
					* 2
			) / 2
			local paddingFloored = UDim.new(0, math.floor(containerPaddingY / 2))
			local paddingCeiled = UDim.new(0, math.ceil(containerPaddingY / 2))
			local borderFrameSizeY = textBoxViewportHeight + math.round(containerPaddingY)

			return {
				top = paddingFloored,
				bottom = paddingCeiled,
				left = UDim.new(0, 0),
				right = UDim.new(0, 0),
			},
				borderFrameSizeY
		end,
		{
			variantProps.outerContainer.minHeight,
			outerBorderOffset,
			innerBorderOffset,
			fontSize,
			textBoxViewportHeight,
		} :: { unknown }
	)

	local dragDetector = React.useMemo(function(): React.ReactElement?
		if not props.onDragStarted and not props.onDrag and not props.onDragEnded then
			return nil
		end

		return React.createElement("UIDragDetector", {
			DragStyle = Enum.UIDragDetectorDragStyle.Scriptable,
			[React.Event.DragStart] = onDragStarted,
			[React.Event.DragContinue] = onDrag,
			[React.Event.DragEnd] = onDragEnded,
			Enabled = not focus and not props.isDisabled,
		})
	end, { onDragStarted, onDrag, onDragEnded, focus, props.isDisabled } :: { any })

	return React.createElement(
		View,
		withCommonProps(props, {
			GroupTransparency = if props.isDisabled then FoundationConstants.DISABLED_TRANSPARENCY else nil,
			padding = outerBorderOffset / 2,
			tag = variantProps.canvas.tag,
		}),
		{
			Input = React.createElement(View, {
				selection = {
					Selectable = not props.isDisabled,
				},
				cursor = cursor,
				stroke = {
					Color = if props.hasError
						then tokens.Color.System.Alert.Color3
						else tokens.Color.Stroke.Emphasis.Color3,
					Transparency = if props.hasError
						then tokens.Color.System.Alert.Transparency
						else if focus then 0 else tokens.Color.Stroke.Emphasis.Transparency,
					Thickness = outerBorderThickness,
				},
				padding = innerBorderOffset / 2,
				onActivated = focusTextBox,
				onStateChanged = onInputStateChanged,
				-- TODO: Update to border affordance
				stateLayer = { affordance = StateLayerAffordance.None },
				tag = variantProps.outerContainer.tag,
				testId = `{props.testId}--outer-container`,
			}, {
				DragDetector = dragDetector,
				Background = props.backgroundElement,

				BorderFrame = React.createElement(View, {
					Size = UDim2.new(1, 0, 0, borderFrameHeight),
					cornerRadius = UDim.new(0, variantProps.innerContainer.radius - innerBorderOffset / 2),
					stroke = if not props.isDisabled and (hover or focus)
						then {
							Color = tokens.Color.Stroke.Emphasis.Color3,
							Transparency = 0.88, -- TODO(tokens): replace opacity with token
							Thickness = innerBorderThickness,
						}
						else nil,
					padding = if props.horizontalPadding
						then {
							left = props.horizontalPadding.left,
							right = props.horizontalPadding.right,
						}
						else nil,
					tag = variantProps.innerContainer.tag,
				}, {
					Leading = if props.leadingElement
						then React.createElement(View, {
							LayoutOrder = 1,
							tag = "size-0-full auto-x",
							testId = `{props.testId}--leading`,
						}, props.leadingElement)
						else nil,
					TextBoxWrapper = React.createElement(View, {
						LayoutOrder = 2,
						padding = textBoxWrapperPadding,
						tag = "size-full fill",
					}, {
						TextBox = React.createElement(TextBox, {
							text = props.text,
							placeholder = props.placeholder,
							textInputType = props.textInputType,
							-- BEGIN: Remove when Flags.FoundationDisableStylingPolyfill is removed
							fontStyle = fontStyle,
							textStyle = textStyle,
							-- END: Remove when Flags.FoundationDisableStylingPolyfill is removed
							isMultiLine = isMultiLine,
							isDisabled = props.isDisabled,
							ref = textBoxRef,
							tag = `{textBoxTag or ""} data-testid={props.testId}--textbox`,
							onFocusGained = onFocusGained,
							onFocusLost = onFocusLost,
							onTextChanged = onTextChange,
						}, {
							DragDetector = dragDetector,
						}),
					}),
					Trailing = if props.trailingElement
						then React.createElement(View, {
							LayoutOrder = 3,
							tag = "size-0-full auto-x",
							testId = `{props.testId}--trailing`,
						}, props.trailingElement)
						else nil,
				}),
			}),
		}
	)
end

return React.memo(React.forwardRef(InternalTextInput))
