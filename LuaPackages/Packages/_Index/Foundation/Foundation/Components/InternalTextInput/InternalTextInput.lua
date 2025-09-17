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
	-- On input text change
	onChanged: (text: string) -> (),
	onFocus: (() -> ())?,
	onFocusLost: (() -> ())?,
	onReturnPressed: (() -> ())?,
	-- Placeholder text for input
	placeholder: string?,
	leadingElement: React.ReactElement?,
	trailingElement: React.ReactElement?,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Large,
}

local function InternalTextInput(textInputProps: TextInputProps, ref: React.Ref<InternalTextInputRef>?)
	local props = withDefaults(textInputProps, defaultProps)
	local tokens = useTokens()
	local variantProps = useTextInputVariants(tokens, props.size)

	local textBox = React.useRef(nil :: TextBox?)
	local hover, setHover = React.useState(false)
	local focus, setFocus = React.useState(false)

	local outerBorderThickness = tokens.Stroke.Standard
	local outerBorderOffset = math.ceil(outerBorderThickness) * 2
	local innerBorderThickness = tokens.Stroke.Thick
	local innerBorderOffset = math.ceil(innerBorderThickness) * 2

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

	local textBoxTag = if Flags.FoundationDisableStylingPolyfill then useStyleTags(variantProps.textBox.tag) else nil

	local cursor = React.useMemo(function()
		return {
			radius = UDim.new(0, variantProps.innerContainer.radius),
			offset = tokens.Stroke.Thick,
			borderWidth = tokens.Stroke.Thick,
		}
	end, { tokens :: unknown, variantProps.innerContainer.radius })

	return React.createElement(
		View,
		withCommonProps(props, {
			GroupTransparency = if props.isDisabled then FoundationConstants.DISABLED_TRANSPARENCY else nil,
			tag = variantProps.canvas.tag,
		}),
		{
			Input = React.createElement(View, {
				Size = UDim2.new(1, -outerBorderOffset, 1, -outerBorderOffset),
				Position = UDim2.fromOffset(outerBorderOffset / 2, outerBorderOffset / 2),
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

				onActivated = focusTextBox,
				onStateChanged = onInputStateChanged,
				-- TODO: Update to border affordance
				stateLayer = { affordance = StateLayerAffordance.None },
				tag = variantProps.outerContainer.tag,
			}, {
				BorderFrame = React.createElement(View, {
					Size = UDim2.new(1, -innerBorderOffset, 1, -innerBorderOffset),
					Position = UDim2.fromOffset(innerBorderOffset / 2, innerBorderOffset / 2),
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
							LineHeight = 1,
							-- BEGIN: Remove when Flags.FoundationDisableStylingPolyfill is removed
							Size = UDim2.fromScale(1, 1),
							BackgroundTransparency = 1,
							ClipsDescendants = true,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextYAlignment = Enum.TextYAlignment.Center,
							Font = variantProps.textBox.Font,
							TextSize = variantProps.textBox.FontSize,
							TextColor3 = tokens.Color.Content.Emphasis.Color3,
							TextTransparency = tokens.Color.Content.Emphasis.Transparency,
							-- END: Remove when Flags.FoundationDisableStylingPolyfill is removed

							[React.Tag] = textBoxTag :: any,
							[React.Event.Focused] = onFocusGained,
							[React.Event.FocusLost] = onFocusLost,
							[React.Change.Text] = onTextChange,
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
