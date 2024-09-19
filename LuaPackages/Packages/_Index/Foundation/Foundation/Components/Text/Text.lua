local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Flags = require(Foundation.Utility.Flags)

local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)
local Cryo = require(Packages.Cryo)

local Interactable = require(Foundation.Components.Interactable)
local AspectRatio = require(Foundation.Components.AspectRatio)
local Padding = require(Foundation.Components.Padding)

local Types = require(Foundation.Components.Types)
local withDefaults = require(Foundation.Utility.withDefaults)
local useDefaultTags = require(Foundation.Utility.useDefaultTags)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local withGuiObjectProps = require(Foundation.Utility.withGuiObjectProps)
local useStyledDefaults = require(Foundation.Utility.useStyledDefaults)
local indexBindable = require(Foundation.Utility.indexBindable)
type ColorStyle = Types.ColorStyle
type FontFaceTable = Types.FontFaceTable
type FontStyle = Types.FontStyle

local useStyleTags = require(Foundation.Providers.Style.useStyleTags)

type StateChangedCallback = Types.StateChangedCallback
type Bindable<T> = Types.Bindable<T>

local FontScales = require(script.Parent.FontScales)

type TextProps = {
	textStyle: ColorStyle?,
	fontStyle: FontStyle?,

	RichText: Bindable<boolean>?,
	Text: Bindable<string>?,
	TextDirection: Bindable<Enum.TextDirection>?,
	TextScaled: Bindable<boolean>?,
	TextTruncate: Bindable<Enum.TextTruncate>?,
	TextWrapped: Bindable<boolean>?,
	TextXAlignment: Bindable<Enum.TextXAlignment>?,
	TextYAlignment: Bindable<Enum.TextYAlignment>?,
} & Types.GuiObjectProps & Types.CommonProps

local defaultProps = {
	AutoLocalize = false,
	AutoButtonColor = false,
	BorderSizePixel = 0,
	isDisabled = false,
}

local defaultTags = "gui-object-defaults text-defaults"

