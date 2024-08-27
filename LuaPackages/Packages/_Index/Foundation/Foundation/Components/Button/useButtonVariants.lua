local Foundation = script:FindFirstAncestor("Foundation")

local ButtonSize = require(Foundation.Enums.ButtonSize)
type ButtonSize = ButtonSize.ButtonSize

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
type Stroke = {
	Color: Color3,
	Transparency: number,
}

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type ButtonVariantProps = {
	container: {
		tag: string,
		height: number,
		stroke: Stroke,
		background: ColorStyleValue,
	},
	text: {
		tag: string,
	},
	icon: {
		size: IconSize,
		style: ColorStyleValue,
	},
}

local function toStroke(token: { Color3: Color3, Transparency: number }): Stroke
	return {
		Color = token.Color3,
		Transparency = token.Transparency,
	}
end

local variants = function(tokens: Tokens)
	local common = {
		container = {
			tag = "row gap-xsmall auto-x align-y-center align-x-center clip",
		},
		icon = {
			size = IconSize.Small,
		},
		text = {
			tag = "size-0-full auto-x text-title-large text-truncate-end shrink",
		},
	}

	local sizes: { [ButtonSize]: VariantProps } = {
		[ButtonSize.XSmall] = {
			container = {
				tag = "padding-small radius-small",
				height = tokens.Size.Size_700,
			},
		},
		[ButtonSize.Small] = {
			container = {
				tag = "padding-small radius-medium",
				height = tokens.Size.Size_900,
			},
		},
		[ButtonSize.Medium] = {
			container = {
				tag = "padding-medium radius-medium",
				height = tokens.Size.Size_1200,
			},
		},
	}

	local types: { [ButtonVariant]: VariantProps } = {
		[ButtonVariant.Emphasis] = {
			container = {
				tag = "bg-action-emphasis",
				stroke = toStroke(tokens.Color.ActionEmphasis.Border),
			},
			text = {
				tag = "content-action-emphasis",
			},
			icon = {
				style = tokens.Color.ActionEmphasis.Foreground,
			},
		},
		[ButtonVariant.SubEmphasis] = {
			container = {
				tag = "bg-action-sub-emphasis",
				stroke = toStroke(tokens.Color.ActionSubEmphasis.Border),
			},
			text = {
				tag = "content-action-sub-emphasis",
			},
			icon = {
				style = tokens.Color.ActionSubEmphasis.Foreground,
			},
		},
		[ButtonVariant.Standard] = {
			container = {
				tag = "bg-action-standard",
				stroke = toStroke(tokens.Color.ActionStandard.Border),
			},
			text = {
				tag = "content-action-standard",
			},
			icon = {
				style = tokens.Color.ActionStandard.Foreground,
			},
		},
		[ButtonVariant.Subtle] = {
			container = {
				tag = "bg-action-subtle",
				stroke = toStroke(tokens.Color.ActionSubtle.Border),
			},
			text = {
				tag = "content-action-subtle",
			},
			icon = {
				style = tokens.Color.ActionSubtle.Foreground,
			},
		},
		[ButtonVariant.Alert] = {
			container = {
				tag = "bg-action-alert",
				stroke = toStroke(tokens.Color.ActionAlert.Border),
			},
			text = {
				tag = "content-action-alert",
			},
			icon = {
				style = tokens.Color.ActionAlert.Foreground,
			},
		},
		[ButtonVariant.Text] = {
			text = {
				tag = "content-emphasis",
			},
			icon = {
				style = tokens.Color.Content.Emphasis,
			},
		},
		[ButtonVariant.Link] = {
			text = {
				tag = "content-link",
			},
			icon = {
				style = tokens.Color.Content.Link,
			},
		},
	}

	return { common = common, sizes = sizes, types = types }
end

return function(tokens: Tokens, size: ButtonSize, variant: ButtonVariant): ButtonVariantProps
	local variants = VariantsContext.useVariants("Button", variants, tokens)
	return composeStyleVariant(variants.common, variants.sizes[size], variants.types[variant])
end
