local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Flags = require(Foundation.Utility.Flags)

local React = require(Packages.React)

local Components = Foundation.Components
local InputLabel = require(Components.InputLabel)
local HintText = require(Components.HintText)
local Icon = require(Components.Icon)
local IconButton = require(Components.IconButton)
local IconSize = require(Foundation.Enums.IconSize)
local View = require(Components.View)
local Types = require(Foundation.Components.Types)

local useTokens = require(Foundation.Providers.Style.useTokens)
local useStyleTags = require(Foundation.Providers.Style.useStyleTags)
local useCursor = require(Foundation.Providers.Cursor.useCursor)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
type InputLabelSize = InputLabelSize.InputLabelSize

local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

type TextInputProps = {
	-- Input text value
	text: string,
	-- Whether the input is in an error state
	hasError: boolean?,
	-- Whether the input is disabled
	isDisabled: boolean?,
	-- Whether the input is required, true for "*", false for " (optional)", nil for nothing
	isRequired: boolean?,
	-- On input text change
	onChanged: (text: string) -> (),
	-- Input label text. To omit, set to an empty string
	label: string,
	-- Hint text below the input, is red on error
	hint: string?,
	-- Placeholder text for input
	placeholder: string?,
	-- Width of the component
	width: UDim?,
	-- Image before the input
	iconLeading: string?,
	-- Image after the input, can be pressed
	iconTrailing: string? | {
		name: string,
		onActivated: () -> (),
	}?,
} & Types.CommonProps

local defaultProps = {
	width = UDim.new(0, 400),
}