local function Text(textProps: TextProps, ref: React.Ref<GuiObject>?)
	local defaultPropsWithStyles = if Flags.FoundationStylingPolyfill
		then useStyledDefaults("Text", textProps.tag, defaultTags, defaultProps)
		else nil
	local props = withDefaults(
		textProps,
		(if Flags.FoundationStylingPolyfill then defaultPropsWithStyles else defaultProps) :: typeof(defaultProps)
	)

	local isInteractable = props.onStateChanged ~= nil or props.onActivated ~= nil

	local tagsWithDefaults = useDefaultTags(props.tag, defaultTags)
	local tag = useStyleTags(tagsWithDefaults)

	local fontFace = React.useMemo(function(): Bindable<Font>?
		local fontFaceProp = if props.fontStyle ~= nil then props.fontStyle.Font else nil
		if typeof(fontFaceProp) == "table" and not ReactIs.isBinding(fontFaceProp) then
			local fontFaceTyped = fontFaceProp :: FontFaceTable -- We're sure because it's not a binding
			return Font.new(fontFaceTyped.Family, fontFaceTyped.Weight, fontFaceTyped.Style)
		else
			if typeof(fontFaceProp) == "EnumItem" then
				return Font.fromEnum(fontFaceProp :: Enum.Font)
			else
				return fontFaceProp :: Bindable<Font>? -- We're sure because it's not a table or an EnumItem
			end
		end
	end, { props.fontStyle })

	local lineHeightPaddingOffset = React.useMemo(function()
		if
			props.fontStyle == nil
			or props.fontStyle.LineHeight == nil
			or props.fontStyle.FontSize == nil
			or fontFace == nil
		then
			return 0
		end

		local fontFamily = nil

		if ReactIs.isBinding(fontFace) then
			local fontFaceBinding = fontFace :: React.Binding<Font>
			fontFamily = fontFaceBinding:getValue().Family
		else
			fontFamily = (fontFace :: Font).Family
		end

		local nominalScale = FontScales[fontFamily]

		if nominalScale == nil then
			return 0
		end

		local rawTextSize = props.fontStyle.FontSize / nominalScale
		local rawLineHeight = props.fontStyle.LineHeight * nominalScale
		local heightOffset = rawTextSize * rawLineHeight - props.fontStyle.FontSize
		local paddingOffset = heightOffset / 2
		return paddingOffset
	end, { fontFace :: any, props.fontStyle })

	local engineComponent = if isInteractable then "TextButton" else "TextLabel"

	local engineComponentProps = withGuiObjectProps(props, {
		AutoButtonColor = if engineComponent == "TextButton" then props.AutoButtonColor else nil,
		FontFace = fontFace,
		LineHeight = if props.fontStyle ~= nil then props.fontStyle.LineHeight else nil,
		RichText = props.RichText,
		Text = props.Text,
		TextColor3 = if props.textStyle then indexBindable(props.textStyle, "Color3") else nil,
		TextTransparency = if props.textStyle then indexBindable(props.textStyle, "Transparency") else nil,
		TextDirection = props.TextDirection,
		TextScaled = props.TextScaled,
		TextSize = if props.fontStyle ~= nil then props.fontStyle.FontSize else nil,
		TextTruncate = props.TextTruncate,
		TextWrapped = props.TextWrapped,
		TextXAlignment = props.TextXAlignment,
		TextYAlignment = props.TextYAlignment,

		ref = ref,
		[React.Tag] = tag,
	})

	local component = if isInteractable then Interactable else engineComponent

	local componentProps = if isInteractable
		then Cryo.Dictionary.union(engineComponentProps, {
			component = engineComponent,
			onActivated = props.onActivated,
			onStateChanged = props.onStateChanged,
			stateLayer = if props.onStateChanged then props.stateLayer else { affordance = StateLayerAffordance.None },
			isDisabled = props.isDisabled,
		})
		else engineComponentProps

	return React.createElement(component, componentProps, {
		Children = React.createElement(React.Fragment, {}, props.children) :: any,
		AspectRatio = if props.aspectRatio ~= nil
			then React.createElement(AspectRatio, { value = props.aspectRatio })
			else nil,
		CornerRadius = if props.cornerRadius ~= nil
			then React.createElement("UICorner", {
				CornerRadius = props.cornerRadius,
			})
			else nil,
		FlexItem = if props.flexItem ~= nil
			then React.createElement("UIFlexItem", {
				FlexMode = props.flexItem.FlexMode,
				GrowRatio = props.flexItem.GrowRatio,
				ShrinkRatio = props.flexItem.ShrinkRatio,
				ItemLineAlignment = props.flexItem.ItemLineAlignment,
			})
			else nil,
		ListLayout = if props.layout ~= nil and props.layout.FillDirection ~= nil
			then React.createElement("UIListLayout", {
				FillDirection = props.layout.FillDirection,
				ItemLineAlignment = props.layout.ItemLineAlignment,
				HorizontalAlignment = props.layout.HorizontalAlignment,
				HorizontalFlex = props.layout.HorizontalFlex,
				VerticalAlignment = props.layout.VerticalAlignment,
				VerticalFlex = props.layout.VerticalFlex,
				Padding = props.layout.Padding,
				SortOrder = props.layout.SortOrder,
				Wraps = props.layout.Wraps,
			})
			else nil,
		SizeConstraint = if props.sizeConstraint ~= nil
			then React.createElement("UISizeConstraint", props.sizeConstraint)
			else nil,
		Padding = if props.padding ~= nil or lineHeightPaddingOffset ~= 0
			then React.createElement(Padding, {
				value = if props.padding
					then props.padding
					else if lineHeightPaddingOffset then Vector2.new(0, lineHeightPaddingOffset) else nil,
			})
			else nil,
		Scale = if props.scale ~= nil
			then React.createElement("UIScale", {
				Scale = props.scale,
			})
			else nil,
		Stroke = if props.stroke ~= nil then React.createElement("UIStroke", props.stroke) else nil,
	})
end

return React.memo(React.forwardRef(Text))
