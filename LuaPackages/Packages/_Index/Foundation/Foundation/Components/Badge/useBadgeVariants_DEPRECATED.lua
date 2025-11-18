local Foundation = script:FindFirstAncestor("Foundation")

local BadgeVariant = require(Foundation.Enums.BadgeVariant)
type BadgeVariant = BadgeVariant.BadgeVariant
local BadgeSize = require(Foundation.Enums.BadgeSize)
type BadgeSize = BadgeSize.BadgeSize

local useTokens = require(Foundation.Providers.Style.useTokens)

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
type SizeConstraint = Types.SizeConstraint

type BadgeStyle = {
	backgroundStyle: ColorStyleValue,
	contentStyle: ColorStyleValue,
}

local textStyle: { [BadgeSize]: string } = {
	[BadgeSize.Small] = "text-caption-small",
	[BadgeSize.Medium] = "text-label-small",
}

return function(
	variant: BadgeVariant,
	size: BadgeSize,
	hasIcon: boolean,
	hasText: boolean
): (BadgeStyle, SizeConstraint, SizeConstraint, string, string)
	local tokens = useTokens()

	local badgeVariants: { [BadgeVariant]: BadgeStyle } = {
		[BadgeVariant.Primary] = {
			backgroundStyle = tokens.Color.System.Contrast,
			contentStyle = tokens.Inverse.Content.Emphasis,
		},
		[BadgeVariant.Secondary] = {
			backgroundStyle = tokens.Color.Shift.Shift_200,
			contentStyle = tokens.Color.Content.Emphasis,
		},
		[BadgeVariant.Alert] = {
			backgroundStyle = tokens.Color.System.Alert,
			contentStyle = tokens.DarkMode.Content.Emphasis,
		},
		[BadgeVariant.Success] = {
			backgroundStyle = tokens.Color.System.Success,
			contentStyle = tokens.LightMode.Content.Emphasis,
		},
		[BadgeVariant.Warning] = {
			backgroundStyle = tokens.Color.System.Warning,
			contentStyle = tokens.LightMode.Content.Emphasis,
		},
		[BadgeVariant.Contrast] = {
			backgroundStyle = tokens.Color.System.Contrast,
			contentStyle = tokens.Inverse.Content.Emphasis,
		},
		[BadgeVariant.Neutral] = {
			backgroundStyle = tokens.Color.Shift.Shift_300,
			contentStyle = tokens.Color.Content.Emphasis,
		},
		[BadgeVariant.OverMedia] = {
			backgroundStyle = tokens.LightMode.Surface.Surface_100,
			contentStyle = tokens.LightMode.Content.Emphasis,
		},
	}

	local minSize: { [BadgeSize]: number } = {
		-- 12 - 4 (padding)
		[BadgeSize.Small] = tokens.Size.Size_300 - tokens.Padding.XXSmall * 2,
		-- 24 - 2 (stroke) - 4 (padding)
		[BadgeSize.Medium] = tokens.Size.Size_600 - tokens.Stroke.Standard * 2 - tokens.Padding.XXSmall * 2,
	}

	local containerPadding = if hasIcon or hasText then "padding-xxsmall" else ""
	local textPadding = "padding-x-xsmall"
	local fontStyle = textStyle[size]

	-- Necessary to ensure that the ... fits inside badge
	local maxSize = if hasIcon then Vector2.new(math.huge, math.huge) else nil

	local textSizeConstraint = {
		MaxSize = maxSize,
	}

	local containerMinSize = if hasText or hasIcon then minSize[size] else tokens.Size.Size_200

	local containerSizeConstraint = {
		MinSize = Vector2.new(containerMinSize, containerMinSize),
		MaxSize = Vector2.new(math.huge, math.huge),
	}

	local containerTags = `auto-xy radius-circle row align-y-center align-x-center stroke-thick {containerPadding}`
	local textTags = `auto-xy {textPadding} {fontStyle}`

	return badgeVariants[variant], containerSizeConstraint, textSizeConstraint, containerTags, textTags
end
