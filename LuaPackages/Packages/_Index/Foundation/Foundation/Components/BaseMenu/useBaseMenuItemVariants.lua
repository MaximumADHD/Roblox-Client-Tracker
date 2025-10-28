local Foundation = script:FindFirstAncestor("Foundation")

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Types = require(Foundation.Components.Types)
local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local Flags = require(Foundation.Utility.Flags)

type BaseMenuItemVariantProps = {
	container: { tag: string },
	icon: { tag: string, style: Types.ColorStyleValue, size: number },
	text: { tag: string },
	check: { tag: string, style: Types.ColorStyleValue, size: number },
	title: { tag: string },
}

local variantsMap = function(tokens: Tokens)
	local common = {
		-- It's not a mistake having size-full (see sizes) and auto-x. It makes the minimal size full and allow item to grow to fill up the max width of the menu
		container = {
			tag = if Flags.FoundationMenuWidthGrowth
				then "row align-y-center flex-x-between auto-x"
				else "row align-y-center flex-x-between",
		},
		icon = { tag = "content-emphasis", style = tokens.Color.Content.Emphasis },
		text = {
			tag = if Flags.FoundationMenuWidthGrowth
				then "content-emphasis auto-xy fill text-align-x-left text-truncate-split"
				else "content-emphasis auto-y grow text-align-x-left text-truncate-end",
		},
		title = {
			tag = "content-default auto-xy fill text-align-x-left text-truncate-split",
		},
		check = { tag = "content-emphasis", style = tokens.Color.Content.Emphasis },
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			container = {
				tag = `size-full-600 radius-small {if Flags.FoundationMenuItemStyles
					then "padding-x-medium"
					else "padding-x-xsmall"} gap-xsmall`,
			},
			icon = { tag = "size-400", size = IconSize.XSmall :: IconSize },
			text = { tag = if Flags.FoundationMenuItemStyles then "text-body-small" else "text-title-small" },
			title = { tag = "text-caption-small" },
			check = { tag = "size-300", size = tokens.Size.Size_600 },
		},
		[InputSize.Small] = {
			container = {
				tag = `size-full-800 radius-medium {if Flags.FoundationMenuItemStyles
					then "padding-x-medium"
					else "padding-x-small"} gap-xsmall`,
			},
			icon = { tag = "size-500", size = IconSize.Small :: IconSize },
			text = { tag = if Flags.FoundationMenuItemStyles then "text-body-small" else "text-title-small" },
			title = { tag = "text-caption-small" },
			check = { tag = "size-400", size = tokens.Size.Size_700 },
		},
		[InputSize.Medium] = {
			container = {
				tag = `size-full-1000 radius-medium {if Flags.FoundationMenuItemStyles
					then "padding-x-medium"
					else "padding-x-small"} gap-small`,
			},
			icon = { tag = "size-600", size = IconSize.Medium :: IconSize },
			text = { tag = if Flags.FoundationMenuItemStyles then "text-body-medium" else "text-title-medium" },
			title = { tag = if Flags.FoundationMenuItemStyles then "text-caption-medium" else "text-title-medium" },
			check = { tag = "size-500", size = tokens.Size.Size_800 },
		},
		[InputSize.Large] = {
			container = {
				tag = `size-full-1200 radius-medium {if Flags.FoundationMenuItemStyles
					then "padding-x-large"
					else "padding-x-small"} gap-small`,
			},
			icon = { tag = "size-700", size = IconSize.Large :: IconSize },
			text = { tag = if Flags.FoundationMenuItemStyles then "text-body-large" else "text-title-large" },
			title = { tag = "text-caption-large" },
			check = { tag = "size-600", size = tokens.Size.Size_900 },
		},
	}

	local isChecked = {
		[false] = { container = { tag = "" } },
		[true] = { container = { tag = "bg-surface-200" } },
	}

	return { common = common, sizes = sizes, isChecked = isChecked }
end

return function(tokens: Tokens, size: InputSize, isChecked: boolean): BaseMenuItemVariantProps
	local variants = VariantsContext.useVariants("BaseMenuItem", variantsMap, tokens)
	return composeStyleVariant(variants.common, variants.sizes[size], variants.isChecked[isChecked])
end
