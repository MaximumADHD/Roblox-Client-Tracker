local Foundation = script:FindFirstAncestor("Foundation")

local AvatarIconSize = require(Foundation.Enums.AvatarIconSize)
type AvatarIconSize = AvatarIconSize.AvatarIconSize

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local MetadataSize = require(Foundation.Enums.MetadataSize)
type MetadataSize = MetadataSize.MetadataSize

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
type FontStyle = Types.FontStyle

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

export type MetadataAccessoryVariant = {
	iconSize: IconSize,
	avatarSize: AvatarIconSize,
	avatarTag: string,
	style: ColorStyleValue,
}

export type MetadataVariantProps = {
	container: { tag: string },
	item: { tag: string },
	truncatedItem: { tag: string },
	text: { tag: string, fontStyle: FontStyle, openTypeFeatures: string },
	truncatedText: { tag: string },
	wrappedText: { tag: string },
	accessory: MetadataAccessoryVariant,
}

local function variantsFactory(tokens: Tokens)
	local common = {
		container = { tag = "row align-y-center auto-xy" },
		item = { tag = "row align-y-center gap-xsmall auto-xy" },
		truncatedItem = { tag = "row align-y-center shrink gap-xsmall auto-xy" },
		text = { tag = "auto-xy content-default", openTypeFeatures = "zero, ss03" },
		truncatedText = { tag = "shrink auto-xy text-truncate-split content-default" },
		wrappedText = {
			tag = "shrink auto-xy text-wrap text-align-x-left text-align-y-top text-truncate-split content-default",
		},
		accessory = {
			iconSize = IconSize.Small,
			avatarSize = AvatarIconSize.Small,
			avatarTag = "auto-xy padding-right-xxsmall",
			style = tokens.Color.Content.Default,
		},
	}

	local sizes: { [MetadataSize]: VariantProps } = {
		[MetadataSize.Medium] = {
			text = { tag = "text-body-medium", fontStyle = tokens.Typography.BodyMedium },
			truncatedText = { tag = "text-body-medium" },
			wrappedText = { tag = "text-body-medium" },
		},
		[MetadataSize.Small] = {
			text = { tag = "text-body-small", fontStyle = tokens.Typography.BodySmall },
			truncatedText = { tag = "text-body-small" },
			wrappedText = { tag = "text-body-small" },
		},
	}

	local spacing: { [boolean]: VariantProps } = {
		[true] = { container = { tag = "gap-small" } },
		[false] = { container = { tag = "gap-xsmall" } },
	}

	return { common = common, sizes = sizes, spacing = spacing }
end

return function(tokens: Tokens, size: MetadataSize, isSpaced: boolean): MetadataVariantProps
	local variants = VariantsContext.useVariants("Metadata", variantsFactory, tokens)
	return composeStyleVariant(variants.common, variants.sizes[size], variants.spacing[isSpaced])
end
