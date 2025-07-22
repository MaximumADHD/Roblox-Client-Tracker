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

type MenuItemVariantProps = {
	container: { tag: string },
	icon: { tag: string, style: Types.ColorStyleValue, size: number },
	text: { tag: string },
	check: { tag: string, style: Types.ColorStyleValue, size: number },
}

local variants = function(tokens: Tokens)
	local common = {
		container = { tag = "row align-y-center flex-x-between" },
		icon = { tag = "content-emphasis", style = tokens.Color.Content.Emphasis },
		text = { tag = "content-emphasis auto-y grow text-align-x-left text-truncate-end" },
		check = { tag = "content-emphasis", style = tokens.Color.Content.Emphasis },
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			container = { tag = "size-full-600 radius-small padding-x-xsmall gap-xsmall" },
			icon = { tag = "size-400", size = IconSize.XSmall :: IconSize },
			text = { tag = "text-title-small" },
			check = { tag = "size-300", size = tokens.Size.Size_600 },
		},
		[InputSize.Small] = {
			container = { tag = "size-full-800 radius-medium padding-x-small gap-xsmall" },
			icon = { tag = "size-500", size = IconSize.Small :: IconSize },
			text = { tag = "text-title-small" },
			check = { tag = "size-400", size = tokens.Size.Size_700 },
		},
		[InputSize.Medium] = {
			container = { tag = "size-full-1000 radius-medium padding-x-small gap-small" },
			icon = { tag = "size-600", size = IconSize.Medium :: IconSize },
			text = { tag = "text-title-medium" },
			check = { tag = "size-500", size = tokens.Size.Size_800 },
		},
		[InputSize.Large] = {
			container = { tag = "size-full-1200 radius-medium padding-x-small gap-small" },
			icon = { tag = "size-700", size = IconSize.Large :: IconSize },
			text = { tag = "text-title-large" },
			check = { tag = "size-600", size = tokens.Size.Size_900 },
		},
	}

	local isChecked = {
		[false] = { container = { tag = "" } },
		[true] = { container = { tag = "bg-surface-200" } },
	}

	return { common = common, sizes = sizes, isChecked = isChecked }
end

return function(tokens: Tokens, size: InputSize, isChecked: boolean): MenuItemVariantProps
	local variants = VariantsContext.useVariants("MenuItem", variants, tokens)
	return composeStyleVariant(variants.common, variants.sizes[size], variants.isChecked[isChecked])
end
