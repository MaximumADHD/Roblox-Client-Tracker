local Foundation = script:FindFirstAncestor("Foundation")

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

local ColorMode = require(Foundation.Enums.ColorMode)
type ColorMode = ColorMode.ColorMode

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
type Stroke = Types.Stroke
type StateLayer = Types.StateLayer

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local getSharedVariants = require(Foundation.Components.Button.getSharedVariants)

type IconButtonVariantProps = {
	container: {
		tag: string,
		size: UDim2,
		stroke: Stroke?,
		radius: number,
		style: ColorStyleValue,
		padding: UDim,
		stateLayer: StateLayer?,
	},
	content: {
		style: ColorStyleValue,
	},
}

local variantsMap = function(tokens: Tokens)
	local common = {}

	local sharedVariants = getSharedVariants(tokens)

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			container = {
				radius = sharedVariants.sizes[InputSize.XSmall].container.radius,
				size = UDim2.fromOffset(
					sharedVariants.sizes[InputSize.XSmall].container.height,
					sharedVariants.sizes[InputSize.XSmall].container.height
				),
				padding = UDim.new(0, tokens.Size.Size_150),
			},
		},
		[InputSize.Small] = {
			container = {
				radius = sharedVariants.sizes[InputSize.Small].container.radius,
				size = UDim2.fromOffset(
					sharedVariants.sizes[InputSize.Small].container.height,
					sharedVariants.sizes[InputSize.Small].container.height
				),
				padding = UDim.new(0, tokens.Size.Size_200),
			},
		},
		[InputSize.Medium] = {
			container = {
				radius = sharedVariants.sizes[InputSize.Medium].container.radius,
				size = UDim2.fromOffset(
					sharedVariants.sizes[InputSize.Medium].container.height,
					sharedVariants.sizes[InputSize.Medium].container.height
				),
				padding = UDim.new(0, tokens.Size.Size_250),
			},
		},
		[InputSize.Large] = {
			container = {
				radius = sharedVariants.sizes[InputSize.Large].container.radius,
				size = UDim2.fromOffset(
					sharedVariants.sizes[InputSize.Large].container.height,
					sharedVariants.sizes[InputSize.Large].container.height
				),
				padding = UDim.new(0, tokens.Size.Size_300),
			},
		},
	}

	return { common = common, sizes = sizes, types = sharedVariants.types }
end

return function(tokens: Tokens, size: InputSize, variant: ButtonVariant, colorMode: ColorMode?): IconButtonVariantProps
	local variants = VariantsContext.useVariants("IconButton", variantsMap, tokens)
	return composeStyleVariant(
		variants.common,
		variants.sizes[size],
		variants.types[variant][colorMode or ColorMode.Color]
	)
end
