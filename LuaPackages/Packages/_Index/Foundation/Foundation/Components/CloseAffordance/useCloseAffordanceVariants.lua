local Foundation = script:FindFirstAncestor("Foundation")

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
type Stroke = Types.Stroke

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local CloseAffordanceVariant = require(Foundation.Enums.CloseAffordanceVariant)
type CloseAffordanceVariant = CloseAffordanceVariant.CloseAffordanceVariant

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local getSharedVariants = require(Foundation.Components.Button.getSharedVariants)

type CloseAffordanceVariantProps = {
	container: {
		tag: string,
		size: UDim2,
		stroke: Stroke?,
		radius: number,
		padding: UDim,
	},
	content: {
		style: ColorStyleValue,
		iconSize: IconSize,
	},
}

local variants = function(tokens: Tokens)
	local common = {
		container = {
			tag = "auto-xy row align-y-center align-x-center clip",
			radius = tokens.Radius.Medium,
			stroke = {
				Color = tokens.Color.ActionLink.Border.Color3,
				Transparency = tokens.Color.ActionLink.Border.Transparency,
			},
		},
		content = { style = tokens.Color.Content.Emphasis },
	}

	local sharedVariants = getSharedVariants(tokens)

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			container = {
				size = UDim2.fromOffset(
					sharedVariants.sizes[InputSize.XSmall].container.height,
					sharedVariants.sizes[InputSize.XSmall].container.height
				),
				padding = UDim.new(0, tokens.Size.Size_100),
			},
			content = {
				iconSize = IconSize.Small,
			},
		},
		[InputSize.Small] = {
			container = {
				size = UDim2.fromOffset(
					sharedVariants.sizes[InputSize.Small].container.height,
					sharedVariants.sizes[InputSize.Small].container.height
				),
				padding = UDim.new(0, tokens.Size.Size_150),
			},
			content = {
				iconSize = IconSize.Medium,
			},
		},
		[InputSize.Medium] = {
			container = {
				size = UDim2.fromOffset(
					sharedVariants.sizes[InputSize.Medium].container.height,
					sharedVariants.sizes[InputSize.Medium].container.height
				),
				padding = UDim.new(0, tokens.Size.Size_200),
			},
			content = {
				iconSize = IconSize.Large,
			},
		},
	}

	local types: { [CloseAffordanceVariant]: VariantProps } = {
		[CloseAffordanceVariant.OverMedia] = {
			container = {
				tag = "bg-over-media-100",
			},
		},
	}

	return { common = common, sizes = sizes, types = types }
end

return function(tokens: Tokens, size: InputSize, variant: CloseAffordanceVariant): CloseAffordanceVariantProps
	local variants = VariantsContext.useVariants("CloseAffordance", variants, tokens)
	return composeStyleVariant(variants.common, variants.sizes[size], variants.types[variant])
end
