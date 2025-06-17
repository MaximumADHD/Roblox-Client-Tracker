local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local Components = Foundation.Components
local Image = require(Components.Image)
local View = require(Components.View)
local Types = require(Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local useKnobVariants = require(script.Parent.useKnobVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

type Props = {
	-- The size variant of the knob
	size: InputSize?,
	style: Types.ColorStyle?,
	stroke: Types.Stroke?,
	hasShadow: boolean?,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
	hasShadow = true,
}

local function Knob(knobProps: Props)
	local props = withDefaults(knobProps, defaultProps)
	local tokens = useTokens()
	local variantProps = useKnobVariants(tokens, props.size)
	local knobStyle = props.style or variantProps.knob.style

	local getShadowStyle = React.useCallback(function(style: ColorStyleValue)
		return {
			Color3 = tokens.Color.Extended.White.White_100.Color3,
			Transparency = style.Transparency,
		}
	end, { tokens })

	return React.createElement(
		View,
		withCommonProps(props, {
			Size = variantProps.knob.size,
		}),
		{
			Circle = React.createElement(View, {
				tag = variantProps.knob.tag,
				backgroundStyle = knobStyle,
				Size = variantProps.knob.size,
				stroke = props.stroke,
				ZIndex = 4,
			}),
			Shadow = if props.hasShadow
				then React.createElement(Image, {
					tag = variantProps.knobShadow.tag,
					imageStyle = if ReactIs.isBinding(knobStyle)
						then (knobStyle :: React.Binding<ColorStyleValue>):map(getShadowStyle)
						else getShadowStyle(knobStyle :: ColorStyleValue),
					Image = "component_assets/dropshadow_28",
					Size = variantProps.knobShadow.size,
					ZIndex = 3,
				})
				else nil,
		}
	)
end

return React.memo(Knob)
