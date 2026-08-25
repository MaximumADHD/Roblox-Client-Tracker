local Foundation = script:FindFirstAncestor("Foundation")

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local OptionSelectorGroupSize = require(Foundation.Enums.OptionSelectorGroupSize)
type OptionSelectorGroupSize = OptionSelectorGroupSize.OptionSelectorGroupSize

local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

local Orientation = require(Foundation.Enums.Orientation)
type Orientation = Orientation.Orientation

local Flags = require(Foundation.Utility.Flags)

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
type Padding = Types.Padding

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type OptionSelectorGroupItemVariantProps = {
	container: {
		tag: string,
		radius: number,
		padding: Padding?,
		stroke: ColorStyleValue?,
	},
	content: ColorStyleValue,
	supportingContent: ColorStyleValue?,
	itemInner: { tag: string },
	header: { tag: string }?,
	textContainer: { tag: string }?,
	label: {
		tag: string,
	},
	metadata: {
		tag: string,
	},
	description: {
		tag: string,
	},
	icon: {
		size: IconSize,
		-- Builder map pixel extent for leading icon (beta Image path).
		extent: number?,
	},
}

local function legacyVariantsFactory(tokens: Tokens)
	local common = {
		container = {
			tag = "col wrap align-x-left align-y-center gap-xsmall radius-medium",
			radius = tokens.Radius.Medium,
		},
		content = tokens.Color.Content.Default,
		itemInner = if Flags.FoundationOptionSelectorGroupFixes
			then nil :: never
			else {
				tag = "col gap-xsmall size-full-0 auto-y",
			},
		header = {
			tag = "row align-y-center gap-small size-full-0 auto-y",
		},
		label = { tag = "fill auto-xy" },
		metadata = { tag = "shrink auto-xy" },
		description = { tag = "grow auto-xy" },
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			container = { tag = "padding-medium" },
			icon = { size = IconSize.XSmall },
			label = { tag = "text-title-small" },
			metadata = { tag = "text-caption-small" },
			description = { tag = "text-body-small" },
		},
		[InputSize.Small] = {
			container = { tag = "padding-large" },
			icon = { size = IconSize.Small },
			label = { tag = "text-title-small" },
			metadata = { tag = "text-caption-small" },
			description = { tag = "text-body-small" },
		},
		[InputSize.Medium] = {
			container = { tag = "padding-xlarge" },
			icon = { size = IconSize.Medium },
			label = { tag = "text-title-medium" },
			metadata = { tag = "text-caption-medium" },
			description = { tag = "text-body-medium" },
		},
		[InputSize.Large] = {
			container = { tag = "padding-xxlarge" },
			icon = { size = IconSize.Large },
			label = { tag = "text-title-large" },
			metadata = { tag = "text-caption-large" },
			description = { tag = "text-body-large" },
		},
	}

	local layouts: { [string]: VariantProps } = if Flags.FoundationOptionSelectorGroupFixes
		then {
			Inline = {
				container = { tag = "size-full-0 auto-y" },
				itemInner = { tag = "col gap-xsmall size-full-0 auto-y" },
			},
			StackedFill = {
				container = { tag = "fill auto-y" },
				itemInner = { tag = "col gap-xsmall size-full-0 auto-y" },
			},
			StackedFit = {
				container = { tag = "auto-xy" },
				itemInner = { tag = "col gap-xsmall auto-xy" },
				header = { tag = "flex-x-between" },
				textContainer = { tag = "col gap-xsmall auto-xy" },
			},
		}
		else {}

	return { common = common, sizes = sizes, layouts = layouts }
end

