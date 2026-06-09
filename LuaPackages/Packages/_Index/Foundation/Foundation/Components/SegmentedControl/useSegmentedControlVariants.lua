local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local Flags = require(Foundation.Utility.Flags)
local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type SegmentedControlVariantProps = {
	container: { tag: string },
	segment: { tag: string },
	text: { tag: string },
	icon: { size: IconSize, style: ColorStyleValue }?,
	divider: { Size: UDim2?, tag: string? },
}

local function variantsFactory(tokens: Tokens)
	local common = {
		container = { tag = "row align-y-center auto-xy bg-surface-300" },
		segment = { tag = "row align-y-center size-0-full auto-xy" },
		text = { tag = "auto-x text-truncate-end content-emphasis" },
		icon = if Flags.FoundationSegmentedControlIconSupport
			then { style = tokens.Color.Content.Emphasis }
			else nil :: never,
		divider = { tag = "row" },
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			container = {
				tag = if Flags.FoundationSegmentedControlSizePaddingUpdate
					then "size-600 radius-medium"
					else "size-600 padding-xsmall radius-small",
			},
			segment = {
				tag = if Flags.FoundationSegmentedControlSizePaddingUpdate
					then "padding-small radius-medium"
					else "padding-small radius-small",
			},
			text = { tag = "text-caption-small" },
			icon = if Flags.FoundationSegmentedControlIconSupport then { size = IconSize.Small } else nil :: never,
			divider = { Size = UDim2.new(0, tokens.Stroke.Standard, 1, 0) },
		},
		[InputSize.Small] = {
			container = {
				tag = if Flags.FoundationSegmentedControlSizePaddingUpdate
					then "size-800 radius-medium"
					else "size-800 padding-xsmall radius-medium",
			},
			segment = {
				tag = if Flags.FoundationSegmentedControlSizePaddingUpdate
					then "padding-small radius-medium"
					else "padding-small radius-small",
			},
			text = { tag = "text-caption-small" },
			icon = if Flags.FoundationSegmentedControlIconSupport then { size = IconSize.Medium } else nil :: never,
			divider = { Size = UDim2.new(0, tokens.Stroke.Standard, 1, 0) },
		},
		[InputSize.Medium] = {
			container = { tag = "size-1000 padding-xsmall radius-medium" },
			segment = { tag = "padding-small radius-small" },
			text = { tag = "text-caption-medium" },
			icon = if Flags.FoundationSegmentedControlIconSupport then { size = IconSize.Medium } else nil :: never,
			divider = { Size = UDim2.new(0, tokens.Stroke.Standard, 1, 0) },
		},
		[InputSize.Large] = {
			container = { tag = "size-1200 padding-xsmall radius-medium" },
			segment = { tag = "padding-medium radius-small" },
			text = { tag = "text-caption-medium" },
			icon = if Flags.FoundationSegmentedControlIconSupport then { size = IconSize.Large } else nil :: never,
			divider = { Size = UDim2.new(0, tokens.Stroke.Standard, 1, 0) },
		},
	}

	return { common = common, sizes = sizes }
end

return function(tokens: Tokens, size: InputSize): SegmentedControlVariantProps
	local props = VariantsContext.useVariants("SegmentedControl", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.sizes[size])
end
