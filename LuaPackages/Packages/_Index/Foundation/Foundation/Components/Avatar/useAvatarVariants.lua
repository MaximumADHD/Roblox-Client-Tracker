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

local StatusIndicatorVariant = require(Foundation.Enums.StatusIndicatorVariant)
type StatusIndicatorVariant = StatusIndicatorVariant.StatusIndicatorVariant

local StatusIndicatorSize = require(Foundation.Enums.StatusIndicatorSize)
type StatusIndicatorSize = StatusIndicatorSize.StatusIndicatorSize

local StatusIndicatorShape = require(Foundation.Enums.StatusIndicatorShape)
type StatusIndicatorShape = StatusIndicatorShape.StatusIndicatorShape

local Types = require(Foundation.Components.Types)

local indexBindable = require(Foundation.Utility.indexBindable)

type AvatarVariantProps = {
	container: {
		tag: string,
		stroke: Types.Stroke,
		backgroundStyle: Types.ColorStyle?,
	},
	avatar: {
		tag: string,
	},
	statusIndicatorBackplate: {
		Position: UDim2,
		AnchorPoint: Vector2,
		tag: string,
		padding: UDim2,
		ZIndex: number,
	},
	statusIndicatorMask: {
		Position: UDim2,
		AnchorPoint: Vector2,
		ZIndex: number,
		mask: Types.ColorStyle,
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
		statusIndicatorBackplate = if Flags.FoundationStatusIndicatorMask
			then nil :: never
			else {
				ZIndex = 2,
				AnchorPoint = Vector2.new(1, 1),
				Position = UDim2.fromScale(1, 1),
				tag = "auto-xy radius-circle bg-surface-0",
				padding = UDim2.fromOffset(tokens.Size.Size_150 / 2, tokens.Size.Size_150 / 2),
			},
		statusIndicatorMask = if Flags.FoundationStatusIndicatorMask
			then {
				ZIndex = 2,
				AnchorPoint = Vector2.new(1, 1),
				Position = UDim2.new(1, -tokens.Size.Size_150 / 2, 1, -tokens.Size.Size_150 / 2),
				mask = tokens.Color.Surface.Surface_0,
			}
			else nil :: never,
	}

	local sizes: { [AvatarSize]: VariantProps } = {
		[AvatarSize.XSmall] = { statusIndicator = { size = StatusIndicatorSize.XSmall } },
		[AvatarSize.Small] = { statusIndicator = { size = StatusIndicatorSize.XSmall } },
		[AvatarSize.Medium] = { statusIndicator = { size = StatusIndicatorSize.Small } },
		[AvatarSize.Large] = { statusIndicator = { size = StatusIndicatorSize.Small } },
		[AvatarSize.XLarge] = { statusIndicator = { size = StatusIndicatorSize.Medium } },
		[AvatarSize.Pictogram] = { statusIndicator = { size = StatusIndicatorSize.Pictogram } },
	}

	local presence: { [UserPresence]: VariantProps } = {
		[UserPresence.InExperience] = {},
		[UserPresence.Away] = {
			statusIndicator = { shape = StatusIndicatorShape.Ring, variant = StatusIndicatorVariant.Neutral },
		},
		[UserPresence.Active] = {
			statusIndicator = { shape = StatusIndicatorShape.Circle, variant = StatusIndicatorVariant.Success },
		},
		[UserPresence.None] = {},
	}

	local sizeStrokes: { [AvatarSize]: number } = {
		[AvatarSize.Small] = tokens.Stroke.Thicker,
		[AvatarSize.Medium] = tokens.Stroke.Thicker,
		[AvatarSize.Large] = tokens.Stroke.Thicker,
		[AvatarSize.XLarge] = tokens.Stroke.Thicker,
		[AvatarSize.Pictogram] = tokens.Stroke.Thicker + tokens.Stroke.Standard,
	}

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
		sizeStrokes = sizeStrokes,
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
	local strokeThickness = if isIconSize then props.iconSizeStrokes[size] else props.sizeStrokes[size]
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
		statusIndicator = {
			isVisible = hasIndicator,
		},
	})
end
