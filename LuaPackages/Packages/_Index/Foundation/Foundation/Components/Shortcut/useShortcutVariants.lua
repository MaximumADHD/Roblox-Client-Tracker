local Foundation = script:FindFirstAncestor("Foundation")

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local InputSize = require(Foundation.Enums.InputSize)

local ShortcutVariant = require(Foundation.Enums.ShortcutVariant)
type ShortcutVariant = ShortcutVariant.ShortcutVariant

local Types = require(Foundation.Components.Types)
type ColorStyle = Types.ColorStyle

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

-- The three sizes the design defines; a taller cap has no spec to follow.
export type ShortcutSize = typeof(InputSize.XSmall) | typeof(InputSize.Small) | typeof(InputSize.Medium)

export type ShortcutVariantProps = {
	container: { tag: string, gap: number },
	keys: { tag: string },
	cap: { tag: string },
	capWide: { padding: number },
	capless: { tag: string },
	text: { tag: string },
	separator: { tag: string },
	keybinding: { tag: string },
	icon: { size: IconSize, style: ColorStyle },
	gamepadIcon: { size: number, style: ColorStyle },
}

local function variantsFactory(tokens: Tokens)
	local common = {
		container = {
			tag = "auto-xy",
			gap = tokens.Size.Size_150,
		},
		keys = {
			tag = "row align-y-center auto-xy",
		},
		cap = {
			tag = "row align-x-center align-y-center auto-x",
		},
		capless = {
			tag = "row align-x-center align-y-center auto-xy",
		},
		text = {
			tag = "auto-xy text-align-x-center",
		},
		separator = {
			tag = "auto-x padding-x-xxsmall text-align-x-center content-emphasis",
		},
		keybinding = {
			tag = "auto-xy text-align-x-left content-default",
		},
		icon = {
			size = IconSize.XSmall,
		},
		gamepadIcon = {
			style = tokens.Color.Content.Emphasis,
		},
	}

	local sizes: { [ShortcutSize]: VariantProps } = {
		[InputSize.XSmall] = {
			keys = {
				tag = "gap-xxsmall",
			},
			cap = {
				tag = "size-400 radius-xsmall",
			},
			capWide = {
				padding = tokens.Padding.XSmall,
			},
			text = {
				tag = "text-caption-small",
			},
			separator = {
				tag = "size-0-400 text-label-small",
			},
			keybinding = {
				tag = "text-label-small",
			},
			gamepadIcon = {
				size = tokens.Size.Size_400,
			},
		},
		[InputSize.Small] = {
			keys = {
				tag = "gap-xsmall",
			},
			cap = {
				tag = "size-500 radius-small",
			},
			capWide = {
				padding = tokens.Size.Size_150,
			},
			text = {
				tag = "text-caption-small",
			},
			separator = {
				tag = "size-0-500 text-label-medium",
			},
			keybinding = {
				tag = "text-label-medium",
			},
			gamepadIcon = {
				size = tokens.Size.Size_500,
			},
		},
		[InputSize.Medium] = {
			container = {
				gap = tokens.Size.Size_200,
			},
			keys = {
				tag = "gap-xsmall",
			},
			cap = {
				tag = "size-600 radius-small",
			},
			capWide = {
				padding = tokens.Padding.Small,
			},
			text = {
				tag = "text-caption-medium",
			},
			separator = {
				tag = "size-0-600 text-label-large",
			},
			keybinding = {
				tag = "text-label-medium",
			},
			icon = {
				size = IconSize.Small,
			},
			gamepadIcon = {
				size = tokens.Size.Size_600,
			},
		},
	}

	local variants: { [ShortcutVariant]: VariantProps } = {
		[ShortcutVariant.Standard] = {
			cap = {
				tag = "bg-shift-200",
			},
			text = {
				tag = "content-emphasis",
			},
			icon = {
				style = tokens.Color.Content.Emphasis,
			},
		},
		[ShortcutVariant.Contrast] = {
			cap = {
				tag = "bg-system-contrast",
			},
			text = {
				tag = "content-inverse-emphasis",
			},
			icon = {
				style = tokens.Inverse.Content.Emphasis,
			},
		},
	}

	return {
		common = common,
		sizes = sizes,
		variants = variants,
	}
end

local function useShortcutVariants(tokens: Tokens, size: ShortcutSize, variant: ShortcutVariant): ShortcutVariantProps
	local props = VariantsContext.useVariants("Shortcut", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.sizes[size], props.variants[variant])
end

return useShortcutVariants
