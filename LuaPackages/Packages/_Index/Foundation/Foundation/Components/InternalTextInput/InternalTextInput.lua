local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Components = Foundation.Components
local Padding = require(Components.Padding)
local ScrollView = require(Components.ScrollView)
local Types = require(Components.Types)
local View = require(Components.View)

local Constants = require(Foundation.Constants)
local Flags = require(Foundation.Utility.Flags)
local blendTransparencies = require(Foundation.Utility.blendTransparencies)
local getDisabledStyle = require(Foundation.Utility.getDisabledStyle)
local getMultiLineTextHeight = require(Foundation.Utility.getMultiLineTextHeight)
local isPluginSecurity = require(Foundation.Utility.isPluginSecurity)
local truncateTextToCursor = require(script.Parent.truncateTextToCursor)
local useBindable = require(Foundation.Utility.useBindable)
local usePreferredInput = require(Foundation.Utility.usePreferredInput)
local useStyleTags = require(Foundation.Providers.Style.useStyleTags)
local useTextInputVariants = require(Components.TextInput.useTextInputVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local InputVariant = require(Foundation.Enums.InputVariant)
type InputVariant = InputVariant.InputVariant

local Radius = require(Foundation.Enums.Radius)
type Radius = Radius.Radius

local ControlState = require(Foundation.Enums.ControlState)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
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
	text: Bindable<string>,
	-- Type of text input. Only available for use in descendants of `CoreGui`.
	textInputType: Enum.TextInputType?,
	-- Size of the text input
	size: InputSize?,
	-- Style variant of the text input
	variant: InputVariant?,
	-- Radius of the input container's corners
	radius: Radius?,
	-- Horizontal-only padding around the text input
	horizontalPadding: HorizontalPadding?,
	-- Whether the input is in an error state
	hasError: boolean?,
	-- Whether the input is disabled
	isDisabled: boolean?,
	-- The number of lines to render at once
	numLines: number?,
	-- https://roblox.atlassian.net/browse/UIBLOX-4297 - REMOVE AFTER CLEANING UP ALL 3 FLAGS: FFlagFoundationTextInputAlignStrokeBehavior, FFlagFoundationInternalTextInputVariants, FFlagFoundationInternalTextInputCornerRadius
	forceEnableFlagsForSearchInput: boolean?,
	-- On input text change
	onChanged: (text: string) -> (),
	onFocus: (() -> ())?,
	-- Called when focus is lost. The InputObject that caused focus to be lost is passed if available.
	onFocusLost: ((inputObject: InputObject?) -> ())?,
	onReturnPressed: (() -> ())?,
	onDragStarted: ((inputObject: InputObject, position: Vector2) -> ())?,
	onDrag: ((inputObject: InputObject, position: Vector2) -> ())?,
	onDragEnded: ((inputObject: InputObject, position: Vector2) -> ())?,
	-- Placeholder text for input
	placeholder: string?,
	-- Background gradient for the input
	backgroundGradient: React.ReactElement?,
	leadingElement: React.ReactElement?,
	trailingElement: React.ReactElement?,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Large,
	variant = if Flags.FoundationInternalTextInputVariants then InputVariant.Standard else nil,
	numLines = 1,
	testId = "--foundation-internal-text-input",
}

