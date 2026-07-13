local Foundation = script:FindFirstAncestor("Foundation")

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Flags = require(Foundation.Utility.Flags)
local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

local AvatarSize = require(Foundation.Enums.AvatarSize)
type AvatarSize = AvatarSize.AvatarSize

local UserPresence = require(Foundation.Enums.UserPresence)
type UserPresence = UserPresence.UserPresence

local IndicatorVariant = require(Foundation.Enums.IndicatorVariant)
type IndicatorVariant = IndicatorVariant.IndicatorVariant

local IndicatorShape = require(Foundation.Enums.IndicatorShape)
type IndicatorShape = IndicatorShape.IndicatorShape

local StatusIndicatorVariant = require(Foundation.Enums.StatusIndicatorVariant)
type StatusIndicatorVariant = StatusIndicatorVariant.StatusIndicatorVariant

local StatusIndicatorSize = require(Foundation.Enums.StatusIndicatorSize)
type StatusIndicatorSize = StatusIndicatorSize.StatusIndicatorSize

local StatusIndicatorShape = require(Foundation.Enums.StatusIndicatorShape)
type StatusIndicatorShape = StatusIndicatorShape.StatusIndicatorShape

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
	indicator: { size: number, shape: IndicatorShape?, variant: IndicatorVariant?, isVisible: boolean }, -- remove with FoundationAvatarBeta
	statusIndicatorBackplate: {
		Position: UDim2,
		AnchorPoint: Vector2,
		tag: string,
		padding: UDim2,
		ZIndex: number,
	},
	statusIndicator: {
		size: StatusIndicatorSize?,
		shape: StatusIndicatorShape?,
		variant: StatusIndicatorVariant?,
		isVisible: boolean,
	},
}

local function variantsFactory(tokens: Tokens)
	local common = {
		container = { tag = "radius-circle" },
		avatar = { tag = "size-full radius-circle" },
		indicatorBackplate = {
			ZIndex = 2,
			tag = "position-bottom-right anchor-bottom-right auto-xy radius-circle bg-surface-0",
			padding = UDim2.fromOffset(3, 3),
		},
		statusIndicatorBackplate = {
			ZIndex = 2,
			AnchorPoint = Vector2.new(1, 1),
			Position = UDim2.fromScale(1, 1),
			tag = "auto-xy radius-circle bg-surface-0",
			padding = UDim2.fromOffset(tokens.Size.Size_150 / 2, tokens.Size.Size_150 / 2),
		},
	}

	local sizes: { [AvatarSize]: VariantProps } = if Flags.FoundationAvatarBeta
		then {
			[AvatarSize.XSmall] = { statusIndicator = { size = StatusIndicatorSize.XSmall } },
			[AvatarSize.Small] = { statusIndicator = { size = StatusIndicatorSize.XSmall } },
			[AvatarSize.Medium] = { statusIndicator = { size = StatusIndicatorSize.Small } },
			[AvatarSize.Large] = { statusIndicator = { size = StatusIndicatorSize.Small } },
			[AvatarSize.XLarge] = { statusIndicator = { size = StatusIndicatorSize.Medium } },
			[AvatarSize.Pictogram] = { statusIndicator = { size = StatusIndicatorSize.Pictogram } },
		}
		else {
			[AvatarSize.XSmall] = { indicator = { size = tokens.Size.Size_150 } },
			[AvatarSize.Small] = { indicator = { size = tokens.Size.Size_150 } },
			[AvatarSize.Medium] = { indicator = { size = tokens.Size.Size_200 } },
			[AvatarSize.Large] = { indicator = { size = tokens.Size.Size_200 } },
			[AvatarSize.XLarge] = { indicator = { size = tokens.Size.Size_250 } },
			[AvatarSize.Pictogram] = { indicator = { size = tokens.Size.Size_500 } },
		}

	local presence: { [UserPresence]: VariantProps } = {
		[UserPresence.InExperience] = {},
		[UserPresence.Away] = if Flags.FoundationAvatarBeta
			then {
				statusIndicator = { shape = StatusIndicatorShape.Ring, variant = StatusIndicatorVariant.Neutral },
			}
			else {
				indicator = { shape = IndicatorShape.Ring, variant = IndicatorVariant.Neutral },
			},
		[UserPresence.Active] = if Flags.FoundationAvatarBeta
			then {
				statusIndicator = { shape = StatusIndicatorShape.Circle, variant = StatusIndicatorVariant.Success },
			}
			else {
				indicator = { shape = IndicatorShape.Circle, variant = IndicatorVariant.Success },
			},
		[UserPresence.None] = {},
	}

	local sizeStrokes: { [AvatarSize]: number } = if Flags.FoundationAvatarBeta
		then {
			[AvatarSize.Small] = tokens.Stroke.Thicker,
			[AvatarSize.Medium] = tokens.Stroke.Thicker,
			[AvatarSize.Large] = tokens.Stroke.Thicker,
			[AvatarSize.XLarge] = tokens.Stroke.Thicker,
			[AvatarSize.Pictogram] = tokens.Stroke.Thicker + tokens.Stroke.Standard,
		}
		else nil :: never

	local iconSizeStrokes: { [AvatarSize]: number } = {
		[AvatarSize.XSmall] = tokens.Stroke.Standard,
		-- It's 2px in deisgn, but we don't have a token for it, so let it be tokens.Stroke.Thick
		[AvatarSize.Small] = tokens.Stroke.Thick,
		[AvatarSize.Medium] = tokens.Stroke.Thick,
		[AvatarSize.Large] = tokens.Stroke.Thicker,
		[AvatarSize.XLarge] = tokens.Stroke.Thicker,
		[AvatarSize.Pictogram] = tokens.Stroke.Thicker,
	}

	return {
		common = common,
		sizes = sizes,
		presence = presence,
		iconSizeStrokes = iconSizeStrokes,
		sizeStrokes = if Flags.FoundationAvatarBeta then sizeStrokes else nil :: never,
	}
end

return function(
	tokens: Tokens,
	size: AvatarSize,
	presence: UserPresence,
	backplateStyle: Types.ColorStyle?,
	isIconSize: boolean
): AvatarVariantProps
	local props = VariantsContext.useVariants("Avatar", variantsFactory, tokens)

	local hasIndicator = not isIconSize and (presence == UserPresence.Active or presence == UserPresence.Away)
	local strokeColor = if not isIconSize and presence == UserPresence.InExperience
		then tokens.Color.System.Emphasis
		else backplateStyle
	local strokeThickness = if Flags.FoundationAvatarBeta
		then if isIconSize then props.iconSizeStrokes[size] else props.sizeStrokes[size]
		else if not isIconSize then tokens.Stroke.Thicker else props.iconSizeStrokes[size]
	return composeStyleVariant(props.common, props.sizes[size], props.presence[presence], {
		container = {
			stroke = if strokeColor
				then {
					Color = indexBindable(strokeColor, "Color3"),
					Transparency = indexBindable(strokeColor, "Transparency"),
					Thickness = strokeThickness,
				}
				else nil,
			-- We only need the background for a real backplate when stroke is also used for the presence ring
			backgroundStyle = backplateStyle,
		},
		indicator = if Flags.FoundationAvatarBeta
			then nil :: never
			else {
				isVisible = hasIndicator,
			},
		statusIndicator = if Flags.FoundationAvatarBeta
			then {
				isVisible = hasIndicator,
			}
			else nil :: never,
	})
end
