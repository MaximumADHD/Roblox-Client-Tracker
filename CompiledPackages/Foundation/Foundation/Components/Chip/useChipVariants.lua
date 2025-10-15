local Foundation = script:FindFirstAncestor("Foundation")

local ChipSize = require(Foundation.Enums.ChipSize)
type ChipSize = ChipSize.ChipSize

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

	local isChecked: { [boolean]: VariantProps } = {
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
		isChecked = isChecked,
		textSpacing = textSpacing,
	}
end

return function(tokens: Tokens, size: ChipSize, isChecked: boolean, hasLeading: boolean, hasTrailing: boolean)
	local props = VariantsContext.useVariants("Chip", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.sizes[size], {
		text = {
			padding = {
				left = if hasLeading then nil else props.textSpacing[size],
				right = if hasTrailing then nil else props.textSpacing[size],
			},
		},
	}, props.isChecked[isChecked])
end
