local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Flags = require(Foundation.Utility.Flags)

local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)
local Dash = require(Packages.Dash)

local Interactable = require(Foundation.Components.Interactable)

local Types = require(Foundation.Components.Types)
local withDefaults = require(Foundation.Utility.withDefaults)
local useDefaultTags = require(Foundation.Utility.useDefaultTags)
local withGuiObjectProps = require(Foundation.Utility.withGuiObjectProps)
local useStyledDefaults = require(Foundation.Utility.useStyledDefaults)
local indexBindable = require(Foundation.Utility.indexBindable)
local GuiObjectChildren = require(Foundation.Utility.GuiObjectChildren)
type ColorStyle = Types.ColorStyle
type FontFaceTable = Types.FontFaceTable
type FontStyle = Types.FontStyle

local useStyleTags = require(Foundation.Providers.Style.useStyleTags)

type StateChangedCallback = Types.StateChangedCallback
type Bindable<T> = Types.Bindable<T>

local FontScales = require(script.Parent.FontScales)

export type TextProps = {
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

local DEFAULT_TAGS = "gui-object-defaults text-defaults text-size-defaults text-color-defaults"
local DEFAULT_TAGS_WITH_BG = `{DEFAULT_TAGS} x-default-transparency`

local function Text(textProps: TextProps, ref: React.Ref<GuiObject>?)
	local defaultPropsWithStyles = if not Flags.FoundationDisableStylingPolyfill
		then useStyledDefaults("Text", textProps.tag, DEFAULT_TAGS, defaultProps)
		else nil
	local props = withDefaults(
		textProps,
		(
				if not Flags.FoundationDisableStylingPolyfill then defaultPropsWithStyles else defaultProps
			) :: typeof(defaultProps)
	)

	local isInteractable = props.onStateChanged ~= nil or props.onActivated ~= nil or props.onSecondaryActivated ~= nil

	local defaultTags = if props.backgroundStyle ~= nil then DEFAULT_TAGS_WITH_BG else DEFAULT_TAGS

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
	end, { fontFace, props.fontStyle } :: { unknown })

	-- Only set line height padding if it's not already set to mimic styling behavior
	if props.padding == nil and lineHeightPaddingOffset ~= 0 then
		props.padding = Vector2.new(0, lineHeightPaddingOffset)
	end

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

	local textComponentProps = {
		component = engineComponent,
		onActivated = props.onActivated,
		onSecondaryActivated = props.onSecondaryActivated,
		onStateChanged = props.onStateChanged,
		stateLayer = props.stateLayer,
		isDisabled = props.isDisabled,
		cursor = props.cursor,
	}
	local componentProps = if isInteractable
		then Dash.union(engineComponentProps, textComponentProps)
		else engineComponentProps

	return React.createElement(component, componentProps, GuiObjectChildren(props))
end

return React.memo(React.forwardRef(Text))
