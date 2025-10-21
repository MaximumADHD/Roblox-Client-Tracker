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

local function InternalTextInput(textInputProps: TextInputProps, ref: React.Ref<InternalTextInputRef>?)
	local props = withDefaults(textInputProps, defaultProps)
	local tokens = useTokens()
	local lineCount = math.max(1, props.maxLines :: number)
	local isMultiLine = lineCount > 1
	local variantProps = useTextInputVariants(tokens, props.size, isMultiLine)

	local textBox = React.useRef(nil :: TextBox?)
	local dragStartPosition = React.useRef(nil :: Vector2?)
	local hover, setHover = React.useState(false)
	local focus, setFocus = React.useState(false)

	local outerBorderThickness = tokens.Stroke.Standard
	local outerBorderOffset = math.ceil(outerBorderThickness) * 2
	local innerBorderThickness = tokens.Stroke.Thick
	local innerBorderOffset = math.ceil(innerBorderThickness) * 2

	local fontSize = variantProps.textBox.FontSize
	local lineHeight = variantProps.textBox.LineHeight

	local focusTextBox = React.useCallback(function()
		if textBox.current then
			textBox.current:CaptureFocus()
		end
	end, {})

	local releaseTextBoxFocus = React.useCallback(function()
		if textBox.current then
			textBox.current:ReleaseFocus()
		end
	end, {})

	local getIsFocused = React.useCallback(function()
		if textBox.current then
			return textBox.current:IsFocused() :: boolean?
		end
		return nil
	end, {})

	React.useImperativeHandle(ref, function()
		return {
			getIsFocused = getIsFocused,
			focus = focusTextBox,
			releaseFocus = releaseTextBoxFocus,
			setHover = setHover,
		}
	end, { getIsFocused :: unknown, focusTextBox, releaseTextBoxFocus })

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

	local textBoxTag = if Flags.FoundationDisableStylingPolyfill then useStyleTags(variantProps.textBox.tag) else nil

	local cursor = React.useMemo(function()
		return {
			radius = UDim.new(0, variantProps.innerContainer.radius),
			offset = tokens.Stroke.Thick,
			borderWidth = tokens.Stroke.Thick,
		}
	end, { tokens :: unknown, variantProps.innerContainer.radius })

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
			local borderFrameSizeY = getMultiLineTextHeight(fontSize, lineCount, lineHeight)
				+ math.round(containerPaddingY)

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
			lineCount,
			lineHeight,
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
			padding = if Flags.FoundationInternalTextInputAutoSize or isMultiLine then outerBorderOffset / 2 else nil,
			tag = variantProps.canvas.tag,
		}),
		{
			Input = React.createElement(View, {
				Size = if Flags.FoundationInternalTextInputAutoSize or isMultiLine
					then nil
					else UDim2.new(1, -outerBorderOffset, 1, -outerBorderOffset),
				Position = if Flags.FoundationInternalTextInputAutoSize or isMultiLine
					then nil
					else UDim2.fromOffset(outerBorderOffset / 2, outerBorderOffset / 2),
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
				padding = if Flags.FoundationInternalTextInputAutoSize or isMultiLine
					then innerBorderOffset / 2
					else nil,
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
					Size = if Flags.FoundationInternalTextInputAutoSize or isMultiLine
						then UDim2.new(1, 0, 0, borderFrameHeight)
						else UDim2.new(1, -innerBorderOffset, 1, -innerBorderOffset),
					Position = if Flags.FoundationInternalTextInputAutoSize or isMultiLine
						then nil
						else UDim2.fromOffset(innerBorderOffset / 2, innerBorderOffset / 2),
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
						}, props.leadingElement)
						else nil,
					TextBoxWrapper = React.createElement(View, {
						LayoutOrder = 2,
						padding = if Flags.FoundationInternalTextInputAutoSize or isMultiLine
							then textBoxWrapperPadding
							else nil,
						tag = "size-full fill",
					}, {
						TextBox = React.createElement("TextBox", {
							ref = textBox,
							Text = props.text,
							TextInputType = if isPluginSecurity() then props.textInputType else nil,
							ClearTextOnFocus = false,
							TextEditable = not props.isDisabled,
							PlaceholderText = props.placeholder,
							Selectable = false,
							MultiLine = if Flags.FoundationInternalTextInputAutoSize then isMultiLine else nil,
							LineHeight = lineHeight,
							-- BEGIN: Remove when Flags.FoundationDisableStylingPolyfill is removed
							Size = UDim2.fromScale(1, 1),
							BackgroundTransparency = 1,
							ClipsDescendants = true,
							TextWrapped = isMultiLine,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextYAlignment = if isMultiLine
								then Enum.TextYAlignment.Top
								else Enum.TextYAlignment.Center,
							Font = variantProps.textBox.Font,
							TextSize = fontSize,
							TextColor3 = tokens.Color.Content.Emphasis.Color3,
							TextTransparency = tokens.Color.Content.Emphasis.Transparency,
							-- END: Remove when Flags.FoundationDisableStylingPolyfill is removed

							[React.Tag] = textBoxTag :: any,
							[React.Event.Focused] = onFocusGained,
							[React.Event.FocusLost] = onFocusLost,
							[React.Change.Text] = onTextChange,
						}, {
							DragDetector = dragDetector,
						}),
					}),
					Trailing = if props.trailingElement
						then React.createElement(View, {
							LayoutOrder = 3,
							tag = "size-0-full auto-x",
						}, props.trailingElement)
						else nil,
				}),
			}),
		}
	)
end

return React.memo(React.forwardRef(InternalTextInput))
