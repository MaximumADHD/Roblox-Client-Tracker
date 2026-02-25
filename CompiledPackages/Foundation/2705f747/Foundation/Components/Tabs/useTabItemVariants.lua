local Foundation = script:FindFirstAncestor("Foundation")

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

type TabVariantProps = {
	container: {
		tag: string,
	},
	text: {
		tag: string,
	},
	content: {
		tag: string,
	},
	icon: {
		size: IconSize,
	},
}

local function variantsFactory(tokens: Tokens)
	local common = {
		text = { tag = "auto-x" },
		content = { tag = "align-x-center align-y-center row gap-small" },
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			text = { tag = "text-label-small size-0-400" },
			content = { tag = "padding-y-small" },
			icon = { size = IconSize.XSmall },
		},
		[InputSize.Small] = {
			text = { tag = "text-label-medium size-0-600" },
			content = { tag = "padding-y-small" },
			icon = { size = IconSize.Medium },
		},
		[InputSize.Medium] = {
			text = { tag = "text-label-medium size-0-600" },
			content = { tag = "padding-y-medium" },
			icon = { size = IconSize.Medium },
		},
		[InputSize.Large] = {
			text = { tag = "text-label-medium size-0-600" },
			content = { tag = "padding-y-xlarge" },
			icon = { size = IconSize.Medium },
		},
	}

	local paddings: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = { content = { tag = "padding-x-small" } },
		[InputSize.Small] = { content = { tag = "padding-x-small" } },
		[InputSize.Medium] = { content = { tag = "padding-x-medium" } },
		[InputSize.Large] = { content = { tag = "padding-x-large" } },
	}

	local isFill: { [boolean]: VariantProps } = {
		[false] = { container = { tag = "auto-xy" }, content = { tag = "size-0-0 auto-xy" } },
		[true] = { container = { tag = "auto-xy grow" }, content = { tag = "size-full-0 auto-y" } },
	}

	return { common = common, sizes = sizes, isFill = isFill, paddings = paddings }
end

return function(tokens: Tokens, size: InputSize, isFill: boolean): TabVariantProps
	local props = VariantsContext.useVariants("Tab", variantsFactory, tokens)

	return composeStyleVariant(
		props.common,
		props.sizes[size],
		props.isFill[isFill],
		if isFill then props.paddings[size] else {}
	)
end
