local Foundation = script:FindFirstAncestor("Foundation")

local ChipSize = require(Foundation.Enums.ChipSize)
type ChipSize = ChipSize.ChipSize

local ChipVariant = require(Foundation.Enums.ChipVariant)
type ChipVariant = ChipVariant.ChipVariant

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

local function variantsFactory(tokens: Tokens)
	local textSpacing: { [ChipSize]: UDim } = {
		[ChipSize.Small] = UDim.new(0, tokens.Padding.Small),
		[ChipSize.Medium] = UDim.new(0, tokens.Padding.Medium),
		[ChipSize.Large] = UDim.new(0, tokens.Padding.Large),
	}

	local common = {
		chip = { tag = "row align-x-center align-y-center auto-x radius-circle clip" },
		text = { tag = "shrink size-0-full auto-x text-truncate-end" },
	}

	local sizes: { [ChipSize]: VariantProps } = {
		[ChipSize.Small] = {
			chip = { tag = "size-0-600" },
			text = { tag = "text-label-small" },
		},
		[ChipSize.Medium] = {
			chip = { tag = "size-0-800" },
			text = { tag = "text-label-medium" },
		},
		[ChipSize.Large] = {
			chip = { tag = "size-0-1000" },
			text = { tag = "text-label-medium" },
		},
	}

	local types: { [ChipVariant]: { [boolean]: VariantProps } } = {
		[ChipVariant.Utility] = {
			[true] = {
				chip = { backgroundStyle = tokens.Inverse.Surface.Surface_0 },
				text = { contentStyle = tokens.Inverse.Content.Emphasis },
			},
			[false] = {
				chip = { backgroundStyle = tokens.Color.ActionUtility.Background },
				text = { contentStyle = tokens.Color.ActionUtility.Foreground },
			},
		},
		[ChipVariant.Standard] = {
			[true] = {
				chip = { backgroundStyle = tokens.Inverse.Surface.Surface_0 },
				text = { contentStyle = tokens.Inverse.Content.Emphasis },
			},
			[false] = {
				chip = { backgroundStyle = tokens.Color.ActionStandard.Background },
				text = { contentStyle = tokens.Color.ActionStandard.Foreground },
			},
		},
	}

	return {
		common = common,
		sizes = sizes,
		types = types,
		textSpacing = textSpacing,
	}
end

return function(
	tokens: Tokens,
	size: ChipSize,
	variant: ChipVariant,
	isChecked: boolean,
	hasLeading: boolean,
	hasTrailing: boolean
)
	local props = VariantsContext.useVariants("Chip", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.sizes[size], props.types[variant][isChecked], {
		text = {
			padding = {
				left = if hasLeading then nil else props.textSpacing[size],
				right = if hasTrailing then nil else props.textSpacing[size],
			},
		},
	})
end
