local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local TextService = game:GetService("TextService")

local Dash = require(Packages.Dash)
local Foundation = require(Packages.Foundation)
local MomentsCommon = require(Packages.MomentsCommon)
local React = require(Packages.React)

local useBinding = React.useBinding
local useCallback = React.useCallback
local useDeviceInsets = MomentsCommon.Hooks.useDeviceInsets
local useEffectOnce = require(MomentsCreationFlow.Hooks.useEffectOnce)
local useOnScreenKeyboardHeight = require(MomentsCreationFlow.Hooks.useOnScreenKeyboardHeight)
local useRef = React.useRef
local useState = React.useState
local useTokens = Foundation.Hooks.useTokens

local Knob = Foundation.Knob
local Slider = Foundation.Slider
local View = Foundation.View

local TextOverlay = MomentsCommon.TextOverlay

type TextOverlayEdit = MomentsCommon.TextOverlayEdit

local CHAR_LIMIT = 100

local TEXT_SIZE_CHAR = "W"

local ESTIMATED_MAX_CHARS_PER_LINE = 30
local ESTIMATED_MAX_LINES = 5

export type Props = {
	onTextOverlayUpdated: (edits: { TextOverlayEdit }?) -> (),
	textOverlayEdits: { TextOverlayEdit }?,
	zIndex: number?,
}

local function TextOverlayEditor(props: Props)
	local insets = useDeviceInsets()
	local tokens = useTokens()
	local textBoxRef = useRef(nil :: TextBox?)
	local textBoxSize, setTextBoxSize = useBinding(UDim2.fromOffset(0, 0))
	local containerSize, setContainerSize = useState(Vector2.new(0, 0))
	local keyboardHeight = useOnScreenKeyboardHeight()

	local textEdit = props.textOverlayEdits and props.textOverlayEdits[1]

	local captureFocus = useCallback(function()
		if textBoxRef.current then
			textBoxRef.current:CaptureFocus()
		end
	end, {})

	local onTextChanged = useCallback(function(instance: TextBox)
		local textLen = utf8.len(instance.Text)
		if textLen ~= nil and textLen >= CHAR_LIMIT then
			-- Find start of next-to-last character, cut off before that character. Avoid corrupting non-1-byte characters.
			local stringIndex = utf8.offset(instance.Text, CHAR_LIMIT + 1)
			instance.Text = string.sub(instance.Text, 1, stringIndex - 1)
		end
		props.onTextOverlayUpdated({ Dash.joinDeep(textEdit, {
			text = instance.Text,
		}) })
	end, { textEdit, props.onTextOverlayUpdated })

	local onFontSizeChanged = useCallback(function(value: number)
		if not props.textOverlayEdits then
			return
		end

		local newTextOverlayEdit = Dash.joinDeep(textEdit, {
			textOverlayStyle = {
				fontSize = value,
			},
		})
		props.onTextOverlayUpdated({ newTextOverlayEdit })
	end, { props.onTextOverlayUpdated, textEdit })

	local onAbsoluteSizeChanged = useCallback(function(rbx: GuiObject)
		setContainerSize(rbx.AbsoluteSize)
	end, {})

	useEffectOnce(function()
		captureFocus()
	end, textBoxRef.current ~= nil and props.textOverlayEdits ~= nil)

	React.useEffect(function()
		if not textEdit then
			return
		end

		-- if the virtual keyboard is not visible, we don't need to explicitly set the text box size
		if keyboardHeight == 0 then
			setTextBoxSize(UDim2.fromOffset(0, 0))
			return
		end

		-- otherwise, we'll use a large width character to estimate the text size and set the text box size accordingly
		local textSize = TextService:GetTextSize(
			TEXT_SIZE_CHAR,
			textEdit.textOverlayStyle.fontSize,
			textEdit.textOverlayStyle.font,
			Vector2.new(containerSize.X, containerSize.Y)
		)

		setTextBoxSize(
			UDim2.fromOffset(
				math.min(textSize.X * ESTIMATED_MAX_CHARS_PER_LINE, containerSize.X / 2),
				math.min(textSize.Y * ESTIMATED_MAX_LINES, containerSize.Y / 2)
			)
		)
	end, { containerSize, textEdit, keyboardHeight })

	if not props.textOverlayEdits then
		return nil
	end

	return React.createElement(View, {
		onAbsoluteSizeChanged = onAbsoluteSizeChanged,
		stateLayer = { affordance = Foundation.Enums.StateLayerAffordance.None },
		tag = "bg-over-media-0 size-full",
		ZIndex = props.zIndex or 1,
	}, {
		Controls = if keyboardHeight == 0
			then React.createElement(View, {
				tag = "auto-y anchor-bottom-center col gap-large position-bottom-center size-full-0",
			}, {
				Padding = React.createElement("UIPadding", {
					PaddingTop = UDim.new(0, tokens.Padding.XLarge),
					PaddingBottom = UDim.new(0, tokens.Padding.XLarge),
					PaddingLeft = UDim.new(0, math.max(insets.left, tokens.Padding.XLarge)),
					PaddingRight = UDim.new(0, math.max(insets.right, tokens.Padding.XLarge)),
				}),

				FontSizeSlider = React.createElement(Slider, {
					knob = React.createElement(Knob, {
						size = Foundation.Enums.InputSize.Large,
					}),
					knobVisibility = Foundation.Enums.Visibility.Always,
					LayoutOrder = 2,
					onValueChanged = onFontSizeChanged,
					size = Foundation.Enums.InputSize.XSmall,
					range = NumberRange.new(10, 32),
					value = props.textOverlayEdits[1].textOverlayStyle.fontSize,
					variant = Foundation.Enums.SliderVariant.Standard,
				}),
			})
			else nil,

		TextOverlay = React.createElement(TextOverlay, {
			editable = true,
			onActivated = captureFocus,
			size = textBoxSize,
			textOverlayEdit = Dash.joinDeep(textEdit, {
				position = UDim2.fromScale(0.5, 0.5),
				rotation = 0,
				scale = 1,
			}),
			onTextChanged = onTextChanged,
			textBoxRef = textBoxRef,
		}),
	})
end

return TextOverlayEditor
