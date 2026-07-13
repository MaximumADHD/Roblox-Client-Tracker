local Foundation = script:FindFirstAncestor("Foundation")

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local ChipSize = require(Foundation.Enums.ChipSize)
type ChipSize = ChipSize.ChipSize

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type RatingSizeVariantProps = {
	thumbSegment: { tag: string },
	dividerContainer: { tag: string },
	thumbUpIcon: { tag: string },
	thumbDownIcon: { tag: string },
	text: { tag: string },
	iconSize: IconSize,
}

type RatingVariantProps = {
	container: { tag: string, backgroundStyle: ColorStyleValue },
	thumbUpSegment: { tag: string },
	thumbDownSegment: { tag: string },
	dividerContainer: { tag: string },
	thumbUpIcon: { tag: string },
	thumbDownIcon: { tag: string },
	text: { tag: string, contentStyle: ColorStyleValue },
	iconSize: IconSize,
}

local function variantsFactory(tokens: Tokens)
	local common: VariantProps = {
		container = {
			tag = "row align-y-center auto-xy radius-circle clip",
			backgroundStyle = tokens.Color.ActionStandard.Background,
		},
		thumbUpSegment = {
			tag = "row align-x-center align-y-center shrink-1 auto-x radius-circle",
		},
		thumbDownSegment = {
			tag = "row align-x-center align-y-center auto-x radius-circle",
		},
		text = {
			contentStyle = tokens.Color.ActionStandard.Foreground,
		},
	}

	local sizes: { [ChipSize]: RatingSizeVariantProps } = {
		[ChipSize.Small] = {
			thumbSegment = { tag = "size-0-600" },
			dividerContainer = { tag = "align-y-center size-0-600 auto-x padding-y-xsmall" },
			thumbUpIcon = { tag = "auto-xy padding-left-small padding-right-xsmall" },
			thumbDownIcon = { tag = "auto-xy padding-left-small padding-right-medium" },
			text = { tag = "shrink size-0-full auto-x text-label-small text-truncate-end padding-right-small" },
			iconSize = IconSize.XSmall,
		},
		[ChipSize.Medium] = {
			thumbSegment = { tag = "size-0-800" },
			dividerContainer = { tag = "align-y-center size-0-800 auto-x padding-y-small" },
			thumbUpIcon = { tag = "auto-xy padding-left-medium padding-right-xsmall" },
			thumbDownIcon = { tag = "auto-xy padding-left-medium padding-right-medium" },
			text = { tag = "shrink size-0-full auto-x text-label-medium text-truncate-end padding-right-medium" },
			iconSize = IconSize.Small,
		},
		[ChipSize.Large] = {
			thumbSegment = { tag = "size-0-1000" },
			dividerContainer = { tag = "align-y-center size-0-1000 auto-x padding-y-small" },
			thumbUpIcon = { tag = "auto-xy padding-left-medium padding-right-small" },
			thumbDownIcon = { tag = "auto-xy padding-left-medium padding-right-medium" },
			text = { tag = "shrink size-0-full auto-x text-label-medium text-truncate-end padding-right-large" },
			iconSize = IconSize.Medium,
		},
	}

	return {
		common = common,
		sizes = sizes,
	}
end

return function(tokens: Tokens, size: ChipSize): RatingVariantProps
	local props = VariantsContext.useVariants("Rating", variantsFactory, tokens)

	local sizeProps = props.sizes[size]

	local merged = composeStyleVariant(props.common, {
		thumbUpSegment = sizeProps.thumbSegment,
		thumbDownSegment = sizeProps.thumbSegment,
		text = sizeProps.text,
	})

	return {
		container = merged.container,
		thumbUpSegment = merged.thumbUpSegment,
		thumbDownSegment = merged.thumbDownSegment,
		dividerContainer = sizeProps.dividerContainer,
		thumbUpIcon = sizeProps.thumbUpIcon,
		thumbDownIcon = sizeProps.thumbDownIcon,
		text = {
			tag = (merged.text).tag,
			contentStyle = (merged.text).contentStyle,
		},
		iconSize = sizeProps.iconSize,
	}
end
