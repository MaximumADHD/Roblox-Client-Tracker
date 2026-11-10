local Foundation = script:FindFirstAncestor("Foundation")

local NumberInputControlsVariant = require(Foundation.Enums.NumberInputControlsVariant)
type NumberInputControlsVariant = NumberInputControlsVariant.NumberInputControlsVariant

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local IconSize = require(Foundation.Enums.IconSize)

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

local function variantsFactory(tokens: Tokens)
	local common = { controls = { tag = "row align-y-center bg-action-standard" } }

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			controls = {
				width = tokens.Size.Size_1200,
				buttonSize = tokens.Size.Size_600,
				iconSize = IconSize.XSmall,
				tag = "radius-small",
				radius = tokens.Radius.Small,
			},
		},
		[InputSize.Small] = {
			controls = {
				width = tokens.Size.Size_1600,
				buttonSize = tokens.Size.Size_800,
				iconSize = IconSize.Small,
				tag = "radius-medium",
				radius = tokens.Radius.Medium,
			},
		},
		[InputSize.Medium] = {
			controls = {
				width = tokens.Size.Size_2000,
				buttonSize = tokens.Size.Size_1000,
				iconSize = IconSize.Medium,
				tag = "radius-medium",
				radius = tokens.Radius.Medium,
			},
		},
		[InputSize.Large] = {
			controls = {
				width = tokens.Size.Size_2400,
				buttonSize = tokens.Size.Size_1200,
				iconSize = IconSize.Large,
				tag = "radius-medium",
				radius = tokens.Radius.Medium,
			},
		},
	}

	return {
		common = common,
		sizes = sizes,
	}
end

return function(tokens: Tokens, size: InputSize)
	local props = VariantsContext.useVariants("NumberInput", variantsFactory, tokens)
	return composeStyleVariant(props.common :: VariantProps, props.sizes[size])
end
