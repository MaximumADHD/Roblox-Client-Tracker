local Foundation = script:FindFirstAncestor("Foundation")

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
local Types = require(Foundation.Components.Types)
type Tokens = Tokens.Tokens

local Flags = require(Foundation.Utility.Flags)

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

-- TODO: Remove `legacyVariants` and its helpers when FoundationBaseMenuBeta is cleaned up.
-- Only `refreshVariants` is reachable in production after that.
local function legacyVariants(tokens: Tokens)
	local common = {
		container = {
			tag = "row flex-x-between align-y-center auto-x",
		},
		icon = {
			tag = "radius-small content-emphasis",
			style = tokens.Color.Content.Emphasis,
		},
		text = {
			tag = "fill auto-xy text-align-x-left text-truncate-split content-emphasis",
		},
		title = {
			tag = "fill auto-xy text-align-x-left text-truncate-split content-default",
		},
		check = { tag = "content-emphasis", style = tokens.Color.Content.Emphasis },
		slotAlign = { tag = "align-x-center align-y-center" },
		submenuContent = { tag = "col auto-xy stroke-standard stroke-default radius-medium" },
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			container = { tag = "gap-xsmall size-full-600 padding-x-medium radius-small" },
			icon = { tag = "size-400", size = IconSize.XSmall :: IconSize },
			text = { tag = "text-body-small" },
			title = { tag = "text-caption-small" },
			check = { tag = "size-300", size = tokens.Size.Size_600 },
			chevron = { size = IconSize.Small :: IconSize },
			groupPadding = { size = tokens.Padding.XSmall },
		},
		[InputSize.Small] = {
			container = { tag = "gap-xsmall size-full-800 padding-x-medium radius-medium" },
			icon = { tag = "size-500", size = IconSize.Small :: IconSize },
			text = { tag = "text-body-small" },
			title = { tag = "text-caption-small" },
			check = { tag = "size-400", size = tokens.Size.Size_700 },
			chevron = { size = IconSize.Small :: IconSize },
			groupPadding = { size = tokens.Padding.Small },
		},
		[InputSize.Medium] = {
			container = { tag = "gap-small size-full-1000 padding-x-medium radius-medium" },
			icon = { tag = "size-600", size = IconSize.Medium :: IconSize },
			text = { tag = "text-body-medium" },
			title = { tag = "text-caption-medium" },
			check = { tag = "size-500", size = tokens.Size.Size_800 },
			chevron = { size = IconSize.Medium :: IconSize },
			groupPadding = { size = tokens.Padding.Small },
		},
		[InputSize.Large] = {
			container = { tag = "gap-small size-full-1200 padding-x-large radius-medium" },
			icon = { tag = "size-700", size = IconSize.Large :: IconSize },
			text = { tag = "text-body-large" },
			title = { tag = "text-caption-large" },
			check = { tag = "size-600", size = tokens.Size.Size_900 },
			chevron = { size = IconSize.Large :: IconSize },
			groupPadding = { size = tokens.Padding.Small },
		},
	}

	local isChecked = {
		[false] = { container = { tag = "" } },
		[true] = { container = { tag = "bg-surface-200" } },
	}

	-- `common.container.tag` already includes `auto-x`; this entry exists only for shape parity
	-- with `refreshVariants`. Goes away with the rest of `legacyVariants` on flag cleanup.
	-- TODO: Remove this when FoundationBaseMenuBeta is cleaned up.
	local defaultSize = { container = { tag = "auto-x" } }

	return {
		common = common,
		sizes = sizes,
		isChecked = isChecked,
		defaultSize = defaultSize,
	}
end

local function refreshVariants(tokens: Tokens)
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
		submenuContent = { tag = "col auto-xy stroke-standard stroke-default radius-medium" },
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

	-- Refresh design conveys selection via the dedicated check column, not a background
	-- highlight; entries are empty but kept for shape parity with `legacyVariants`.
	-- TODO: Remove `isChecked` (here and from the returned table) when FoundationBaseMenuBeta is
	-- cleaned up. The legacy compose branch in the hook below is its only consumer.
	local isChecked = {
		[false] = { container = { tag = "" } },
		[true] = { container = { tag = "" } },
	}

	local defaultSize = { container = { tag = "auto-x" } }

	return {
		common = common,
		sizes = sizes,
		isChecked = isChecked,
		defaultSize = defaultSize,
	}
end

-- TODO: When FoundationBaseMenuBeta is cleaned up, inline `refreshVariants` at the call site
-- below and delete this wrapper along with the `Flags` import.
local function variantsMap(tokens: Tokens)
	if Flags.FoundationBaseMenuBeta then
		return refreshVariants(tokens)
	end
	return legacyVariants(tokens)
end

-- TODO: When FoundationBaseMenuBeta is cleaned up:
--   * Drop the `isChecked` parameter (only the legacy branch reads it) and update all callers.
--   * Remove the `if not Flags.FoundationBaseMenuBeta` branch below.
return function(tokens: Tokens, size: InputSize, isChecked: boolean): BaseMenuItemVariantProps
	local variants = VariantsContext.useVariants("BaseMenuItem", variantsMap, tokens)

	if not Flags.FoundationBaseMenuBeta then
		return composeStyleVariant(variants.common, variants.sizes[size], variants.isChecked[isChecked])
	end

	return composeStyleVariant(variants.common, variants.sizes[size], variants.defaultSize)
end
