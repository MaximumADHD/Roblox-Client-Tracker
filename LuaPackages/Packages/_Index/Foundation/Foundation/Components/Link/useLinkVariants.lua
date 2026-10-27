local Foundation = script:FindFirstAncestor("Foundation")

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local LinkVariant = require(Foundation.Enums.LinkVariant)
type LinkVariant = LinkVariant.LinkVariant

local TextOverflow = require(Foundation.Enums.TextOverflow)
type TextOverflow = TextOverflow.TextOverflow

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

type LinkVariantProps = {
	container: { tag: string },
	text: { tag: string },
	content: { style: ColorStyleValue },
}

local function variantsFactory(tokens: Tokens)
	local common = {
		container = {
			tag = "row align-y-center",
		},
	}

	local variants: { [LinkVariant]: VariantProps } = {
		[LinkVariant.Standard] = {
			content = { style = tokens.Color.Content.Emphasis },
		},
		[LinkVariant.Inverse] = {
			content = { style = tokens.Inverse.Content.Default },
		},
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			text = { tag = "text-body-small" },
		},
		[InputSize.Small] = {
			text = { tag = "text-body-small" },
		},
		[InputSize.Medium] = {
			text = { tag = "text-body-medium" },
		},
		[InputSize.Large] = {
			text = { tag = "text-body-large" },
		},
	}

	local textOverflows: { [TextOverflow]: VariantProps } = {
		[TextOverflow.None] = {
			container = { tag = "auto-xy" },
			text = { tag = "auto-xy" },
		},
		[TextOverflow.Wrap] = {
			container = { tag = "size-full-0 auto-y" },
			text = { tag = "size-full-0 auto-y text-wrap text-align-x-left" },
		},
	}

	return { common = common, variants = variants, sizes = sizes, textOverflows = textOverflows }
end

return function(tokens: Tokens, size: InputSize, variant: LinkVariant, textOverflow: TextOverflow): LinkVariantProps
	local resolved = VariantsContext.useVariants("Link", variantsFactory, tokens)
	return composeStyleVariant(
		resolved.common,
		resolved.variants[variant],
		resolved.sizes[size],
		resolved.textOverflows[textOverflow]
	)
end
