local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type SegmentedControlVariantProps = {
	container: { tag: string },
	segment: { tag: string },
	text: { tag: string },
	divider: { Size: UDim2?, tag: string? },
}

local function variantsFactory(tokens: Tokens)
	local common = {
		container = { tag = "auto-xy align-y-center row bg-surface-300" },
		segment = { tag = "auto-xy row size-0-full align-y-center" },
		text = { tag = "auto-x text-truncate-end content-emphasis" },
		divider = { tag = "row" },
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			container = { tag = "size-600 padding-xsmall radius-small" },
			segment = { tag = "padding-small radius-small" },
			text = { tag = "text-caption-small" },
			divider = { Size = UDim2.new(0, tokens.Stroke.Standard, 1, 0) },
		},
		[InputSize.Small] = {
			container = { tag = "size-800 padding-xsmall radius-medium" },
			segment = { tag = "padding-small radius-small" },
			text = { tag = "text-caption-small" },
			divider = { Size = UDim2.new(0, tokens.Stroke.Standard, 1, 0) },
		},
		[InputSize.Medium] = {
			container = { tag = "size-1000 padding-xsmall radius-medium" },
			segment = { tag = "padding-small radius-small" },
			text = { tag = "text-caption-medium" },
			divider = { Size = UDim2.new(0, tokens.Stroke.Standard, 1, 0) },
		},
		[InputSize.Large] = {
			container = { tag = "size-1200 padding-xsmall radius-medium" },
			segment = { tag = "padding-medium radius-small" },
			text = { tag = "text-caption-medium" },
			divider = { Size = UDim2.new(0, tokens.Stroke.Standard, 1, 0) },
		},
	}

	return { common = common, sizes = sizes }
end

return function(tokens: Tokens, size: InputSize): SegmentedControlVariantProps
	local props = VariantsContext.useVariants("SegmentedControl", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.sizes[size])
end
