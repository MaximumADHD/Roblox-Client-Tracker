local Foundation = script:FindFirstAncestor("Foundation")

local CardDensity = require(Foundation.Enums.CardDensity)
local CardHeaderSize = require(Foundation.Enums.CardHeaderSize)
local CardHeight = require(Foundation.Enums.CardHeight)
local CardVariant = require(Foundation.Enums.CardVariant)
local IconSize = require(Foundation.Enums.IconSize)

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type CardDensity = CardDensity.CardDensity
type CardHeaderSize = CardHeaderSize.CardHeaderSize
type CardHeight = CardHeight.CardHeight
type CardVariant = CardVariant.CardVariant
type IconSize = IconSize.IconSize
type Tokens = Tokens.Tokens

export type CardVariantProps = {
	container: { tag: string },
	body: { tag: string },
	content: { tag: string },
	children: { tag: string },
	header: { tag: string },
	headerText: { tag: string },
	eyebrow: { tag: string },
	titleRow: { tag: string, gap: number? },
	title: { tag: string },
	description: { tag: string, lineHeight: number },
	actions: { tag: string },
	media: { tag: string },
	icon: { size: IconSize },
}

local function variantsFactory(tokens: Tokens)
	local common = {
		container = { tag = "clip" },
		content = { tag = "col auto-y" },
		children = { tag = "col gap-large size-full-0 auto-y" },
		header = { tag = "row gap-small size-full-0 auto-y" },
		headerText = { tag = "col fill auto-y" },
		eyebrow = { tag = "size-full-0 auto-y text-wrap text-align-x-left content-default" },
		titleRow = { tag = "row align-y-center size-full-0 auto-y padding-y-xxsmall" },
		title = { tag = "shrink auto-xy text-wrap text-align-x-left content-emphasis" },
		description = { tag = "size-full-0 auto-y padding-bottom-xxsmall text-wrap text-align-x-left content-default" },
		actions = { tag = "row gap-small auto-xy" },
	}

	local densities: { [CardDensity]: VariantProps } = {
		[CardDensity.Compact] = {
			container = { tag = "radius-medium" },
			content = { tag = "padding-medium" },
			actionsPadding = { tag = "padding-medium" },
			mediaEnd = { tag = "radius-right-medium" },
			mediaBottom = { tag = "radius-bottom-medium" },
		},
		[CardDensity.Default] = {
			container = { tag = "radius-large" },
			content = { tag = "padding-large" },
			actionsPadding = { tag = "padding-large" },
			mediaEnd = { tag = "radius-right-large" },
			mediaBottom = { tag = "radius-bottom-large" },
		},
		[CardDensity.Comfortable] = {
			container = { tag = "radius-large" },
			content = { tag = "padding-xlarge" },
			actionsPadding = { tag = "padding-xlarge" },
			mediaEnd = { tag = "radius-right-large" },
			mediaBottom = { tag = "radius-bottom-large" },
		},
	}

	local bodySmallLineHeight = tokens.Typography.BodySmall.FontSize * tokens.Typography.BodySmall.LineHeight
	local bodyMediumLineHeight = tokens.Typography.BodyMedium.FontSize * tokens.Typography.BodyMedium.LineHeight

	local headerSizes: { [CardHeaderSize]: VariantProps } = {
		[CardHeaderSize.XXSmall] = {
			content = { tag = "gap-medium" },
			eyebrow = { tag = "text-body-small" },
			description = { tag = "text-body-small", lineHeight = bodySmallLineHeight },
			title = { tag = "text-title-medium" },
			titleRow = { tag = "gap-xsmall" },
			icon = { size = IconSize.Medium },
		},
		[CardHeaderSize.XSmall] = {
			content = { tag = "gap-medium" },
			eyebrow = { tag = "text-body-small" },
			description = { tag = "text-body-small", lineHeight = bodySmallLineHeight },
			title = { tag = "text-title-large" },
			titleRow = { tag = "gap-xsmall" },
			icon = { size = IconSize.Medium },
		},
		[CardHeaderSize.Small] = {
			content = { tag = "gap-medium" },
			eyebrow = { tag = "text-body-medium" },
			description = { tag = "text-body-medium", lineHeight = bodyMediumLineHeight },
			title = { tag = "text-heading-small" },
			titleRow = { gap = tokens.Size.Size_150 },
			icon = { size = IconSize.Large },
		},
		[CardHeaderSize.Medium] = {
			content = { tag = "gap-large" },
			eyebrow = { tag = "text-body-medium" },
			description = { tag = "text-body-medium", lineHeight = bodyMediumLineHeight },
			title = { tag = "text-heading-medium" },
			titleRow = { tag = "gap-small" },
			icon = { size = IconSize.Large },
		},
		[CardHeaderSize.Large] = {
			content = { tag = "gap-large" },
			eyebrow = { tag = "text-body-medium" },
			description = { tag = "text-body-medium", lineHeight = bodyMediumLineHeight },
			title = { tag = "text-heading-large" },
			titleRow = { tag = "gap-small" },
			icon = { size = IconSize.Large },
		},
	}

	local variants: { [CardVariant]: VariantProps } = {
		[CardVariant.Standard] = {
			container = { tag = "stroke-standard stroke-default" },
		},
		[CardVariant.Emphasis] = {
			container = { tag = "bg-shift-200" },
		},
	}

	local heights: { [CardHeight]: VariantProps } = {
		[CardHeight.Fit] = {
			container = { tag = "size-full-0 auto-y" },
			body = { tag = "size-full-0 auto-y" },
		},
		[CardHeight.Fill] = {
			container = { tag = "fill self-stretch size-full-0" },
			body = { tag = "size-full" },
		},
	}

	local endMedia: { [boolean]: VariantProps } = {
		[true] = {
			body = { tag = "row" },
			content = { tag = "fill" },
		},
		[false] = {
			body = { tag = "col" },
			content = { tag = "size-full-0" },
		},
	}

	-- A single-line header has nothing for the actions to align to but that line.
	local singleLine: { [boolean]: VariantProps } = {
		[true] = {
			header = { tag = "align-y-center" },
		},
		[false] = {
			header = { tag = "align-y-top" },
		},
	}

	return {
		common = common,
		densities = densities,
		headerSizes = headerSizes,
		variants = variants,
		heights = heights,
		endMedia = endMedia,
		singleLine = singleLine,
	}
end

local function useCardVariants(
	tokens: Tokens,
	variant: CardVariant,
	density: CardDensity,
	headerSize: CardHeaderSize,
	height: CardHeight,
	hasEndMedia: boolean,
	isSingleLine: boolean,
	actionsAreInline: boolean
): CardVariantProps
	local props = VariantsContext.useVariants("Card", variantsFactory, tokens)
	local densityProps = props.densities[density]
	local composed = composeStyleVariant(
		props.common,
		densityProps,
		props.headerSizes[headerSize],
		props.variants[variant],
		props.heights[height],
		props.endMedia[hasEndMedia],
		props.singleLine[isSingleLine]
	)

	if not actionsAreInline then
		composed = composeStyleVariant(composed, {
			actions = densityProps.actionsPadding,
		})
	end

	composed.media = if hasEndMedia then densityProps.mediaEnd else densityProps.mediaBottom

	return composed :: CardVariantProps
end

return useCardVariants