local function TextInput(TextInputProps: TextInputProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(TextInputProps, defaultProps)

	local tokens = useTokens()

	local textBox = React.useRef(nil)
	local hover, setHover = React.useState(false)
	local focus, setFocus = React.useState(false)

	local selectionBorderThickness = tokens.Stroke.Thick
	local iconSize = tokens.Semantic.Icon.Size.Small -- TODO(tokens): Replace with a non-semantic token

	local outerBorderThickness = tokens.Stroke.Standard
	local outerBorderOffset = math.ceil(outerBorderThickness) * 2
	local innerBorderThickness = tokens.Stroke.Thick
	local innerBorderOffset = math.ceil(innerBorderThickness) * 2

	local width = if props.width ~= nil then props.width else defaultProps.width

	local textBoxWidthOffset = React.useMemo(function()
		local offset = 0
		if props.iconLeading then
			offset -= iconSize
			offset -= tokens.Gap.Large
		end
		if props.iconTrailing then
			offset -= iconSize
			offset -= tokens.Gap.Large
		end
		return offset
	end, { props.iconLeading :: any, props.iconTrailing, tokens })

	local onTextChange = React.useCallback(function(rbx: TextBox?)
		if rbx == nil then
			props.onChanged("")
		else
			props.onChanged(rbx.Text)
		end
	end, { props.onChanged })

	local onFocusGained = React.useCallback(function()
		if not props.isDisabled then
			setFocus(true)
		end
	end, { props.isDisabled })

	local onFocusLost = React.useCallback(function()
		setFocus(false)
	end, {})

	local focusTextBox = React.useCallback(function()
		if textBox.current then
			textBox.current:CaptureFocus()
		end
	end, {})

	local onInputStateChanged = React.useCallback(function(newState: ControlState)
		setHover(newState == ControlState.Hover)
	end, {})

	local textBoxTag = if Flags.FoundationStylingPolyfill
		then nil
		else useStyleTags(
			"gui-object-defaults clip text-align-x-left text-align-y-center text-body-large content-emphasis"
		)

	local inputCursor = useCursor({
		radius = UDim.new(0, tokens.Radius.Medium),
		offset = selectionBorderThickness,
		borderWidth = selectionBorderThickness,
	})

	local iconTrailing = if props.iconTrailing
		then React.createElement(Icon, {
			name = if type(props.iconTrailing) == "table" then props.iconTrailing.name else props.iconTrailing,
			style = tokens.Color.Content.Muted,
			size = IconSize.Small,
			LayoutOrder = 3,
		})
		else nil

	return React.createElement(
		View,
		withCommonProps(props, {
			Size = UDim2.new(width, UDim.new(0, 0)),

			tag = "col gap-xsmall auto-y",
			ref = ref,
		}),
		{
			InputLabel = if #props.label > 0
				then React.createElement(InputLabel, {
					Text = props.label,
					size = InputLabelSize.Small,
					isRequired = props.isRequired,
					onActivated = focusTextBox,
					onHover = function(hovering)
						setHover(hovering)
					end,
					LayoutOrder = 1,
				})
				else nil,

			InputCanvas = React.createElement(View, {
				LayoutOrder = 2,
				GroupTransparency = if props.isDisabled then 0.32 else nil, -- TODO(tokens): replace opacity with token

				tag = "size-full-1200",
			}, {
				Input = React.createElement(View, {
					Size = UDim2.new(1, -outerBorderOffset, 1, -outerBorderOffset),
					Position = UDim2.new(0, outerBorderOffset / 2, 0, outerBorderOffset / 2),
					selection = {
						Selectable = not props.isDisabled,
						SelectionImageObject = inputCursor,
					},
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
					tag = "radius-medium bg-shift-100",
				}, {
					BorderFrame = React.createElement(View, {
						Size = UDim2.new(1, -innerBorderOffset, 1, -innerBorderOffset),
						Position = UDim2.new(0, innerBorderOffset / 2, 0, innerBorderOffset / 2),
						cornerRadius = UDim.new(0, tokens.Radius.Medium - innerBorderOffset / 2),
						stroke = if not props.isDisabled and (hover or focus)
							then {
								Color = tokens.Color.Stroke.Emphasis.Color3,
								Transparency = 0.88, -- TODO(tokens): replace opacity with token
								Thickness = innerBorderThickness,
							}
							else nil,

						tag = "row gap-large align-y-center padding-x-medium",
					}, {
						IconLeading = if props.iconLeading
							then React.createElement(Icon, {
								name = props.iconLeading,
								style = tokens.Color.Content.Muted,
								size = IconSize.Small,
								LayoutOrder = 1,
							})
							else nil,

						TextBox = React.createElement("TextBox", {
							ref = textBox,
							Text = props.text,
							ClearTextOnFocus = false,
							Size = UDim2.new(1, textBoxWidthOffset, 1, 0),
							TextEditable = not props.isDisabled,
							LineHeight = 1,
							PlaceholderText = props.placeholder,
							Selectable = false,
							LayoutOrder = 2,

							-- BEGIN: Remove when Flags.FoundationStylingPolyfill is removed
							BackgroundTransparency = 1,
							ClipsDescendants = true,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextYAlignment = Enum.TextYAlignment.Center,
							Font = tokens.Typography.BodyLarge.Font,
							TextSize = tokens.Typography.BodyLarge.FontSize,
							TextColor3 = tokens.Color.Content.Emphasis.Color3,
							TextTransparency = tokens.Color.Content.Emphasis.Transparency,
							-- END: Remove when Flags.FoundationStylingPolyfill is removed

							[React.Tag] = textBoxTag :: any,

							[React.Event.Focused] = onFocusGained,
							[React.Event.FocusLost] = onFocusLost,
							[React.Change.Text] = onTextChange,
						}),

						IconTrailing = if type(props.iconTrailing) == "table"
								and props.iconTrailing.onActivated
							then React.createElement(IconButton, {
								onActivated = props.iconTrailing.onActivated,
								isDisabled = props.isDisabled,
								size = IconSize.Small,
								icon = props.iconTrailing.name,
								LayoutOrder = 3,
							})
							else iconTrailing,
					}),
				}),
			}),

			HintText = if props.hint
				then React.createElement(HintText, {
					text = props.hint,
					hasError = props.hasError,
					LayoutOrder = 3,
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(TextInput))
