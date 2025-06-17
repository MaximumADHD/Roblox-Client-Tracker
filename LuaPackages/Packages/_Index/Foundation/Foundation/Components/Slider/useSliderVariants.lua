local Foundation = script:FindFirstAncestor("Foundation")

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local SliderVariant = require(Foundation.Enums.SliderVariant)
type SliderVariant = SliderVariant.SliderVariant

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

type SliderVariantProps = {
	bar: {
		tag: string,
	},
	fill: {
		tag: string,
	},
	hitbox: {
		height: number,
	},
	knob: {
		style: ColorStyleValue,
		dragStyle: ColorStyleValue?,
		stroke: Types.Stroke?,
		hasShadow: boolean?,
	},
}

local function variantsFactory(tokens: Tokens)
	local common = {
		bar = { tag = "anchor-center-center position-center-center size-full-100 radius-small" },
		fill = { tag = "radius-small" },
	}

	local variants: { [SliderVariant]: VariantProps } = {
		[SliderVariant.Emphasis] = {
			bar = { tag = "bg-shift-400" },
			fill = { tag = "bg-emphasis" },
			knob = {
				style = tokens.Color.Extended.White.White_100,
				dragStyle = tokens.Color.ActionEmphasis.Background,
				hasShadow = true,
			},
		},
		[SliderVariant.Standard] = {
			bar = { tag = "bg-shift-400 " },
			fill = { tag = "bg-system-contrast" },
			knob = {
				style = tokens.Color.System.Contrast,
				dragStyle = tokens.Color.System.Contrast,
				hasShadow = false,
			},
		},
		[SliderVariant.Utility] = {
			knob = {
				style = tokens.Color.None,
				dragStyle = tokens.Color.None,
				stroke = {
					Color = tokens.Color.System.Contrast.Color3,
					Transparency = tokens.Color.System.Contrast.Transparency,
					Thickness = tokens.Stroke.Thicker,
				},
				hasShadow = true,
			},
		},
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = { hitbox = { height = tokens.Size.Size_300 } },
		[InputSize.Small] = { hitbox = { height = tokens.Size.Size_400 } },
		[InputSize.Medium] = { hitbox = { height = tokens.Size.Size_500 } },
		[InputSize.Large] = { hitbox = { height = tokens.Size.Size_600 } },
	}

	return { common = common, variants = variants, sizes = sizes }
end

return function(tokens: Tokens, size: InputSize, variant: SliderVariant): SliderVariantProps
	local props = VariantsContext.useVariants("Slider", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.variants[variant], props.sizes[size])
end
