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
		container = {
			tag = if Flags.FoundationSegmentedControlAutoXFix
				then "row align-y-center auto-x bg-surface-300"
				else "row align-y-center auto-xy bg-surface-300",
		},
		segment = {
			tag = if Flags.FoundationSegmentedControlAutoXFix
				then "row align-y-center size-0-full auto-x"
				else "row align-y-center size-0-full auto-xy",
		},
		text = { tag = "auto-x text-truncate-end content-emphasis" },
		icon = { style = tokens.Color.Content.Emphasis },
		divider = { tag = "row" },
	}

	-- Radius is pulled out of `sizes` into separate overlays so the circular
	-- variant can swap in `radius-circle` without duplicating per-size
	-- declarations.
	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			container = { tag = "size-600" },
			segment = { tag = "padding-small" },
			text = { tag = "text-caption-small" },
			icon = { size = IconSize.Small },
			divider = { Size = UDim2.new(0, tokens.Stroke.Standard, 1, 0) },
		},
		[InputSize.Small] = {
			container = { tag = "size-800" },
			segment = { tag = "padding-small" },
			text = { tag = "text-caption-small" },
			icon = { size = IconSize.Medium },
			divider = { Size = UDim2.new(0, tokens.Stroke.Standard, 1, 0) },
		},
		[InputSize.Medium] = {
			container = { tag = "size-1000 padding-xsmall" },
			segment = { tag = "padding-small" },
			text = { tag = "text-caption-medium" },
			icon = { size = IconSize.Medium },
			divider = { Size = UDim2.new(0, tokens.Stroke.Standard, 1, 0) },
		},
		[InputSize.Large] = {
			container = { tag = "size-1200 padding-xsmall" },
			segment = { tag = "padding-medium" },
			text = { tag = "text-caption-medium" },
			icon = { size = IconSize.Large },
			divider = { Size = UDim2.new(0, tokens.Stroke.Standard, 1, 0) },
		},
	}

	local defaultRadius: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			container = { tag = "radius-medium" },
			segment = { tag = "radius-medium" },
		},
		[InputSize.Small] = {
			container = { tag = "radius-medium" },
			segment = { tag = "radius-medium" },
		},
		[InputSize.Medium] = {
			container = { tag = "radius-medium" },
			segment = { tag = "radius-small" },
		},
		[InputSize.Large] = {
			container = { tag = "radius-medium" },
			segment = { tag = "radius-small" },
		},
	}

	local circularRadius: VariantProps = {
		container = { tag = "radius-circle" },
		segment = { tag = "radius-circle" },
	}

	return {
		common = common,
		sizes = sizes,
		defaultRadius = defaultRadius,
		circularRadius = circularRadius,
	}
end

return function(tokens: Tokens, size: InputSize, isCircular: boolean?): SegmentedControlVariantProps
	local props = VariantsContext.useVariants("SegmentedControl", variantsFactory, tokens)
	return composeStyleVariant(
		props.common,
		props.sizes[size],
		if isCircular then props.circularRadius else props.defaultRadius[size]
	)
end