type TextBoxProps = {
	Size: UDim2?,
	text: Bindable<string>?,
	fontStyle: Types.FontStyle,
	-- TODO: cleanup with Flags.FoundationCleanupTextInputPolyfill
	textStyle: Types.ColorStyleValue?,
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
	local isBoundsChecker = props.isBoundsChecker
	local isMultiLine = props.isMultiLine or isBoundsChecker

	return React.createElement(
		"TextBox",
		{
			ClearTextOnFocus = false,
			Selectable = false,
			Active = if isBoundsChecker then false else nil,
			Visible = if isBoundsChecker then false else nil,
			BackgroundTransparency = if Flags.FoundationCleanupTextInputPolyfill then nil else 1,
			ClipsDescendants = if Flags.FoundationCleanupTextInputPolyfill then nil else true,
			TextXAlignment = if Flags.FoundationCleanupTextInputPolyfill then nil else Enum.TextXAlignment.Left,
			Font = props.fontStyle.Font,
			TextSize = props.fontStyle.FontSize,
			LineHeight = props.fontStyle.LineHeight,
			TextColor3 = if not Flags.FoundationCleanupTextInputPolyfill and props.textStyle
				then props.textStyle.Color3
				else nil,
			TextTransparency = if not Flags.FoundationCleanupTextInputPolyfill and props.textStyle
				then props.textStyle.Transparency
				else nil,
			MultiLine = isMultiLine,
			TextWrapped = isMultiLine,
			TextYAlignment = if isMultiLine then Enum.TextYAlignment.Top else Enum.TextYAlignment.Center,
			TextEditable = if isBoundsChecker then false else not props.isDisabled,
			PlaceholderText = props.placeholder,
			TextInputType = if isPluginSecurity() then props.textInputType else nil,
			Size = if props.Size ~= nil then props.Size else UDim2.fromScale(1, 1),
			AutomaticSize = props.automaticSize,
			Text = if isBoundsChecker then nil else props.text,
			ref = ref,
			[React.Tag] = props.tag :: any,
			[React.Change.Text] = props.onTextChanged,
			[React.Change.CursorPosition] = props.onCursorPositionChanged,
			[React.Event.Focused] = props.onFocusGained,
			[React.Event.FocusLost] = props.onFocusLost,
		},
		if props.padding
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
	local isScrollable = isMultiLine
	local textBoxRef = React.useRef(nil :: TextBox?)
	local textBoundsCheckerRef = React.useRef(nil :: TextBox?)
	local scrollingFrameRef = React.useRef(nil :: ScrollingFrame?)
	local mobileTextBoxTextRef = React.useRef("")

	local dragStartPosition = React.useRef(nil :: Vector2?)
	local lastScrollingFrameCanvasPosition = React.useRef(Vector2.zero)
	local hover, setHover = React.useState(false)
	local focus, setFocus = React.useState(false)

	-- TODO: cleanup with Flags.FoundationInternalTextInputVariants
	if Flags.FoundationInternalTextInputVariants or props.forceEnableFlagsForSearchInput then
		props.variant = if props.variant then props.variant else InputVariant.Standard
	end
	local variantProps = useTextInputVariants(
		tokens,
		props.size,
		if Flags.FoundationInternalTextInputVariants or props.forceEnableFlagsForSearchInput then props.variant else nil,
		if Flags.FoundationInternalTextInputCornerRadius or props.forceEnableFlagsForSearchInput
			then props.radius
			else nil,
		if Flags.FoundationTextInputAlignStrokeBehavior or props.forceEnableFlagsForSearchInput then focus else nil,
		if Flags.FoundationTextInputAlignStrokeBehavior or props.forceEnableFlagsForSearchInput then hover else nil,
		if Flags.FoundationTextInputAlignStrokeBehavior or props.forceEnableFlagsForSearchInput
			then props.hasError
			else nil,
		props.forceEnableFlagsForSearchInput
	)
	local textBoxTag = useStyleTags(variantProps.textBox.tag)

	-- Whether or not the textbox is currently focused and is in mobile mode --
	local preferredInput = usePreferredInput()
	local isTouchFocused, setIsTouchFocused = React.useState(false)
	local isMobileDevice = preferredInput == Enum.PreferredInput.Touch

	local outerBorderThickness = tokens.Stroke.Standard
	local outerBorderOffset = math.ceil(outerBorderThickness) * 2
	local innerBorderThickness = tokens.Stroke.Thick
	local innerBorderOffset = math.ceil(innerBorderThickness) * 2

	local textStyle = if Flags.FoundationInternalTextInputDisabledTransparency
		then getDisabledStyle(tokens.Color.Content.Emphasis, props.isDisabled)
		else tokens.Color.Content.Emphasis
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
		-- Prevent cases in which text can be cleared accidentally
		if textBox == nil or textBox.Parent == nil or mobileTextBoxTextRef.current ~= "" then
			return
		end

		local newText = textBox.Text
		if isScrollable and textBoundsCheckerRef.current then
			textBoundsCheckerRef.current.Text = newText
		end

		props.onChanged(newText)
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
		function(_rbx: TextBox, enterPressed: boolean, inputThatCausedFocusLoss: InputObject)
			setFocus(false)

			if isScrollable then
				setIsTouchFocused(false)
			end

			if props.onFocusLost then
				props.onFocusLost(inputThatCausedFocusLoss)
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
				(
					variantProps.outerContainer.minHeight
					- outerBorderOffset
					- getMultiLineTextHeight(fontSize, 1, lineHeight)
				) * 2
			) / 2
			local paddingFloored = UDim.new(0, math.floor(containerPaddingY / 2))
			local paddingCeiled = UDim.new(0, math.ceil(containerPaddingY / 2))
			local borderFrameSizeY = textBoxViewportHeight + math.round(containerPaddingY) + outerBorderOffset

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
			lineHeight,
		} :: { unknown }
	)

	local textBoxVerticalPadding = textBoxWrapperPadding.bottom.Offset + textBoxWrapperPadding.top.Offset
	local textBoxSizeFullHeight = UDim2.new(1, 0, 0, textBoxViewportHeight + textBoxVerticalPadding)

	local scrollViewLayout = React.useMemo(function()
		return if isScrollable
			then {
				FillDirection = Enum.FillDirection.Vertical,
				ItemLineAlignment = Enum.ItemLineAlignment.Center,
			}
			else nil
	end, { isScrollable })

	local scrollViewScroll = React.useMemo(function()
		return if isScrollable
			then {
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				CanvasSize = UDim2.fromOffset(0, 0),
				ScrollingDirection = Enum.ScrollingDirection.Y,
				VerticalScrollBarInset = Enum.ScrollBarInset.Always,
			}
			else nil
	end, { isScrollable })

	local onCursorPositionChanged = React.useCallback(function(textBox: TextBox)
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

		local viewportTopEdge = canvasPositionY - textBoxWrapperPadding.top.Offset + textBoxWrapperPadding.bottom.Offset
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

	local onScrollingFrameMount = React.useCallback(function(scrollingFrame: ScrollingFrame?)
		if scrollingFrame == nil then
			return
		end

		scrollingFrameRef.current = scrollingFrame
		scrollingFrame.ClipsDescendants = true
		scrollingFrame.CanvasPosition = lastScrollingFrameCanvasPosition.current
	end, {})

	local onMobileTextBoxMount = React.useCallback(function(mobileTextBox: TextBox?)
		if mobileTextBox then
			mobileTextBox.Text = mobileTextBoxTextRef.current
			mobileTextBoxTextRef.current = ""
			mobileTextBox:CaptureFocus()
		end
	end, {})

	local onScrollCanvasPositionChanged = React.useCallback(function(scrollingFrame: ScrollingFrame)
		lastScrollingFrameCanvasPosition.current = scrollingFrame.CanvasPosition
	end, {})

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

	local horizontalPaddingLeftBinding =
		useBindable(if props.horizontalPadding then props.horizontalPadding.left or UDim.new(0, 0) else UDim.new(0, 0))
	local horizontalPaddingRightBinding =
		useBindable(if props.horizontalPadding then props.horizontalPadding.right or UDim.new(0, 0) else UDim.new(0, 0))

	return React.createElement(
		View,
		withCommonProps(props, {
			GroupTransparency = if not Flags.FoundationInternalTextInputDisabledTransparency and props.isDisabled
				then Constants.DISABLED_TRANSPARENCY
				else nil,
			Size = UDim2.new(1, 0, 0, borderFrameHeight),
			selection = {
				Selectable = not props.isDisabled,
			},
			cursor = cursor,
			stroke = if not (Flags.FoundationTextInputAlignStrokeBehavior or props.forceEnableFlagsForSearchInput)
					or (variantProps.outerView.strokeStyle and variantProps.outerView.strokeThickness)
				then {
					Color = if Flags.FoundationTextInputAlignStrokeBehavior
							or props.forceEnableFlagsForSearchInput
						then variantProps.outerView.strokeStyle.Color3
						elseif props.hasError then tokens.Color.System.Alert.Color3
						else tokens.Color.Stroke.Emphasis.Color3,
					Transparency = if Flags.FoundationTextInputAlignStrokeBehavior
							or props.forceEnableFlagsForSearchInput
						then if props.isDisabled
							then blendTransparencies(
								variantProps.outerView.strokeStyle.Transparency,
								Constants.DISABLED_TRANSPARENCY
							)
							else variantProps.outerView.strokeStyle.Transparency
						else if props.hasError
							then tokens.Color.System.Alert.Transparency
							else if focus then 0 else tokens.Color.Stroke.Emphasis.Transparency,
					Thickness = if Flags.FoundationTextInputAlignStrokeBehavior
							or props.forceEnableFlagsForSearchInput
						then variantProps.outerView.strokeThickness
						else outerBorderThickness,
					BorderStrokePosition = if (
							Flags.FoundationTextInputAlignStrokeBehavior or props.forceEnableFlagsForSearchInput
						) and (focus or hover)
						then Enum.BorderStrokePosition.Center
						else Enum.BorderStrokePosition.Inner,
				}
				else nil,
			cornerRadius = if Flags.FoundationTextInputSingleLineCircleRadius
					and props.radius == Radius.Circle
				then UDim.new(0, math.ceil(variantProps.outerContainer.minHeight / 2))
				else nil,
			padding = {
				left = horizontalPaddingLeftBinding:map(function(leftPadding)
					return UDim.new(0, outerBorderThickness) + leftPadding
				end),
				right = horizontalPaddingRightBinding:map(function(rightPadding)
					return UDim.new(0, outerBorderThickness) + rightPadding
				end),
				top = UDim.new(0, outerBorderThickness),
				bottom = UDim.new(0, outerBorderThickness),
			},
			onActivated = if not props.isDisabled then focusTextBox else nil,
			onStateChanged = onInputStateChanged,
			isDisabled = props.isDisabled,
			backgroundStyle = if not (
						Flags.FoundationInternalTextInputVariants or props.forceEnableFlagsForSearchInput
					) or variantProps.outerView.bgStyle
				then if Flags.FoundationInternalTextInputDisabledTransparency
					then getDisabledStyle({
						-- TODO: cleanup casts with Flags.FoundationInternalTextInputVariants
						Color3 = (variantProps.outerView.bgStyle :: Types.ColorStyleValue).Color3,
						Transparency = if props.backgroundGradient
							then 0
							else (variantProps.outerView.bgStyle :: Types.ColorStyleValue).Transparency,
					}, props.isDisabled)
					else {
						-- TODO: cleanup casts with Flags.FoundationInternalTextInputVariants
						Color3 = (variantProps.outerView.bgStyle :: Types.ColorStyleValue).Color3,
						Transparency = if props.backgroundGradient
							then 0
							else (variantProps.outerView.bgStyle :: Types.ColorStyleValue).Transparency,
					}
				else nil,
			-- TODO: Update to border affordance
			stateLayer = { affordance = StateLayerAffordance.None },
			tag = variantProps.outerView.tag,
			testId = `{props.testId}--outer-container`,
		}),
		{
			DragDetector = dragDetector,
			Background = props.backgroundGradient,
			HoverStroke = if not (
						Flags.FoundationTextInputAlignStrokeBehavior or props.forceEnableFlagsForSearchInput
					)
					and not props.isDisabled
					and (hover or focus)
				then React.createElement("UIStroke", {
					Color = tokens.Color.Stroke.Emphasis.Color3,
					Transparency = tokens.Color.Stroke.Emphasis.Transparency,
					Thickness = innerBorderThickness,
					BorderStrokePosition = Enum.BorderStrokePosition.Inner,
					BorderOffset = UDim.new(0, -innerBorderOffset / 2),
				})
				else nil,

			Leading = if props.leadingElement
				then React.createElement(View, {
					GroupTransparency = if Flags.FoundationInternalTextInputDisabledTransparency
							and props.isDisabled
						then Constants.DISABLED_TRANSPARENCY
						else nil,
					LayoutOrder = 1,
					tag = "size-0-full auto-x",
					testId = `{props.testId}--leading`,
				}, props.leadingElement)
				else nil,
			TextBoxWrapper = React.createElement(if isScrollable then ScrollView else View, {
				LayoutOrder = 2,
				scroll = scrollViewScroll,
				layout = scrollViewLayout,
				onCanvasPositionChanged = if isScrollable then onScrollCanvasPositionChanged else nil,
				scrollingFrameRef = if isScrollable then onScrollingFrameMount else nil,
				tag = "size-full fill clip",
			}, {
				TextBox = if not isTouchFocused
					then React.createElement(TextBox, {
						text = props.text,
						placeholder = props.placeholder,
						textInputType = props.textInputType,
						fontStyle = fontStyle,
						textStyle = textStyle,
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
						padding = textBoxWrapperPadding,
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
						padding = textBoxWrapperPadding,
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
					GroupTransparency = if Flags.FoundationInternalTextInputDisabledTransparency
							and props.isDisabled
						then Constants.DISABLED_TRANSPARENCY
						else nil,
					LayoutOrder = 3,
					tag = "size-0-full auto-x",
					testId = `{props.testId}--trailing`,
				}, props.trailingElement)
				else nil,
		}
	)
end

return React.memo(React.forwardRef(InternalTextInput))
