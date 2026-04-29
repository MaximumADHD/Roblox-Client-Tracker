local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)

local Components = Foundation.Components
local Icon = require(Components.Icon)
local Padding = require(Components.Padding)
local ScrollView = require(Components.ScrollView)
local Types = require(Components.Types)
local View = require(Components.View)

local Constants = require(Foundation.Constants)
local Flags = require(Foundation.Utility.Flags)
local blendTransparencies = require(Foundation.Utility.blendTransparencies)
local getBindableValue = require(Foundation.Utility.getBindableValue)
local getDisabledStyle = require(Foundation.Utility.getDisabledStyle)
local getMultiLineTextHeight = require(Foundation.Utility.getMultiLineTextHeight)
local isPluginSecurity = require(Foundation.Utility.isPluginSecurity)
local mapBindable = require(Foundation.Utility.mapBindable)
local truncateTextToCursor = require(script.Parent.truncateTextToCursor)
local useBindable = require(Foundation.Utility.useBindable)
local usePreferredInput = require(Foundation.Utility.usePreferredInput)
local useStyleTags = require(Foundation.Providers.Style.useStyleTags)
local useTextInputVariants = require(Components.TextInput.useTextInputVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local InputFocusBehavior = require(Foundation.Enums.InputFocusBehavior)
type InputFocusBehavior = InputFocusBehavior.InputFocusBehavior

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
	-- Behavior of the input when focused. Mobile does not yet support Highlight behavior.
	focusBehavior: InputFocusBehavior?,
	-- Whether the input has a clear button
	hasClearButton: boolean?,
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
	variant = InputVariant.Standard,
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
	automaticSize: Bindable<Enum.AutomaticSize>?,
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
			TextColor3 = if props.textStyle then props.textStyle.Color3 else nil,
			TextTransparency = if props.textStyle then props.textStyle.Transparency else nil,
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
	local mobileTextBoxRef = if Flags.FoundationTextInputFocusBehavior
		then React.useRef(nil :: TextBox?)
		else nil :: never
	local textBoundsCheckerRef = React.useRef(nil :: TextBox?)
	local scrollingFrameRef = React.useRef(nil :: ScrollingFrame?)
	local mobileTextBoxTextRef = React.useRef("")
	local lastDispatchedTextRef = if Flags.FoundationTextInputFocusBehavior
		then React.useRef(getBindableValue(props.text))
		else nil :: never

	local dragStartPosition = React.useRef(nil :: Vector2?)
	local lastScrollingFrameCanvasPosition = React.useRef(Vector2.zero)
	local hover, setHover = React.useState(false)
	local focus, setFocus = React.useState(false)

	local variantProps =
		useTextInputVariants(tokens, props.size, props.variant, props.radius, focus, hover, props.hasError)
	-- TODO: remove the redundant aliases when FFlagFoundationInputVariantsConsolidateContainer is cleaned up
	local innerContainerProps = if Flags.FoundationInputVariantsConsolidateContainer
		then variantProps.container
		else variantProps.innerContainer
	local outerContainerProps = if Flags.FoundationInputVariantsConsolidateContainer
		then variantProps.container
		else variantProps.outerContainer
	-- END TODO
	local containerProps = if Flags.FoundationInputVariantsConsolidateContainer
		then variantProps.container
		else variantProps.outerView
	local textBoxTag = useStyleTags(variantProps.textBox.tag)

	-- Whether or not the textbox is currently focused and is in mobile mode --
	local preferredInput = usePreferredInput()
	local isTouchFocused, setIsTouchFocused = React.useState(false)
	local isMobileDevice = preferredInput == Enum.PreferredInput.Touch

	local outerBorderThickness = tokens.Stroke.Standard
	local outerBorderOffset = math.ceil(outerBorderThickness) * 2
	local innerBorderThickness = tokens.Stroke.Thick
	local innerBorderOffset = math.ceil(innerBorderThickness) * 2

	local textStyle = getDisabledStyle(tokens.Color.Content.Emphasis, props.isDisabled)
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
		if Flags.FoundationTextInputFocusBehavior and mobileTextBoxRef.current then
			mobileTextBoxRef.current.SelectionStart = position
		end
	end, {})

	local setCursorPosition = React.useCallback(function(position)
		if textBoxRef.current then
			textBoxRef.current.CursorPosition = position
		end
		if Flags.FoundationTextInputFocusBehavior and mobileTextBoxRef.current then
			mobileTextBoxRef.current.CursorPosition = position
		end
	end, {})

	local clearText = if Flags.FoundationInternalTextInputClearButton
		then React.useCallback(function()
			if textBoxRef.current then
				textBoxRef.current.Text = ""
			end
		end, {})
		else nil

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
		-- Mobile overlay handoff can emit duplicate Text change events for the same value.
		if Flags.FoundationTextInputFocusBehavior then
			if newText == lastDispatchedTextRef.current then
				return
			end
			lastDispatchedTextRef.current = newText
		end

		if isScrollable and textBoundsCheckerRef.current then
			textBoundsCheckerRef.current.Text = newText
		end

		props.onChanged(newText)
	end, { props.onChanged, isScrollable, isTouchFocused } :: { unknown })

	local onFocusGained = React.useCallback(
		function()
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

			if Flags.FoundationTextInputFocusBehavior then
				local focusBehavior = props.focusBehavior
				if focusBehavior == InputFocusBehavior.Clear then
					-- Prevent stale cached text from being reapplied when the mobile overlay textbox mounts.
					-- We may be able to use ClearTextOnFocus instead, but having the logic all together makes it easier to reason about :)
					mobileTextBoxTextRef.current = ""
					if textBoxRef.current then
						textBoxRef.current.Text = ""
					end
					if mobileTextBoxRef.current then
						mobileTextBoxRef.current.Text = ""
					end
				elseif focusBehavior == InputFocusBehavior.Highlight then
					-- small delay bypasses engine bug where all characters are selected except for the last one
					task.spawn(function()
						local textBox = textBoxRef.current or mobileTextBoxRef.current
						if textBox and textBox.Parent ~= nil then
							local inputLength = utf8.len(textBox.Text)
							if inputLength then
								setSelectionStart(0)
								setCursorPosition(inputLength + 1)
							end
						end
					end)
				end
			end
		end,
		{
			props.onFocus,
			props.isDisabled,
			isMobileDevice,
			isScrollable,
			if Flags.FoundationTextInputFocusBehavior then props.focusBehavior else nil,
			if Flags.FoundationTextInputFocusBehavior then setSelectionStart else nil,
			if Flags.FoundationTextInputFocusBehavior then setCursorPosition else nil,
		} :: { unknown }
	)

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
			radius = UDim.new(0, innerContainerProps.radius),
			offset = tokens.Stroke.Thick,
			borderWidth = tokens.Stroke.Thick,
		}
	end, { tokens, innerContainerProps.radius } :: { unknown })

	local textBoxViewportHeight = React.useMemo(function()
		return getMultiLineTextHeight(fontSize, lineCount, lineHeight)
	end, { fontSize, lineCount, lineHeight } :: { unknown })

	local textBoxWrapperPadding, borderFrameHeight = React.useMemo(
		function()
			-- This variable needs to be in increments of 0.5 to account for +- 1 on top and bottom padding.
			-- If we round it off, then the container won't visibily line up pixel-perfectly with any size tokens
			-- (see NumberInput)
			local containerPaddingY = math.round(
				(outerContainerProps.minHeight - outerBorderOffset - getMultiLineTextHeight(fontSize, 1, lineHeight))
					* 2
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
			outerContainerProps.minHeight,
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

	-- This positions the clear text button in the center of the input container, based on single-line input height. There's not a clean way to do this with engine layouts at the moment
	local clearTextButtonPosition = if Flags.FoundationInternalTextInputClearButton
		then React.useMemo(function()
			return if props.hasClearButton
				then UDim2.fromOffset(0, (outerContainerProps.minHeight - tokens.Stroke.Standard) / 2)
				else nil
		end, { props.hasClearButton, outerContainerProps.minHeight, tokens.Stroke.Standard } :: { unknown })
		else nil :: never

	local multilineMobileTextBoxRef = if Flags.FoundationTextInputFocusBehavior
		then ReactUtils.useComposedRef(
			(mobileTextBoxRef :: unknown) :: React.Ref<Instance?>,
			(onMobileTextBoxMount :: unknown) :: React.Ref<Instance?>
		)
		else nil

	return React.createElement(
		View,
		withCommonProps(props, {
			Size = UDim2.new(1, 0, 0, borderFrameHeight),
			selection = {
				Selectable = not props.isDisabled,
			},
			cursor = cursor,
			stroke = if containerProps.strokeStyle and containerProps.strokeThickness
				then {
					Color = containerProps.strokeStyle.Color3,
					Transparency = if props.isDisabled
						then blendTransparencies(
							containerProps.strokeStyle.Transparency,
							Constants.DISABLED_TRANSPARENCY
						)
						else containerProps.strokeStyle.Transparency,
					Thickness = containerProps.strokeThickness,
					BorderStrokePosition = if focus or hover
						then Enum.BorderStrokePosition.Center
						else Enum.BorderStrokePosition.Inner,
				}
				else nil,
			cornerRadius = if props.radius == Radius.Circle
				then UDim.new(0, math.ceil(outerContainerProps.minHeight / 2))
				else nil,
			padding = {
				left = horizontalPaddingLeftBinding:map(function(leftPadding)
					return UDim.new(0, outerBorderThickness) + leftPadding
				end),
				-- account for border thickness, since Clear has extra padding around it
				right = if Flags.FoundationInternalTextInputClearButton
						and props.trailingElement == nil
						and props.hasClearButton
					then UDim.new(0, outerBorderThickness)
					else horizontalPaddingRightBinding:map(function(rightPadding)
						return UDim.new(0, outerBorderThickness) + rightPadding
					end),
				top = UDim.new(0, outerBorderThickness),
				bottom = UDim.new(0, outerBorderThickness),
			},
			onActivated = if not props.isDisabled then focusTextBox else nil,
			onStateChanged = onInputStateChanged,
			isDisabled = props.isDisabled,
			backgroundStyle = if containerProps.bgStyle
				then getDisabledStyle({
					Color3 = containerProps.bgStyle.Color3,
					Transparency = if props.backgroundGradient then 0 else containerProps.bgStyle.Transparency,
				}, props.isDisabled)
				else nil,
			-- TODO: Update to border affordance
			stateLayer = { affordance = StateLayerAffordance.None },
			tag = containerProps.tag,
			testId = `{props.testId}--outer-container`,
		}),
		{
			DragDetector = dragDetector,
			Background = props.backgroundGradient,

			Leading = if props.leadingElement
				then React.createElement(View, {
					GroupTransparency = if props.isDisabled then Constants.DISABLED_TRANSPARENCY else nil,
					LayoutOrder = 1,
					tag = "size-0-full auto-x",
					testId = `{props.testId}--leading`,
				}, props.leadingElement)
				else nil,
			TextBoxWrapper = React.createElement(if isScrollable then ScrollView else View, {
				LayoutOrder = 2,
				selection = if Flags.FoundationTextAreaFixDoubleSelection then { Selectable = false } else nil,
				scroll = scrollViewScroll,
				layout = scrollViewLayout,
				onCanvasPositionChanged = if isScrollable then onScrollCanvasPositionChanged else nil,
				scrollingFrameRef = if isScrollable then onScrollingFrameMount else nil,
				tag = "fill size-full clip",
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
						automaticSize = (if Flags.FoundationNumberInputBindableValue
							then mapBindable(props.text, function(text)
								return if isScrollable
										and not isTouchFocused
										and text ~= ""
									then Enum.AutomaticSize.Y
									else nil
							end)
							else if isScrollable
									and not isTouchFocused
									and props.text ~= ""
								then Enum.AutomaticSize.Y
								else nil) :: Bindable<Enum.AutomaticSize>?,
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
						ref = if Flags.FoundationTextInputFocusBehavior
							then multilineMobileTextBoxRef
							else onMobileTextBoxMount,
						tag = `{textBoxTag or ""} data-testid={props.testId}--mobile-textbox`,
						Size = textBoxSizeFullHeight,
						onFocusLost = if isScrollable and isMobileDevice then onFocusLost else nil,
						onTextChanged = onTextChange,
						onCursorPositionChanged = if isScrollable then onCursorPositionChanged else nil,
					})
					else nil,
			}),
			Clear = if Flags.FoundationInternalTextInputClearButton and props.hasClearButton
				then React.createElement(View, {
					isDisabled = props.isDisabled,
					GroupTransparency = if props.isDisabled then Constants.DISABLED_TRANSPARENCY else nil,
					LayoutOrder = 3,
					Visible = mapBindable(props.text, function(text)
						return text ~= ""
					end),
					tag = variantProps.clearButton.tag,
				}, {
					ClearButton = React.createElement(View, {
						onActivated = clearText,
						padding = UDim.new(0, variantProps.clearButton.padding),
						Position = clearTextButtonPosition,
						stateLayer = { affordance = StateLayerAffordance.None },
						tag = "anchor-center-left auto-xy",
						testId = `{props.testId}--clear-button`,
					}, {
						Icon = React.createElement(Icon, {
							name = variantProps.clearButton.icon :: string,
						}),
					}),
				})
				else nil,
			Trailing = if props.trailingElement
				then React.createElement(View, {
					GroupTransparency = if props.isDisabled then Constants.DISABLED_TRANSPARENCY else nil,
					LayoutOrder = if Flags.FoundationInternalTextInputClearButton then 4 else 3,
					tag = "size-0-full auto-x",
					testId = `{props.testId}--trailing`,
				}, props.trailingElement)
				else nil,
		}
	)
end

return React.memo(React.forwardRef(InternalTextInput))
