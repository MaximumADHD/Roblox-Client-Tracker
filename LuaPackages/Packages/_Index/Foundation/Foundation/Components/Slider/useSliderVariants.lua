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
	knob: {
		style: ColorStyleValue,
		dragStyle: ColorStyleValue,
		stroke: Types.Stroke?,
		hasShadow: boolean?,
	},
	selectionGroup: Types.SelectionGroup?,
}

local function variantsFactory(tokens: Tokens)
	local common = {
		bar = {
			tag = "position-center-center anchor-center-center radius-circle",
		},
		fill = {
			tag = "radius-circle",
		},
	}

	local variants: { [SliderVariant]: VariantProps } = {
		[SliderVariant.Emphasis] = {
			bar = {
				tag = "bg-shift-200",
			},
			fill = {
				tag = "bg-emphasis",
			},
			knob = {
				style = tokens.Color.Extended.White.White_100,
				dragStyle = if Flags.FoundationSystemEmphasisNonActions
					then tokens.Color.System.Emphasis
					else tokens.Color.ActionEmphasis.Background,
				hasShadow = true,
			},
		},
		[SliderVariant.Standard] = {
			bar = {
				tag = "bg-shift-200",
			},
			fill = {
				tag = "bg-system-contrast",
			},
			knob = {
				style = tokens.Color.System.Contrast,
				dragStyle = tokens.Color.System.Contrast,
				stroke = {
					Color = tokens.Color.Stroke.Default.Color3,
					Transparency = tokens.Color.Stroke.Default.Transparency,
					Thickness = tokens.Stroke.Standard,
				},
				hasShadow = true,
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
			bar = { height = tokens.Size.Size_100 },
		},
		[InputSize.Small] = {
			bar = { height = tokens.Size.Size_150 },
		},
		[InputSize.Medium] = {
			bar = { height = tokens.Size.Size_200 },
		},
		[InputSize.Large] = {
			bar = { height = tokens.Size.Size_250 },
		},
	}

	local orientation: { [boolean]: VariantProps } = {
		-- [isVertical]
		[true] = {
			selectionGroup = {
				SelectionBehaviorLeft = Enum.SelectionBehavior.Escape,
				SelectionBehaviorRight = Enum.SelectionBehavior.Escape,
				SelectionBehaviorUp = Enum.SelectionBehavior.Stop,
				SelectionBehaviorDown = Enum.SelectionBehavior.Stop,
			},
		},
		[false] = {
			selectionGroup = {
				SelectionBehaviorLeft = Enum.SelectionBehavior.Stop,
				SelectionBehaviorRight = Enum.SelectionBehavior.Stop,
				SelectionBehaviorUp = Enum.SelectionBehavior.Escape,
				SelectionBehaviorDown = Enum.SelectionBehavior.Escape,
			},
		},
	}

	return { common = common, variants = variants, sizes = sizes, orientation = orientation }
end

return function(tokens: Tokens, size: InputSize, variant: SliderVariant, isVertical: boolean): SliderVariantProps
	local props = VariantsContext.useVariants("Slider", variantsFactory, tokens)
	if Flags.FoundationSliderCapture then
		return composeStyleVariant(props.common, props.variants[variant], props.sizes[size])
	end
	return composeStyleVariant(props.common, props.variants[variant], props.sizes[size], props.orientation[isVertical])
end
