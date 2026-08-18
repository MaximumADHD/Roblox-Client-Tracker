local Foundation = script:FindFirstAncestor("Foundation")

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
local Types = require(Foundation.Components.Types)
type Tokens = Tokens.Tokens

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

type BaseMenuItemVariantProps = {
	container: {
		tag: string,
		paddingLeftWithCheck: number?,
		paddingLeftWithoutCheck: number?,
		paddingRight: number?,
	},
	wrapper: { gap: number? }?,
	icon: { tag: string, style: Types.ColorStyleValue, size: number },
	text: { tag: string },
	check: { tag: string, style: Types.ColorStyleValue, size: number },
	title: {
		tag: string,
		checkColumnWidth: number?,
	},
	chevron: { size: IconSize },
	groupPadding: { size: number },
	slotAlign: { tag: string },
	submenuContent: { tag: string },
}

local function variantsMap(tokens: Tokens)
	local common = {
		container = { tag = "" },
		icon = {
			tag = "radius-small content-emphasis",
			style = tokens.Color.Content.Emphasis,
		},
		text = {
			tag = "fill auto-xy text-align-x-left text-truncate-end content-emphasis",
		},
		title = {
			tag = "fill auto-xy text-align-x-left text-truncate-end content-default",
		},
		check = { tag = "content-emphasis", style = tokens.Color.Content.Emphasis },
		slotAlign = { tag = "align-x-center align-y-center" },
		submenuContent = { tag = "stroke-standard stroke-default radius-medium" },
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			container = {
				tag = "size-full-600 radius-small",
				paddingLeftWithCheck = 0,
				paddingLeftWithoutCheck = tokens.Padding.Small,
				paddingRight = tokens.Padding.Small,
			},
			wrapper = { gap = tokens.Size.Size_150 },
			icon = { tag = "size-400", size = IconSize.XSmall :: IconSize },
			text = { tag = "text-body-small" },
			title = { tag = "text-caption-small", checkColumnWidth = tokens.Size.Size_500 },
			check = { tag = "size-500-400", size = tokens.Size.Size_400 },
			chevron = { size = IconSize.Small :: IconSize },
			groupPadding = { size = tokens.Padding.XSmall },
		},
		[InputSize.Small] = {
			container = {
				tag = "size-full-800 radius-small",
				paddingLeftWithCheck = 0,
				paddingLeftWithoutCheck = tokens.Padding.Small,
				paddingRight = tokens.Padding.Small,
			},
			wrapper = { gap = tokens.Size.Size_150 },
			icon = { tag = "size-500", size = IconSize.Small :: IconSize },
			text = { tag = "text-body-small" },
			title = { tag = "text-caption-small", checkColumnWidth = tokens.Size.Size_600 },
			check = { tag = "size-600-400", size = tokens.Size.Size_400 },
			chevron = { size = IconSize.Small :: IconSize },
			groupPadding = { size = tokens.Padding.Small },
		},
		[InputSize.Medium] = {
			container = {
				tag = "size-full-1000 radius-medium",
				paddingLeftWithCheck = 0,
				paddingLeftWithoutCheck = tokens.Size.Size_250,
				paddingRight = tokens.Size.Size_250,
			},
			wrapper = { gap = tokens.Size.Size_150 },
			icon = { tag = "size-500", size = IconSize.Medium :: IconSize },
			text = { tag = "text-body-medium" },
			title = { tag = "text-caption-medium", checkColumnWidth = tokens.Size.Size_700 },
			check = { tag = "size-700-500", size = tokens.Size.Size_500 },
			chevron = { size = IconSize.Medium :: IconSize },
			groupPadding = { size = tokens.Padding.Small },
		},
		[InputSize.Large] = {
			container = {
				tag = "size-full-1200 radius-medium",
				paddingLeftWithCheck = 0,
				paddingLeftWithoutCheck = tokens.Size.Size_350,
				paddingRight = tokens.Size.Size_350,
			},
			wrapper = { gap = tokens.Padding.Small },
			icon = { tag = "size-600", size = IconSize.Large :: IconSize },
			text = { tag = "text-body-large" },
			title = { tag = "text-caption-large", checkColumnWidth = tokens.Size.Size_800 },
			check = { tag = "size-800-600", size = tokens.Size.Size_600 },
			chevron = { size = IconSize.Large :: IconSize },
			groupPadding = { size = tokens.Padding.Small },
		},
	}

	local isScrollable = {
		[false] = { submenuContent = { tag = "col auto-xy" } },
		[true] = { submenuContent = { tag = "" } },
	}

	local defaultSize = { container = { tag = "auto-x" } }

	return {
		common = common,
		sizes = sizes,
		isScrollable = isScrollable,
		defaultSize = defaultSize,
	}
end

return function(tokens: Tokens, size: InputSize, isScrollable: boolean): BaseMenuItemVariantProps
	local variants = VariantsContext.useVariants("BaseMenuItem", variantsMap, tokens)

	return composeStyleVariant(
		variants.common,
		variants.sizes[size],
		variants.defaultSize,
		variants.isScrollable[isScrollable]
	)
end
