local Foundation = script:FindFirstAncestor("Foundation")

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local AvatarIconSize = require(Foundation.Enums.AvatarIconSize)
type AvatarIconSize = AvatarIconSize.AvatarIconSize

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

export type BreadcrumbVariantProps = {
	container: { tag: string },
	item: { tag: string },
	itemText: { tag: string },
	separator: { tag: string, textTag: string },
	current: { tag: string },
	label: { tag: string },
	accessory: {
		iconSize: IconSize,
		avatarSize: AvatarIconSize,
		tag: string,
		style: ColorStyleValue,
	},
	overflow: { size: InputSize },
}

local function variantsFactory(tokens: Tokens)
	local common = {
		container = {
			tag = "row align-y-center auto-xy padding-y-xsmall",
		},
		item = {
			tag = "row align-y-center gap-small auto-x",
		},
		itemText = {
			tag = "row align-y-center gap-xsmall auto-xy",
		},
		separator = {
			tag = "row align-x-center align-y-center size-600-0 auto-y",
		},
		current = { tag = "content-emphasis" },
		label = { tag = "content-emphasis" },
		accessory = { style = tokens.Color.Content.Emphasis },
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			separator = { textTag = "auto-xy text-body-small content-default" },
			current = { tag = "auto-xy text-title-small" },
			label = { tag = "auto-xy text-body-small" },
			accessory = {
				iconSize = IconSize.XSmall,
				avatarSize = AvatarIconSize.Small,
				tag = "size-400-400 radius-small",
			},
			item = { tag = "size-0-600" },
			overflow = { size = InputSize.XSmall },
		},
		[InputSize.Small] = {
			separator = { textTag = "auto-xy text-body-small content-default" },
			current = { tag = "auto-xy text-title-small" },
			label = { tag = "auto-xy text-body-small" },
			accessory = {
				iconSize = IconSize.XSmall,
				avatarSize = AvatarIconSize.Small,
				tag = "size-400-400 radius-small",
			},
			item = { tag = "size-0-600" },
			overflow = { size = InputSize.XSmall },
		},
		[InputSize.Medium] = {
			separator = { textTag = "auto-xy text-body-medium content-default" },
			current = { tag = "auto-xy text-title-medium" },
			label = { tag = "auto-xy text-body-medium" },
			accessory = {
				iconSize = IconSize.Small,
				avatarSize = AvatarIconSize.Medium,
				tag = "size-500-500 radius-small",
			},
			item = { tag = "size-0-600" },
			overflow = { size = InputSize.XSmall },
		},
		[InputSize.Large] = {
			separator = { textTag = "auto-xy text-body-large content-default" },
			current = { tag = "auto-xy text-title-large" },
			label = { tag = "auto-xy text-body-large" },
			accessory = {
				iconSize = IconSize.Medium,
				avatarSize = AvatarIconSize.Large,
				tag = "size-600-600 radius-medium",
			},
			item = { tag = "size-0-800" },
			overflow = { size = InputSize.Small },
		},
	}

	return { common = common, sizes = sizes }
end

return function(tokens: Tokens, size: InputSize): BreadcrumbVariantProps
	local variants = VariantsContext.useVariants("Breadcrumb", variantsFactory, tokens)
	return composeStyleVariant(variants.common, variants.sizes[size])
end
