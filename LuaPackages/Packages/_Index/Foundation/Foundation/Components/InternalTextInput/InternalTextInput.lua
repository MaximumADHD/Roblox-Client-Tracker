local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Flags = require(Foundation.Utility.Flags)

local React = require(Packages.React)

local Components = Foundation.Components
local View = require(Components.View)
local Padding = require(Components.Padding)
local ScrollView = require(Components.ScrollView)
local Types = require(Components.Types)

local FoundationConstants = require(Foundation.Constants)
local useTextInputVariants = require(Components.TextInput.useTextInputVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local useStyleTags = require(Foundation.Providers.Style.useStyleTags)
local usePreferredInput = require(Foundation.Utility.usePreferredInput)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local isPluginSecurity = require(Foundation.Utility.isPluginSecurity)
local getMultiLineTextHeight = require(Foundation.Utility.getMultiLineTextHeight)
local truncateTextToCursor = require(script.Parent.truncateTextToCursor)

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
	-- The number of lines to render at once
	numLines: number?,
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
	numLines = 1,
	testId = "--foundation-internal-text-input",
}

type TextBoxProps = {
	Size: UDim2?,
	text: string?,
	fontStyle: Types.FontStyle,
	textStyle: Types.ColorStyleValue,
	padding: Types.PaddingTable?,
	isBoundsChecker: boolean?,
	automaticSize: Enum.AutomaticSize?,
	isDisabled: boolean?,
	placeholder: string?,
	textInputType: Enum.TextInputType?,
	isMultiLine: boolean?,
	onTextChanged: ((TextBox) -> ())?,
	onCursorPositionChanged: ((TextBox) -> ())?,
	onFocusGained: (() -> ())?,
	onFocusLost: ((TextBox, boolean, InputObject) -> ())?,
	tag: string?,
	children: React.Node?,
}
local TextBox = React.memo(React.forwardRef(function(props: TextBoxProps, ref: React.Ref<TextBox>?)
	local isBoundsChecker = Flags.FoundationInternalTextInputScrolling and props.isBoundsChecker
	local isMultiLine = props.isMultiLine or isBoundsChecker

	return React.createElement(
		"TextBox",
		{
			ClearTextOnFocus = false,
			Selectable = false,
			Active = if isBoundsChecker then false else nil,
			Visible = if isBoundsChecker then false else nil,
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
			MultiLine = isMultiLine,
			TextWrapped = isMultiLine,
			TextYAlignment = if isMultiLine then Enum.TextYAlignment.Top else Enum.TextYAlignment.Center,
			TextEditable = if isBoundsChecker then false else not props.isDisabled,
			PlaceholderText = props.placeholder,
			TextInputType = if isPluginSecurity() then props.textInputType else nil,
			Size = if Flags.FoundationInternalTextInputScrolling and props.Size ~= nil
				then props.Size
				else UDim2.fromScale(1, 1),
			AutomaticSize = props.automaticSize,
			Text = if isBoundsChecker then nil else props.text,
			ref = ref,
			[React.Tag] = props.tag :: any,
			[React.Change.Text] = props.onTextChanged,
			[React.Change.CursorPosition] = props.onCursorPositionChanged,
			[React.Event.Focused] = props.onFocusGained,
			[React.Event.FocusLost] = props.onFocusLost,
		},
		if Flags.FoundationInternalTextInputScrolling and props.padding
			then {
				Padding = React.createElement(Padding, {
					value = props.padding,
				}),
			}
			else nil,
		props.children
	)
end))

