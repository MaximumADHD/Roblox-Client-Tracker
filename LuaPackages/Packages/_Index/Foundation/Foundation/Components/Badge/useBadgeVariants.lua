local Foundation = script:FindFirstAncestor("Foundation")

local BadgeVariant = require(Foundation.Enums.BadgeVariant)
type BadgeVariant = BadgeVariant.BadgeVariant

local useTokens = require(Foundation.Providers.Style.useTokens)

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

type BadgeStyle = {
	backgroundStyle: ColorStyleValue,
	contentStyle: ColorStyleValue,
}

return function(variant: BadgeVariant)
	local tokens = useTokens()

	local badgeVariants: { [BadgeVariant]: BadgeStyle } = {
		[BadgeVariant.Primary] = {
			backgroundStyle = tokens.Color.ActionSubEmphasis.Background,
			contentStyle = tokens.Color.ActionSubEmphasis.Foreground,
		},
		[BadgeVariant.Secondary] = {
			backgroundStyle = tokens.Color.Shift.Shift_200,
			contentStyle = tokens.Color.Content.Emphasis,
		},
		[BadgeVariant.Alert] = {
			backgroundStyle = tokens.Color.System.Alert,
			contentStyle = tokens.DarkMode.Content.Emphasis,
		},
	}

	return badgeVariants[variant]
end
