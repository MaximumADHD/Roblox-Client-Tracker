local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
type Padding = Types.Padding
type Stroke = Types.Stroke
type Tags = Types.Tags

local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local SegmentedControlVariant = require(Foundation.Enums.SegmentedControlVariant)
type SegmentedControlVariant = SegmentedControlVariant.SegmentedControlVariant

local Flags = require(Foundation.Utility.Flags)
local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type SegmentedControlVariantProps = {
	container: { tag: Tags, padding: Padding?, stroke: Stroke? },
	segment: { tag: Tags },
	iconSegment: { tag: Tags }?,
	text: { tag: Tags, style: ColorStyleValue? },
	icon: { size: IconSize, style: ColorStyleValue }?,
	divider: { Size: UDim2?, tag: string? },
}

local function strokeFromStyle(style: ColorStyleValue, thickness: number): Stroke
	return {
		Color = style.Color3,
		Transparency = style.Transparency,
		Thickness = thickness,
		BorderStrokePosition = Enum.BorderStrokePosition.Outer,
	}
end

local function variantsFactory_DEPRECATED(tokens: Tokens)
	local common = {
		container = {
			tag = "row align-y-center auto-x bg-surface-300",
		},
		segment = {
			tag = "row align-y-center size-0-full auto-x",
		},
		text = { tag = "auto-x text-truncate-end content-emphasis" },
		icon = { style = tokens.Color.Content.Emphasis },
		divider = { tag = "row" },
	}

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

local function variantsFactory(tokens: Tokens)
	local variantStyles: { [SegmentedControlVariant]: VariantProps } = {
		[SegmentedControlVariant.Filled] = { container = { tag = "bg-shift-200" } },
		[SegmentedControlVariant.Stroke] = {
			container = {
				stroke = strokeFromStyle(tokens.Color.Stroke.Emphasis, tokens.Stroke.Standard),
			},
		},
		[SegmentedControlVariant.Utility] = {},
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			segment = { tag = "padding-x-small" },
			text = { tag = "text-label-small" },
			icon = { size = IconSize.XSmall },
		},
		[InputSize.Small] = {
			segment = { tag = "padding-x-medium" },
			text = { tag = "text-label-small" },
			icon = { size = IconSize.Small },
		},
		[InputSize.Medium] = {
			container = { tag = "padding-xsmall" },
			segment = { tag = "padding-x-medium" },
			text = { tag = "text-label-medium" },
			icon = { size = IconSize.Medium },
		},
		[InputSize.Large] = {
			container = { tag = "padding-xsmall" },
			segment = { tag = "padding-x-large" },
			text = { tag = "text-label-large" },
			icon = { size = IconSize.Large },
		},
	}

	local fitSizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = { container = { tag = "size-0-600 auto-x" } },
		[InputSize.Small] = { container = { tag = "size-0-800 auto-x" } },
		[InputSize.Medium] = { container = { tag = "size-0-1000 auto-x" } },
		[InputSize.Large] = { container = { tag = "size-0-1200 auto-x" } },
	}

	local fillBehaviorStyles: { [FillBehavior]: VariantProps } = {
		[FillBehavior.Fit] = {
			segment = { tag = "size-0-full auto-xy" },
		},
		[FillBehavior.Fill] = {
			segment = { tag = "grow auto-xy" },
		},
	}

	local fillSizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = { container = { tag = "size-full-600" } },
		[InputSize.Small] = { container = { tag = "size-full-800" } },
		[InputSize.Medium] = { container = { tag = "size-full-1000" } },
		[InputSize.Large] = { container = { tag = "size-full-1200" } },
	}

	local utilityPadding: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {},
		[InputSize.Small] = { segment = { tag = "padding-x-medium" } },
		[InputSize.Medium] = { segment = { tag = "padding-x-large" } },
		[InputSize.Large] = { segment = { tag = "padding-x-xlarge" } },
	}

	local activeStyles: { [boolean]: VariantProps } = {
		[true] = {
			text = { style = tokens.Color.Content.Emphasis },
			icon = { style = tokens.Color.Content.Emphasis },
		},
		[false] = {
			text = { style = tokens.Color.Content.Default },
			icon = { style = tokens.Color.Content.Default },
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
		common = {
			container = { tag = "row flex-y-fill align-y-center gap-xxsmall" },
			segment = { tag = "row align-x-center align-y-center" },
			text = { tag = "auto-x text-align-x-center text-truncate-end" },
			icon = {},
		},
		activeStyles = activeStyles,
		variantStyles = variantStyles,
		sizes = sizes,
		fitSizes = fitSizes,
		fillBehaviorStyles = fillBehaviorStyles,
		fillSizes = fillSizes,
		utilityPadding = utilityPadding,
		defaultRadius = defaultRadius,
		circularRadius = circularRadius,
	}
end

return function(
	tokens: Tokens,
	size: InputSize,
	variant: SegmentedControlVariant,
	fillBehavior: FillBehavior,
	isCircular: boolean?,
	isActive: boolean?
): SegmentedControlVariantProps
	if Flags.FoundationSegmentedControlBeta then
		local props = VariantsContext.useVariants("SegmentedControl", variantsFactory, tokens)

		return composeStyleVariant(
			props.common,
			props.sizes[size],
			if variant == SegmentedControlVariant.Utility then props.utilityPadding[size] else {},
			if fillBehavior == FillBehavior.Fill then props.fillSizes[size] else props.fitSizes[size],
			props.fillBehaviorStyles[fillBehavior],
			props.activeStyles[isActive == true],
			props.variantStyles[variant],
			if isCircular then props.circularRadius else props.defaultRadius[size]
		)
	else
		local props = VariantsContext.useVariants("SegmentedControl", variantsFactory_DEPRECATED, tokens)

		return composeStyleVariant(
			props.common,
			props.sizes[size],
			if isCircular then props.circularRadius else props.defaultRadius[size]
		)
	end
end
