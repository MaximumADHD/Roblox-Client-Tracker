local Foundation = script:FindFirstAncestor("Foundation")

local BadgeVariant = require(Foundation.Enums.BadgeVariant)
type BadgeVariant = BadgeVariant.BadgeVariant
local BadgeSize = require(Foundation.Enums.BadgeSize)
type BadgeSize = BadgeSize.BadgeSize

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type BadgeVariantProps = {
	container: { tag: string, backgroundStyle: ColorStyleValue, stroke: Types.Stroke },
	text: { tag: string },
	content: { style: ColorStyleValue },
}

function variantsFactory(tokens: Tokens)
	local common = {
		container = {
			tag = "radius-circle row align-y-center align-x-center gap-xsmall",
		},
		text = {
			tag = "auto-xy text-label-small",
		},
	}

	local variants: { [BadgeVariant]: VariantProps } = {
		[BadgeVariant.Alert] = {
			container = {
				backgroundStyle = tokens.Color.System.Alert,
			},
			content = {
				style = tokens.DarkMode.Content.Emphasis,
			},
		},
		[BadgeVariant.Success] = {
			container = {
				backgroundStyle = tokens.Color.System.Success,
			},
			content = {
				style = tokens.LightMode.Content.Emphasis,
			},
		},
		[BadgeVariant.Warning] = {
			container = {
				backgroundStyle = tokens.Color.System.Warning,
			},
			content = {
				style = tokens.LightMode.Content.Emphasis,
			},
		},
		[BadgeVariant.Contrast] = {
			container = {
				backgroundStyle = tokens.Color.System.Contrast,
			},
			content = {
				style = tokens.Inverse.Content.Emphasis,
			},
		},
		[BadgeVariant.Neutral] = {
			container = {
				backgroundStyle = tokens.Color.Shift.Shift_300,
			},
			content = {
				style = tokens.Color.Content.Emphasis,
			},
		},
		[BadgeVariant.OverMedia] = {
			container = {
				backgroundStyle = tokens.LightMode.Surface.Surface_100,
				stroke = {
					Color = tokens.LightMode.Stroke.Default.Color3,
					Transparency = tokens.LightMode.Stroke.Default.Transparency,
				},
			},
			content = {
				style = tokens.LightMode.Content.Emphasis,
			},
		},
	}

	local iconOnly: { [boolean]: any } = {
		[true] = { container = { tag = "size-600" } },
		[false] = { container = { tag = "size-0-600 auto-x padding-x-small" } },
	}

	return { common = common, variants = variants, iconOnly = iconOnly }
end

return function(tokens: Tokens, variant: BadgeVariant, isIconOnly: boolean): BadgeVariantProps
	local props = VariantsContext.useVariants("Badge", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.variants[variant], props.iconOnly[isIconOnly])
end
