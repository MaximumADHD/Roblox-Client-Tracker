local Foundation = script:FindFirstAncestor("Foundation")

local Flags = require(Foundation.Utility.Flags)
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

local ColorMode = require(Foundation.Enums.ColorMode)
type ColorMode = ColorMode.ColorMode

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
type StateLayer = Types.StateLayer
type Stroke = Types.Stroke

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local getSharedVariants = require(script.Parent.getSharedVariants)
type ButtonStroke = getSharedVariants.ButtonStroke

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

type ButtonVariantProps = {
	container: {
		tag: string,
		height: number,
		stroke: ButtonStroke?,
		radius: number,
		style: ColorStyleValue,
		stateLayer: StateLayer?,
	},
	content: {
		style: ColorStyleValue,
	},
	text: {
		tag: Types.Tags,
	},
	icon: {
		size: UDim2,
	},
}

local variantsMap = function(tokens: Tokens)
	local sharedVariants = getSharedVariants(tokens)

	local common = {
		container = {
			tag = "row align-x-center align-y-center clip",
		},
		text = {
			tag = "shrink size-0-full auto-x text-truncate-end",
		},
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			container = {
				tag = "gap-xsmall padding-small",
				radius = sharedVariants.sizes[InputSize.XSmall].container.radius,
				height = sharedVariants.sizes[InputSize.XSmall].container.height,
			},
			icon = {
				size = UDim2.fromOffset(tokens.Size.Size_300, tokens.Size.Size_300),
			},
			text = {
				tag = {
					["text-label-small"] = Flags.FoundationButtonLabelTypography,
					["text-title-small"] = not Flags.FoundationButtonLabelTypography,
				},
			},
		},
		[InputSize.Small] = {
			container = {
				tag = "gap-xsmall padding-small",
				radius = sharedVariants.sizes[InputSize.Small].container.radius,
				height = sharedVariants.sizes[InputSize.Small].container.height,
			},
			icon = {
				size = UDim2.fromOffset(tokens.Size.Size_400, tokens.Size.Size_400),
			},
			text = {
				tag = {
					["text-label-small"] = Flags.FoundationButtonLabelTypography,
					["text-title-small"] = not Flags.FoundationButtonLabelTypography,
				},
			},
		},
		[InputSize.Medium] = {
			container = {
				tag = "gap-small padding-medium",
				radius = sharedVariants.sizes[InputSize.Medium].container.radius,
				height = sharedVariants.sizes[InputSize.Medium].container.height,
			},
			icon = {
				size = UDim2.fromOffset(tokens.Size.Size_500, tokens.Size.Size_500),
			},
			text = {
				tag = {
					["text-label-medium"] = Flags.FoundationButtonLabelTypography,
					["text-title-medium"] = not Flags.FoundationButtonLabelTypography,
				},
			},
		},
		[InputSize.Large] = {
			container = {
				tag = "gap-small padding-medium",
				radius = sharedVariants.sizes[InputSize.Large].container.radius,
				height = sharedVariants.sizes[InputSize.Large].container.height,
			},
			icon = {
				size = UDim2.fromOffset(tokens.Size.Size_600, tokens.Size.Size_600),
			},
			text = {
				tag = {
					["text-label-large"] = Flags.FoundationButtonLabelTypography,
					["text-title-large"] = not Flags.FoundationButtonLabelTypography,
				},
			},
		},
	}

	return { common = common, sizes = sizes, types = sharedVariants.types }
end

return function(tokens: Tokens, size: InputSize, variant: ButtonVariant, colorMode: ColorMode?): ButtonVariantProps
	local variants = VariantsContext.useVariants("Button", variantsMap, tokens)
	return composeStyleVariant(
		variants.common,
		variants.sizes[size],
		variants.types[variant][colorMode or ColorMode.Color]
	)
end
