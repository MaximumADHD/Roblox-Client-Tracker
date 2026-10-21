local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type SizeConstraint = Types.SizeConstraint

local CardDensity = require(Foundation.Enums.CardDensity)

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

local Thumbnail = require(script.Parent.Thumbnail)
type BannerDensity = Thumbnail.BannerDensity

export type UpsellContentVariantProps = {
	container: { tag: string },
	content: { tag: string },
	title: { tag: string },
	description: { tag: string, sizeConstraint: SizeConstraint },
}

local function variantsFactory(tokens: Tokens)
	local descriptionTypography = tokens.Typography.BodySmall

	local function descriptionSizeConstraint(lines: number): SizeConstraint
		return {
			MaxSize = Vector2.new(math.huge, descriptionTypography.FontSize * descriptionTypography.LineHeight * lines),
		}
	end

	local common = {
		container = { tag = "row align-y-center gap-medium size-full-0 auto-y" },
		content = { tag = "col fill auto-y" },
		title = { tag = "size-full-0 auto-y text-title-medium text-wrap text-align-x-left content-emphasis" },
		description = {
			tag = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-emphasis",
		},
	}

	local densities: { [BannerDensity]: VariantProps } = {
		[CardDensity.Compact] = {
			description = { sizeConstraint = descriptionSizeConstraint(1) },
		},
		[CardDensity.Default] = {
			description = { sizeConstraint = descriptionSizeConstraint(2) },
		},
	}

	return {
		common = common,
		densities = densities,
	}
end

return function(tokens: Tokens, density: BannerDensity): UpsellContentVariantProps
	local props = VariantsContext.useVariants("Banner.UpsellContent", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.densities[density])
end
