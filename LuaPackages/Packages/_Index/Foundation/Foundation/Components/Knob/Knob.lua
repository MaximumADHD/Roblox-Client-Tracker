local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local Components = Foundation.Components
local Constants = require(Foundation.Constants)
local Icon = require(Components.Icon)
local Image = require(Components.Image)
local Types = require(Components.Types)
local View = require(Components.View)
type Bindable<T> = Types.Bindable<T>
type ColorStyleValue = Types.ColorStyleValue

local blendTransparencies = require(Foundation.Utility.blendTransparencies)
local useBindable = require(Foundation.Utility.useBindable)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local useKnobVariants = require(script.Parent.useKnobVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local usePresentationContext = require(Foundation.Providers.Style.PresentationContext).usePresentationContext
local ColorMode = require(Foundation.Enums.ColorMode)
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize
local Flags = require(Foundation.Utility.Flags)

export type KnobProps = {
	-- The size variant of the knob
	size: InputSize?,
	style: Types.ColorStyle?,
	stroke: Types.Stroke?,
	hasShadow: boolean?,
	-- Optional icon to render instead of the default knob circle
	icon: { name: string, variant: BuilderIcons.IconVariant }?,
	isDisabled: boolean?,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
	hasShadow = true,
	isDisabled = false,
	testId = "--foundation-knob",
}

local function Knob(knobProps: KnobProps)
	local props = withDefaults(knobProps, defaultProps)
	local tokens = useTokens()
	local presentationContext = usePresentationContext()
	local variantProps =
		useKnobVariants(tokens, props.size, presentationContext and presentationContext.colorMode == ColorMode.Inverse)
	local knobStyle = props.style or variantProps.knob.style

	local getShadowStyle = React.useCallback(function(style: ColorStyleValue)
		return {
			Color3 = tokens.Color.Extended.White.White_100.Color3,
			Transparency = style.Transparency,
		}
	end, { tokens })

	local strokeTransparency
	local knobStyleBinding
	local knobStyleVariantPropsBinding
	if Flags.FoundationKnobRemoveGroupTransparency then
		strokeTransparency = useBindable(if props.stroke then props.stroke.Transparency else nil)
		knobStyleBinding = useBindable(knobStyle)
		knobStyleVariantPropsBinding = useBindable(variantProps.knob.style)
	end

	local circleSize = React.useMemo(function(): Bindable<UDim2>
		local size = variantProps.knob.size
		if props.stroke and props.stroke.Thickness then
			if ReactIs.isBinding(props.stroke.Thickness) then
				return (props.stroke.Thickness :: React.Binding<number>):map(function(thickness: number)
					return size - UDim2.fromOffset(thickness * 2, thickness * 2)
				end)
			end

			local thickness = props.stroke.Thickness :: number
			size -= UDim2.fromOffset(thickness * 2, thickness * 2)
		end

		return size
	end, { variantProps, props.stroke } :: { unknown })

	return React.createElement(
		View,
		withCommonProps(props, {
			Size = variantProps.knob.size,
			isDisabled = if Flags.FoundationToggleVisualUpdate then props.isDisabled else nil,
			GroupTransparency = if not Flags.FoundationKnobRemoveGroupTransparency
					and Flags.FoundationToggleVisualUpdate
					and props.isDisabled
				then Constants.DISABLED_TRANSPARENCY
				else nil,
		}),
		{
			Icon = if Flags.FoundationToggleVisualUpdate and props.icon
				then React.createElement(
					View,
					{
						tag = variantProps.knob.tag,
						Size = circleSize,
						ZIndex = 4,
						backgroundStyle = variantProps.iconContainer.backgroundStyle,
					},
					React.createElement(Icon, {
						name = props.icon.name,
						variant = props.icon.variant,
						style = if Flags.FoundationKnobRemoveGroupTransparency and props.isDisabled
							then knobStyleVariantPropsBinding:map(function(style)
								return {
									Color3 = style.Color3,
									Transparency = blendTransparencies(
										style.Transparency,
										Constants.DISABLED_TRANSPARENCY
									),
								}
							end)
							else variantProps.knob.style,
						size = variantProps.knob.iconSize,
						testId = `{props.testId}--icon`,
					})
				)
				else React.createElement(View, {
					tag = variantProps.knob.tag,
					backgroundStyle = if Flags.FoundationKnobRemoveGroupTransparency and props.isDisabled
						then knobStyleBinding:map(function(style)
							return {
								Color3 = style.Color3,
								Transparency = blendTransparencies(style.Transparency, Constants.DISABLED_TRANSPARENCY),
							}
						end)
						else knobStyle,
					Size = circleSize,
					stroke = if Flags.FoundationKnobRemoveGroupTransparency
						then strokeTransparency
							:map(function(strokeTransparency)
								local stroke = props.stroke

								if props.stroke and strokeTransparency ~= nil and props.isDisabled then
									stroke = Dash.join(stroke, {
										Transparency = blendTransparencies(
											strokeTransparency,
											Constants.DISABLED_TRANSPARENCY
										),
									})
								end

								return stroke
							end)
							:getValue()
						else props.stroke,
					ZIndex = 4,
					testId = `{props.testId}--circle`,
				}),
			Shadow = if props.hasShadow and not (Flags.FoundationToggleVisualUpdate and props.isDisabled)
				then React.createElement(Image, {
					tag = variantProps.knobShadow.tag,
					imageStyle = if ReactIs.isBinding(knobStyle)
						then (knobStyle :: React.Binding<ColorStyleValue>):map(getShadowStyle)
						else getShadowStyle(knobStyle :: ColorStyleValue),
					Image = "component_assets/dropshadow_28",
					Size = variantProps.knobShadow.size,
					ZIndex = 3,
					testId = `{props.testId}--shadow`,
				})
				else nil,
		}
	)
end

return React.memo(Knob)
