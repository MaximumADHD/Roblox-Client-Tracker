local Foundation = script:FindFirstAncestor("Foundation")

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local UserPresence = require(Foundation.Enums.UserPresence)
type UserPresence = UserPresence.UserPresence

local IndicatorVariant = require(Foundation.Enums.IndicatorVariant)
type IndicatorVariant = IndicatorVariant.IndicatorVariant

local IndicatorShape = require(Foundation.Enums.IndicatorShape)
type IndicatorShape = IndicatorShape.IndicatorShape

local Types = require(Foundation.Components.Types)

local indexBindable = require(Foundation.Utility.indexBindable)

type AvatarVariantProps = {
	indicatorBackplate: {
		Position: UDim2,
		tag: string,
		padding: UDim2,
		ZIndex: number,
	},
	container: {
		tag: string,
		stroke: Types.Stroke,
		backgroundStyle: Types.ColorStyle?,
	},
	avatar: {
		tag: string,
	},
	indicator: { size: number, shape: IndicatorShape?, variant: IndicatorVariant? },
}

local function variantsFactory(tokens: Tokens)
	local common = {
		container = { tag = "radius-circle" },
		avatar = { tag = "radius-circle size-full" },
		indicatorBackplate = {
			ZIndex = 2,
			tag = "bg-surface-0 anchor-bottom-right radius-circle auto-xy position-bottom-right",
			padding = UDim2.fromOffset(3, 3),
		},
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = { indicator = { size = tokens.Size.Size_150 } },
		[InputSize.Small] = { indicator = { size = tokens.Size.Size_150 } },
		[InputSize.Medium] = { indicator = { size = tokens.Size.Size_200 } },
		[InputSize.Large] = { indicator = { size = tokens.Size.Size_200 } },
	}

	local presence: { [UserPresence]: VariantProps } = {
		[UserPresence.InExperience] = {},
		[UserPresence.Away] = {
			indicator = { shape = IndicatorShape.Ring, variant = IndicatorVariant.Neutral },
		},
		[UserPresence.Active] = {
			indicator = { shape = IndicatorShape.Circle, variant = IndicatorVariant.Success },
		},
		[UserPresence.None] = {},
	}

	return { common = common, sizes = sizes, presence = presence }
end

return function(
	tokens: Tokens,
	size: InputSize,
	presence: UserPresence,
	backplateStyle: Types.ColorStyle?
): AvatarVariantProps
	local props = VariantsContext.useVariants("Avatar", variantsFactory, tokens)

	local strokeColor = if presence == UserPresence.InExperience then tokens.Color.System.Emphasis else backplateStyle

	return composeStyleVariant(props.common, props.sizes[size], props.presence[presence], {
		container = {
			stroke = if strokeColor
				then {
					Color = indexBindable(strokeColor, "Color3"),
					Transparency = indexBindable(strokeColor, "Transparency"),
					Thickness = tokens.Stroke.Thicker,
				}
				else nil,
			-- We only need the background for a real backplate when stroke is also used for the presence ring
			backgroundStyle = backplateStyle,
		},
	})
end
