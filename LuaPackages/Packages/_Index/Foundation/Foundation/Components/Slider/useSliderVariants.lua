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
local Flags = require(Foundation.Utility.Flags)

type SliderVariantProps = {
	bar: {
		tag: string,
		height: number,
	},
	fill: {
		tag: string,
	},
	hitbox: {
		height: number,
	}?,
	knob: {
		style: ColorStyleValue,
		dragStyle: ColorStyleValue,
		stroke: Types.Stroke?,
		hasShadow: boolean?,
	},
}

local function variantsFactory(tokens: Tokens)
	local common = {
		bar = {
			tag = if Flags.FoundationSliderBeta
				then "position-center-center anchor-center-center radius-circle"
				else "position-center-center anchor-center-center size-full-100 radius-small",
		},
		fill = {
			tag = if Flags.FoundationSliderBeta then "radius-circle" else "radius-small",
		},
	}

	local variants: { [SliderVariant]: VariantProps } = {
		[SliderVariant.Emphasis] = {
			bar = {
				tag = if Flags.FoundationSliderBeta then "bg-shift-200" else "bg-shift-400",
			},
			fill = {
				tag = "bg-emphasis",
			},
			knob = {
				style = tokens.Color.Extended.White.White_100,
				dragStyle = tokens.Color.ActionEmphasis.Background,
				hasShadow = true,
			},
		},
		[SliderVariant.Standard] = {
			bar = {
				tag = if Flags.FoundationSliderBeta then "bg-shift-200" else "bg-shift-400",
			},
			fill = {
				tag = "bg-system-contrast",
			},
			knob = {
				style = tokens.Color.System.Contrast,
				dragStyle = tokens.Color.System.Contrast,
				stroke = if Flags.FoundationSliderBeta
					then {
						Color = tokens.Color.Stroke.Default.Color3,
						Transparency = tokens.Color.Stroke.Default.Transparency,
						Thickness = tokens.Stroke.Standard,
					}
					else nil :: never,
				hasShadow = if Flags.FoundationSliderBeta then true else false,
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
		[InputSize.XSmall] = {
			bar = if Flags.FoundationSliderBeta then { height = tokens.Size.Size_100 } else nil :: never,
			hitbox = if Flags.FoundationSliderBeta then nil :: never else { height = tokens.Size.Size_300 },
		},
		[InputSize.Small] = {
			bar = if Flags.FoundationSliderBeta then { height = tokens.Size.Size_150 } else nil :: never,
			hitbox = if Flags.FoundationSliderBeta then nil :: never else { height = tokens.Size.Size_400 },
		},
		[InputSize.Medium] = {
			bar = if Flags.FoundationSliderBeta then { height = tokens.Size.Size_200 } else nil :: never,
			hitbox = if Flags.FoundationSliderBeta then nil :: never else { height = tokens.Size.Size_500 },
		},
		[InputSize.Large] = {
			bar = if Flags.FoundationSliderBeta then { height = tokens.Size.Size_250 } else nil :: never,
			hitbox = if Flags.FoundationSliderBeta then nil :: never else { height = tokens.Size.Size_700 },
		},
	}

	return { common = common, variants = variants, sizes = sizes }
end

return function(tokens: Tokens, size: InputSize, variant: SliderVariant): SliderVariantProps
	local props = VariantsContext.useVariants("Slider", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.variants[variant], props.sizes[size])
end
