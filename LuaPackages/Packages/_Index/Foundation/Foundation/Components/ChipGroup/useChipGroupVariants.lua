local Foundation = script:FindFirstAncestor("Foundation")

local ChipSize = require(Foundation.Enums.ChipSize)

local ChipGroupVariant = require(Foundation.Enums.ChipGroupVariant)
type ChipGroupVariant = ChipGroupVariant.ChipGroupVariant

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type ChipGroupSize = typeof(ChipSize.Small) | typeof(ChipSize.Medium)

type ChipGroupVariantConfig = {
	isWrapped: boolean,
	hasScrim: boolean,
}

export type ChipGroupVariants = {
	isWrapped: boolean,
	hasScrim: boolean,
	scrimWidth: number,
	gap: number,
}

local function variantsFactory(tokens: Tokens)
	local scrimWidth: { [ChipGroupSize]: number } = {
		[ChipSize.Small] = tokens.Size.Size_600,
		[ChipSize.Medium] = tokens.Size.Size_800,
	}

	local gap: { [ChipGroupSize]: number } = {
		[ChipSize.Small] = tokens.Padding.XSmall,
		[ChipSize.Medium] = tokens.Padding.Small,
	}

	local variants: { [ChipGroupVariant]: ChipGroupVariantConfig } = {
		[ChipGroupVariant.Row] = {
			isWrapped = false,
			hasScrim = true,
		},
		[ChipGroupVariant.Wrap] = {
			isWrapped = true,
			hasScrim = false,
		},
	}

	return {
		scrimWidth = scrimWidth,
		gap = gap,
		variants = variants,
	}
end

return function(tokens: Tokens, variant: ChipGroupVariant, size: ChipGroupSize): ChipGroupVariants
	local props = VariantsContext.useVariants("ChipGroup", variantsFactory, tokens)
	local config = props.variants[variant]
	return {
		isWrapped = config.isWrapped,
		hasScrim = config.hasScrim,
		scrimWidth = props.scrimWidth[size],
		gap = props.gap[size],
	}
end
