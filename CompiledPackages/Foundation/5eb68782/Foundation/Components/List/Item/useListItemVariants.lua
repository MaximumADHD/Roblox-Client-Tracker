local Foundation = script:FindFirstAncestor("Foundation")

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type ListItemVariantProps = {
	title: { tag: string },
	metadata: { tag: string },
	description: { tag: string },
	icon: { size: IconSize },
}

local function variantsFactory(_tokens: Tokens)
	local common = {
		title = { tag = "auto-xy text-wrap text-align-x-left content-emphasis" },
		metadata = { tag = "auto-xy text-align-x-left text-truncate-split" },
		description = { tag = "auto-xy text-wrap text-align-x-left" },
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			title = { tag = "text-title-small" },
			metadata = { tag = "text-body-small" },
			description = { tag = "text-body-small" },
			icon = { size = IconSize.XSmall },
		},
		[InputSize.Small] = {
			title = { tag = "text-title-small" },
			metadata = { tag = "text-body-small" },
			description = { tag = "text-body-small" },
			icon = { size = IconSize.Small },
		},
		[InputSize.Medium] = {
			title = { tag = "text-title-medium" },
			metadata = { tag = "text-body-medium" },
			description = { tag = "text-body-medium" },
			icon = { size = IconSize.Medium },
		},
		[InputSize.Large] = {
			title = { tag = "text-title-large" },
			metadata = { tag = "text-body-medium" },
			description = { tag = "text-body-medium" },
			icon = { size = IconSize.Large },
		},
	}

	return {
		common = common,
		sizes = sizes,
	}
end

return function(tokens: Tokens, size: InputSize): ListItemVariantProps
	local props = VariantsContext.useVariants("ListItem", variantsFactory, tokens)

	return composeStyleVariant(props.common, props.sizes[size])
end
