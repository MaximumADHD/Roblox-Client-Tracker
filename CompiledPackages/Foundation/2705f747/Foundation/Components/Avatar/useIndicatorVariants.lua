local Foundation = script:FindFirstAncestor("Foundation")

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

local IndicatorShape = require(Foundation.Enums.IndicatorShape)
type IndicatorShape = IndicatorShape.IndicatorShape

local IndicatorVariant = require(Foundation.Enums.IndicatorVariant)
type IndicatorVariant = IndicatorVariant.IndicatorVariant

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

type IndicatorVariantProps = {
	indicator: {
		imageStyle: Types.ColorStyle?,
		Image: string?,
		Size: UDim2,
		tag: string,
	},
}

function mapToProps(
	shape: IndicatorShape,
	color: Types.ColorStyleValue,
	size: number
): { indicator: { imageStyle: Types.ColorStyle?, stroke: any?, Size: UDim2 } }
	local Size = UDim2.fromOffset(size, size)
	if shape == IndicatorShape.Ring then
		return {
			indicator = {
				imageStyle = color,
				Image = "component_assets/circle_15_stroke_3",
				Size = UDim2.fromOffset(size, size),
			},
		}
	elseif shape == IndicatorShape.Circle then
		return {
			indicator = {
				imageStyle = color,
				Image = "component_assets/circle_16",
				Size = Size,
			},
		}
	else
		return {
			indicator = {
				imageStyle = color,
				Size = Size,
			},
		}
	end
end

local function variantsFactory(tokens: Tokens)
	local variants: { [IndicatorVariant]: Types.ColorStyleValue } = {
		[IndicatorVariant.Success] = tokens.Color.System.Success,
		[IndicatorVariant.Neutral] = tokens.Color.System.Neutral,
		[IndicatorVariant.Warning] = tokens.Color.System.Warning,
		[IndicatorVariant.Emphasis] = tokens.Color.System.Emphasis,
		[IndicatorVariant.Alert] = tokens.Color.System.Alert,
	}

	local shapes: { [IndicatorShape]: VariantProps } = {
		[IndicatorShape.Circle] = { indicator = { tag = "radius-circle" } },
		[IndicatorShape.Ring] = { indicator = { tag = "radius-circle" } },
	}

	return { shapes = shapes, variants = variants }
end

return function(tokens: Tokens, shape: IndicatorShape, variant: IndicatorVariant, size: number): IndicatorVariantProps
	local props = VariantsContext.useVariants("Indicator", variantsFactory, tokens)
	return composeStyleVariant(props.shapes[shape], mapToProps(shape, props.variants[variant], size))
end