-- selene: allow(high_cyclomatic_complexity) -- remove this when FoundationInternalTextInputScrolling is cleaned up
local function InternalTextInput(textInputProps: TextInputProps, ref: React.Ref<InternalTextInputRef>?)
	local props = withDefaults(textInputProps, defaultProps)
	local tokens = useTokens()
	local lineCount = math.max(1, props.numLines :: number)
	local isMultiLine = lineCount > 1
	local isScrollable = Flags.FoundationInternalTextInputScrolling and isMultiLine
	local variantProps = useTextInputVariants(tokens, props.size)
	local textBoxTag = if Flags.FoundationDisableStylingPolyfill then useStyleTags(variantProps.textBox.tag) else nil

	local textBoxRef = React.useRef(nil :: TextBox?)
	local textBoundsCheckerRef
	local scrollingFrameRef
	local mobileTextBoxTextRef
	if Flags.FoundationInternalTextInputScrolling then
		textBoundsCheckerRef = React.useRef(nil :: TextBox?)
		scrollingFrameRef = React.useRef(nil :: ScrollingFrame?)
		mobileTextBoxTextRef = React.useRef("")
	end

	local dragStartPosition = React.useRef(nil :: Vector2?)
	local lastScrollingFrameCanvasPosition
	if Flags.FoundationInternalTextInputScrolling then
		lastScrollingFrameCanvasPosition = React.useRef(Vector2.zero)
	end
	local hover, setHover = React.useState(false)
	local focus, setFocus = React.useState(false)

	-- Whether or not the textbox is currently focused and is in mobile mode --
	local preferredInput
	local isTouchFocused, setIsTouchFocused
	local isMobileDevice
	if Flags.FoundationInternalTextInputScrolling then
		preferredInput = usePreferredInput()
		isTouchFocused, setIsTouchFocused = React.useState(false)
		isMobileDevice = preferredInput == Enum.PreferredInput.Touch
	end

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

	React.useImperativeHandle(
		ref,
		function()
			return {
				getIsFocused = getIsFocused,
				focus = focusTextBox,
				releaseFocus = releaseTextBoxFocus,
				setHover = setHover,
				getSelectionStart = getSelectionStart,
				getCursorPosition = getCursorPosition,
				setCursorPosition = setCursorPosition,
				setSelectionStart = setSelectionStart,
			}
		end,
		{
			getCursorPosition,
			getIsFocused,
			getSelectionStart,
			focusTextBox,
			releaseTextBoxFocus,
			setCursorPosition,
			setSelectionStart,
		} :: { unknown }
	)

	local onTextChange = React.useCallback(function(textBox: TextBox?)
		if Flags.FoundationInternalTextInputScrolling then
			-- Prevent cases in which text can be cleared accidentally
			if textBox == nil or textBox.Parent == nil or mobileTextBoxTextRef.current ~= "" then
				return
			end

			local newText = textBox.Text
			if isScrollable and textBoundsCheckerRef.current then
				textBoundsCheckerRef.current.Text = newText
			end

			props.onChanged(newText)
		else
			if textBox == nil then
				props.onChanged("")
			else
				props.onChanged(textBox.Text)
			end
		end
	end, { props.onChanged, isScrollable, isTouchFocused } :: { unknown })

	local onFocusGained = React.useCallback(function()
		if props.isDisabled then
			return
		end

		-- If we're on a mobile device, cache the current text and render the multi-line mobile text box
		if isScrollable and isMobileDevice then
			if textBoxRef.current and textBoxRef.current.Parent then
				mobileTextBoxTextRef.current = textBoxRef.current.Text
			end
			setIsTouchFocused(true)
		end

		setFocus(true)
		if props.onFocus then
			props.onFocus()
		end
	end, { props.onFocus, props.isDisabled, isMobileDevice, isScrollable } :: { unknown })

	local onFocusLost = React.useCallback(
		function(_rbx: TextBox, enterPressed: boolean, _inputThatCausedFocusLoss: InputObject)
			setFocus(false)

			if isScrollable then
				setIsTouchFocused(false)
			end

			if props.onFocusLost then
				props.onFocusLost()
			end

			if enterPressed and props.onReturnPressed then
				props.onReturnPressed()
			end
		end,
		{ props.onReturnPressed, isScrollable, props.onFocusLost } :: { unknown }
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
	end, { tokens, variantProps.innerContainer.radius } :: { unknown })

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

	local textBoxVerticalPadding
	local textBoxSizeFullHeight
	local scrollViewLayout
	local scrollViewScroll
	local onCursorPositionChanged
	local onScrollingFrameMount
	local onMobileTextBoxMount
	local onScrollCanvasPositionChanged
	if Flags.FoundationInternalTextInputScrolling then
		textBoxVerticalPadding = textBoxWrapperPadding.bottom.Offset + textBoxWrapperPadding.top.Offset
		textBoxSizeFullHeight = UDim2.new(1, 0, 0, textBoxViewportHeight + textBoxVerticalPadding)

		scrollViewLayout = React.useMemo(function()
			return if isScrollable
				then {
					FillDirection = Enum.FillDirection.Vertical,
					ItemLineAlignment = Enum.ItemLineAlignment.Center,
				}
				else nil
		end, { isScrollable })

		scrollViewScroll = React.useMemo(function()
			return if isScrollable
				then {
					AutomaticCanvasSize = Enum.AutomaticSize.Y,
					CanvasSize = UDim2.fromOffset(0, 0),
					ScrollingDirection = Enum.ScrollingDirection.Y,
					VerticalScrollBarInset = Enum.ScrollBarInset.Always,
				}
				else nil
		end, { isScrollable })

		onCursorPositionChanged = React.useCallback(function(textBox: TextBox)
			local scrollingFrame = scrollingFrameRef.current
			local textBoundsBox = textBoundsCheckerRef.current
			if scrollingFrame == nil or textBoundsBox == nil then
				return
			end

			local textHeight = textBox.TextSize * textBox.LineHeight
			local canvasPositionY = scrollingFrame.CanvasPosition.Y

			-- Compute the engine TextBounds up to the cursor position using truncated text
			textBoundsBox.Text = truncateTextToCursor(textBox)
			local truncatedTextHeight = textBoundsBox.TextBounds.Y

			local viewportTopEdge = canvasPositionY
				- textBoxWrapperPadding.top.Offset
				+ textBoxWrapperPadding.bottom.Offset
			local viewportBottomEdge = canvasPositionY
				+ scrollingFrame.AbsoluteSize.Y
				- textBoxWrapperPadding.top.Offset
				- textBoxWrapperPadding.bottom.Offset

			-- Check if cursor position moved up above the viewport. If so, scroll up.
			-- The truncated text bounds will end at the bottom edge of the line to show.
			-- Since we want to scroll to the top edge of the line, factor in text height.
			if truncatedTextHeight - textHeight < viewportTopEdge then
				scrollingFrame.CanvasPosition += Vector2.new(0, truncatedTextHeight - textHeight - viewportTopEdge)
			end

			-- Check if cursor position moved down below the viewport. If so, scroll down.
			if truncatedTextHeight > viewportBottomEdge then
				scrollingFrame.CanvasPosition += Vector2.new(0, truncatedTextHeight - viewportBottomEdge)
			end
		end, { textBoxWrapperPadding })

		onScrollingFrameMount = React.useCallback(function(scrollingFrame: ScrollingFrame?)
			if scrollingFrame == nil then
				return
			end

			scrollingFrameRef.current = scrollingFrame
			scrollingFrame.ClipsDescendants = true
			scrollingFrame.CanvasPosition = lastScrollingFrameCanvasPosition.current
		end, {})

		onMobileTextBoxMount = React.useCallback(function(mobileTextBox: TextBox?)
			if mobileTextBox then
				mobileTextBox.Text = mobileTextBoxTextRef.current
				mobileTextBoxTextRef.current = ""
				mobileTextBox:CaptureFocus()
			end
		end, {})

		onScrollCanvasPositionChanged = React.useCallback(function(scrollingFrame: ScrollingFrame)
			lastScrollingFrameCanvasPosition.current = scrollingFrame.CanvasPosition
		end, {})
	end

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
					TextBoxWrapper = React.createElement(if isScrollable then ScrollView else View, {
						LayoutOrder = 2,
						padding = if not Flags.FoundationInternalTextInputScrolling then textBoxWrapperPadding else nil,
						scroll = scrollViewScroll,
						layout = scrollViewLayout,
						onCanvasPositionChanged = if isScrollable then onScrollCanvasPositionChanged else nil,
						scrollingFrameRef = if isScrollable then onScrollingFrameMount else nil,
						tag = {
							["size-full fill"] = true,
							["clip"] = Flags.FoundationInternalTextInputScrolling,
						},
					}, {
						TextBox = if not Flags.FoundationInternalTextInputScrolling or not isTouchFocused
							then React.createElement(TextBox, {
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
								Size = if isScrollable then textBoxSizeFullHeight else nil,
								automaticSize = if isScrollable
										and not isTouchFocused
										and props.text ~= ""
									then Enum.AutomaticSize.Y
									else nil,
								padding = if Flags.FoundationInternalTextInputScrolling
									then textBoxWrapperPadding
									else nil,
								onFocusGained = onFocusGained,
								onFocusLost = if isScrollable and isMobileDevice then nil else onFocusLost,
								onTextChanged = onTextChange,
								onCursorPositionChanged = if isScrollable then onCursorPositionChanged else nil,
							}, {
								DragDetector = dragDetector,

								-- Used to check the text bounds for cursor refocusing --
								BoundsChecker = if isScrollable
									then React.createElement(TextBox, {
										isBoundsChecker = true,
										fontStyle = fontStyle,
										textStyle = textStyle,
										Size = UDim2.new(1, 0, 1, textBoxVerticalPadding), -- It's required to keep the padding applied in Size instead of as UIPadding due to undesired results with TextBounds calculations
										ref = textBoundsCheckerRef,
									})
									else nil,
							})
							else nil,

						-- Used specifically in mobile scrollable mode. AutomaticSize doesn't play nice with native mobile textboxes.
						MobileTextBox = if isScrollable and isTouchFocused
							then React.createElement(TextBox, {
								text = props.text,
								placeholder = props.placeholder,
								textInputType = props.textInputType,
								fontStyle = fontStyle,
								textStyle = textStyle,
								isMultiLine = isMultiLine,
								isDisabled = props.isDisabled,
								padding = if Flags.FoundationInternalTextInputScrolling
									then textBoxWrapperPadding
									else nil,
								ref = onMobileTextBoxMount,
								tag = `{textBoxTag or ""} data-testid={props.testId}--mobile-textbox`,
								Size = textBoxSizeFullHeight,
								onFocusLost = if isScrollable and isMobileDevice then onFocusLost else nil,
								onTextChanged = onTextChange,
								onCursorPositionChanged = if isScrollable then onCursorPositionChanged else nil,
							})
							else nil,
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
