local Foundation = script:FindFirstAncestor("Foundation")

local BannerContextPresentation = require(Foundation.Enums.BannerContextPresentation)
local BannerContextVariant = require(Foundation.Enums.BannerContextVariant)
local IconSize = require(Foundation.Enums.IconSize)
local InputSize = require(Foundation.Enums.InputSize)
local InternalNotice = require(Foundation.Components.InternalNotice)
local Types = require(Foundation.Components.Types)

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type BannerContextPresentation = BannerContextPresentation.BannerContextPresentation
type BannerContextVariant = BannerContextVariant.BannerContextVariant
type InternalNoticeVariantProps = InternalNotice.InternalNoticeVariantProps
type Tokens = Tokens.Tokens

-- Centers the first text line in InternalNotice's Size_600 icon/close slot. A single line renders
-- at FontSize, so LineHeight is not part of the offset.
local function firstLineTextPadding(tokens: Tokens, fontSize: number): Types.Padding
	return { top = UDim.new(0, math.round((tokens.Size.Size_600 - fontSize) / 2)) }
end

local function affixedContentPadding(tokens: Tokens, verticalPadding: number): Types.Padding
	return {
		top = UDim.new(0, verticalPadding),
		right = UDim.new(0, tokens.Margin.Medium),
		bottom = UDim.new(0, verticalPadding),
		left = UDim.new(0, tokens.Margin.Medium),
	}
end

local function variantsFactory(tokens: Tokens)
	local inlineTextPadding = firstLineTextPadding(tokens, tokens.Typography.BodySmall.FontSize)
	local affixedTextPadding = firstLineTextPadding(tokens, tokens.Typography.BodyMedium.FontSize)

	local common = {
		content = {
			gap = "gap-large",
		},
		stack = {
			gap = "gap-xxsmall",
		},
		icon = {
			style = tokens.Color.Content.Emphasis,
		},
		message = {
			tag = "content-emphasis",
		},
		link = {
			tag = "content-emphasis",
		},
	}

	local presentations: { [BannerContextPresentation]: VariantProps } = {
		[BannerContextPresentation.Inline] = {
			container = { tag = "radius-medium" },
			content = { tag = "padding-medium" },
			leading = { gap = "gap-small" },
			icon = { size = IconSize.Small },
			message = {
				tag = "text-body-small",
				padding = inlineTextPadding,
			},
			link = {
				tag = "text-body-small",
				padding = inlineTextPadding,
				size = InputSize.Small,
			},
		},
		[BannerContextPresentation.Affixed] = {
			leading = { gap = "gap-medium" },
			icon = { size = IconSize.Medium },
			message = {
				tag = "text-body-medium",
				padding = affixedTextPadding,
			},
			link = {
				tag = "text-body-medium",
				padding = affixedTextPadding,
				size = InputSize.Medium,
			},
		},
	}

	local variants: { [BannerContextVariant]: VariantProps } = {
		[BannerContextVariant.Standard] = {},
		[BannerContextVariant.Emphasis] = {
			container = { tag = "bg-shift-200" },
		},
	}

	local presentationVariants: { [BannerContextPresentation]: { [BannerContextVariant]: VariantProps } } = {
		[BannerContextPresentation.Inline] = {
			[BannerContextVariant.Standard] = {
				container = { tag = "stroke-standard stroke-default" },
			},
			[BannerContextVariant.Emphasis] = {},
		},
		[BannerContextPresentation.Affixed] = {
			[BannerContextVariant.Standard] = {
				content = {
					padding = affixedContentPadding(tokens, tokens.Padding.Large - tokens.Stroke.Standard),
				},
				border = {
					Size = UDim2.new(1, 0, 0, tokens.Stroke.Standard),
					backgroundStyle = tokens.Color.Stroke.Default,
				},
			},
			[BannerContextVariant.Emphasis] = {
				content = {
					padding = affixedContentPadding(tokens, tokens.Padding.Large),
				},
			},
		},
	}

	return {
		common = common,
		presentations = presentations,
		variants = variants,
		presentationVariants = presentationVariants,
	}
end

local function useBannerContextVariants(
	tokens: Tokens,
	presentation: BannerContextPresentation,
	variant: BannerContextVariant
): InternalNoticeVariantProps
	local props = VariantsContext.useVariants("BannerContext", variantsFactory, tokens)
	return composeStyleVariant(
		props.common,
		props.presentations[presentation],
		props.variants[variant],
		props.presentationVariants[presentation][variant]
	)
end

return useBannerContextVariants