local function groupSizeVariantsFactory(tokens: Tokens)
	local contentEmphasis = tokens.Color.Content.Emphasis
	local contentDefault = tokens.Color.Content.Default

	-- Text sizing (size-full-0 / auto-xy) lives on layouts with content color tags on common.
	local common = {
		container = {
			tag = "col align-x-left align-y-center gap-xsmall",
		},
		content = contentEmphasis,
		supportingContent = contentDefault,
		label = {
			tag = "content-emphasis",
		},
		metadata = {
			tag = "content-default",
		},
		description = {
			tag = "content-default",
		},
	}

	local mediumSize: VariantProps = {
		container = {
			tag = "padding-xlarge radius-medium",
			radius = tokens.Radius.Medium,
		},
		icon = { size = IconSize.Medium, extent = tokens.Size.Size_500 },
		label = { tag = "text-title-medium" },
		metadata = { tag = "text-caption-medium" },
		description = { tag = "text-body-medium" },
	}

	local smallSize: VariantProps = {
		container = {
			tag = "padding-large radius-medium",
			radius = tokens.Radius.Medium,
		},
		icon = { size = IconSize.Small, extent = tokens.Size.Size_400 },
		label = { tag = "text-title-small" },
		metadata = { tag = "text-caption-small" },
		description = { tag = "text-body-small" },
	}

	local xSmallSize: VariantProps = {
		container = {
			tag = "padding-medium radius-small",
			radius = tokens.Radius.Small,
		},
		icon = { size = IconSize.XSmall, extent = tokens.Size.Size_300 },
		label = { tag = "text-title-small" },
		metadata = { tag = "text-caption-small" },
		description = { tag = "text-body-small" },
	}

	local sizes: { [OptionSelectorGroupSize]: VariantProps } = {
		[OptionSelectorGroupSize.XSmall] = xSmallSize,
		[OptionSelectorGroupSize.Small] = smallSize,
		[OptionSelectorGroupSize.Medium] = mediumSize,
	}

	local textSizeFull = {
		label = { tag = "size-full-0 auto-y" },
		metadata = { tag = "size-full-0 auto-y" },
		description = { tag = "size-full-0 auto-y" },
	}
	local textSizeFit = {
		label = { tag = "auto-xy" },
		metadata = { tag = "auto-xy" },
		description = { tag = "auto-xy" },
	}

	local layouts: { [string]: VariantProps } = {
		-- Vertical group: icon | text in a row.
		Inline = composeStyleVariant({
			container = { tag = "size-full-0 auto-y" },
			itemInner = { tag = "row align-y-center gap-small size-full-0 auto-y" },
			-- fill (not grow): shrink beside the icon so wrapped text stays inside the item.
			textContainer = { tag = "col fill gap-xsmall size-full-0 auto-y" },
		}, textSizeFull),
		-- Horizontal group: icon above text in a column.
		StackedFill = composeStyleVariant({
			container = { tag = "fill auto-y" },
			itemInner = { tag = "col gap-small size-full-0 auto-y" },
			textContainer = { tag = "col gap-xsmall size-full-0 auto-y" },
		}, textSizeFull),
		StackedFit = composeStyleVariant({
			container = { tag = "auto-xy" },
			itemInner = { tag = "col gap-small auto-xy" },
			textContainer = { tag = "col gap-xsmall auto-xy" },
		}, textSizeFit),
	}

	return {
		common = common,
		sizes = sizes,
		layouts = layouts,
		selection = {
			[false] = {
				container = {
					stroke = tokens.Color.Stroke.Emphasis,
				},
			},
			[true] = {
				container = {
					stroke = tokens.Color.System.Contrast,
				},
			},
		},
	}
end

-- Cache both paths so toggling FoundationOptionSelectorGroupBeta in tests
-- does not require busting VariantsContext (flag is read at compose time).
local function variantsFactory(tokens: Tokens)
	return {
		legacy = legacyVariantsFactory(tokens),
		groupSize = groupSizeVariantsFactory(tokens),
	}
end

return function(
	tokens: Tokens,
	size: InputSize,
	orientation: Orientation,
	fillBehavior: FillBehavior,
	isSelected: boolean?
): OptionSelectorGroupItemVariantProps
	local props = VariantsContext.useVariants("OptionSelectorGroupItem", variantsFactory, tokens)

	if Flags.FoundationOptionSelectorGroupBeta then
		local groupSize = props.groupSize
		local isStackedFit = orientation == Orientation.Vertical and fillBehavior == FillBehavior.Fit
		local layout = if orientation == Orientation.Horizontal
			then groupSize.layouts.Inline
			elseif isStackedFit then groupSize.layouts.StackedFit
			else groupSize.layouts.StackedFill

		return composeStyleVariant(
			groupSize.common,
			-- Beta resolves size to OptionSelectorGroupSize before this call, so it is never `Large`.
			groupSize.sizes[size :: OptionSelectorGroupSize],
			layout,
			groupSize.selection[isSelected == true]
		) :: OptionSelectorGroupItemVariantProps
	end

	local legacy = props.legacy
	if Flags.FoundationOptionSelectorGroupFixes then
		local isStackedFit = orientation == Orientation.Vertical and fillBehavior == FillBehavior.Fit
		local layout = if orientation == Orientation.Horizontal
			then legacy.layouts.Inline
			elseif isStackedFit then legacy.layouts.StackedFit
			else legacy.layouts.StackedFill

		return composeStyleVariant(legacy.common, legacy.sizes[size], layout) :: OptionSelectorGroupItemVariantProps
	end

	return composeStyleVariant(legacy.common, legacy.sizes[size]) :: OptionSelectorGroupItemVariantProps
end
