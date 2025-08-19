local Foundation = script:FindFirstAncestor("Foundation")

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Types = require(Foundation.Components.Types)
local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens
type StateLayer = Types.StateLayer
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize
type SizeConstraint = Types.SizeConstraint

type AccordionItemVariantProps = {
	container: { tag: string, stateLayer: StateLayer },
	header: { tag: string },
	content: { tag: string },
	icon: { style: Types.ColorStyleValue, size: number },
	text: { tag: string },
}

local getVariants = function(tokens: Tokens)
	local common = {
		container = {
			tag = "col align-x-center flex-y-between size-full-0 auto-y",
			stateLayer = { affordance = StateLayerAffordance.None },
		},
		header = { tag = "row align-y-center flex-x-between" },
		content = { tag = "size-full-0 auto-y padding-top-xsmall" },
		icon = { style = tokens.Color.Content.Emphasis },
		text = { tag = "content-emphasis auto-y grow text-align-x-left text-truncate-end" },
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			container = { tag = "radius-small" },
			header = { tag = "size-full-600 gap-small" },
			content = { tag = "padding-bottom-small" },
			icon = { size = IconSize.XSmall :: IconSize },
			text = { tag = "text-title-small" },
		},
		[InputSize.Small] = {
			container = { tag = "radius-medium" },
			header = { tag = "size-full-800 gap-small" },
			content = { tag = "padding-bottom-large" },
			icon = { size = IconSize.Small :: IconSize },
			text = { tag = "text-title-small" },
		},
		[InputSize.Medium] = {
			container = { tag = "radius-medium" },
			header = { tag = "size-full-1000 gap-small" },
			content = { tag = "padding-bottom-xlarge" },
			icon = { size = IconSize.Medium :: IconSize },
			text = { tag = "text-title-medium" },
		},
		[InputSize.Large] = {
			container = { tag = "radius-medium" },
			header = { tag = "size-full-1200 gap-small" },
			content = { tag = "padding-bottom-xlarge" },
			icon = { size = IconSize.Large :: IconSize },
			text = { tag = "text-title-large" },
		},
	}

	local isContained = {
		[false] = { header = { tag = "padding-x-xsmall" } },
		[true] = { header = { tag = "padding-x-medium" } },
	}

	return { common = common, sizes = sizes, isContained = isContained }
end

return function(tokens: Tokens, size: InputSize, isContained: boolean): AccordionItemVariantProps
	local variants = VariantsContext.useVariants("AccordionItem", getVariants, tokens)
	return composeStyleVariant(variants.common, variants.sizes[size], variants.isContained[isContained])
end
