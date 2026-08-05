local Foundation = script:FindFirstAncestor("Foundation")

local IconSize = require(Foundation.Enums.IconSize)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

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

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type OptionSelectorGroupItemVariantProps = {
	container: {
		tag: string,
		height: number,
		radius: number,
	},
	content: ColorStyleValue,
	itemInner: { tag: string },
	header: { tag: string },
	textContainer: { tag: string }?,
	label: { tag: string },
	metadata: { tag: string },
	description: { tag: string },
	icon: { size: InputSize },
}

local function variantsFactory(tokens: Tokens)
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

return function(
	tokens: Tokens,
	size: InputSize,
	orientation: Orientation,
	fillBehavior: FillBehavior
): OptionSelectorGroupItemVariantProps
	local props = VariantsContext.useVariants("OptionSelectorGroupItem", variantsFactory, tokens)

	if Flags.FoundationOptionSelectorGroupFixes then
		local isStackedFit = orientation == Orientation.Vertical and fillBehavior == FillBehavior.Fit
		local layout = if orientation == Orientation.Horizontal
			then props.layouts.Inline
			elseif isStackedFit then props.layouts.StackedFit
			else props.layouts.StackedFill

		return composeStyleVariant(props.common, props.sizes[size], layout)
	end

	return composeStyleVariant(props.common, props.sizes[size])
end
