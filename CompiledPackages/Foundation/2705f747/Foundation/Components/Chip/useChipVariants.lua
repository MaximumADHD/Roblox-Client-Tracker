local Foundation = script:FindFirstAncestor("Foundation")

local Flags = require(Foundation.Utility.Flags)

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
		chip = { tag = "row auto-x align-y-center align-x-center clip radius-circle" },
		text = { tag = "auto-x size-0-full shrink text-truncate-end" },
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

	local types: { [ChipVariant]: { [boolean]: VariantProps } } = if Flags.FoundationAddUtilityVariantToChip
		then {
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
		else nil :: any

	local isChecked: { [boolean]: VariantProps } = if Flags.FoundationAddUtilityVariantToChip
		then nil :: any
		else {
			[true] = {
				chip = { backgroundStyle = tokens.Inverse.Surface.Surface_0 },
				text = { contentStyle = tokens.Inverse.Content.Emphasis },
			},
			[false] = {
				chip = { backgroundStyle = tokens.Color.ActionStandard.Background },
				text = { contentStyle = tokens.Color.ActionStandard.Foreground },
			},
		}

	return {
		common = common,
		sizes = sizes,
		types = types,
		isChecked = isChecked,
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
	return composeStyleVariant(
		props.common,
		props.sizes[size],
		if Flags.FoundationAddUtilityVariantToChip then props.types[variant][isChecked] else nil :: any,
		{
			text = {
				padding = {
					left = if hasLeading then nil else props.textSpacing[size],
					right = if hasTrailing then nil else props.textSpacing[size],
				},
			},
		},
		if Flags.FoundationAddUtilityVariantToChip then nil :: any else props.isChecked[isChecked]
	)
end
