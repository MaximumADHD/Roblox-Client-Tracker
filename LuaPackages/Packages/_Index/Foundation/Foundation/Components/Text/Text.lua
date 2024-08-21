local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

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
local indexBindable = require(Foundation.Utility.indexBindable)
type ColorStyle = Types.ColorStyle
type FontFaceTable = Types.FontFaceTable
type FontStyle = Types.FontStyle

local useStyleTags = require(Foundation.Providers.Style.useStyleTags)

type StateChangedCallback = Types.StateChangedCallback
type Bindable<T> = Types.Bindable<T>

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
	local props = withDefaults(textProps, defaultProps)

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
		SizeConstraint = if props.sizeConstraint ~= nil
			then React.createElement("UISizeConstraint", props.sizeConstraint)
			else nil,
		Padding = if props.padding ~= nil then React.createElement(Padding, { value = props.padding }) else nil,
		Scale = if props.scale ~= nil
			then React.createElement("UIScale", {
				Scale = props.scale,
			})
			else nil,
		Stroke = if props.stroke ~= nil then React.createElement("UIStroke", props.stroke) else nil,
	})
end

return React.memo(React.forwardRef(Text))
