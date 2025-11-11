local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)

local ColorMode = require(Foundation.Enums.ColorMode)
type ColorMode = ColorMode.ColorMode

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
type StateLayer = Types.StateLayer

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local CloseAffordanceVariant = require(Foundation.Enums.CloseAffordanceVariant)
type CloseAffordanceVariant = CloseAffordanceVariant.CloseAffordanceVariant

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local Constants = require(Foundation.Constants)
local getSharedVariants = require(Foundation.Components.Button.getSharedVariants)

type CloseAffordanceVariantProps = {
	container: {
		tag: string,
		size: UDim2,
		radius: number,
		padding: UDim,
		stateLayer: StateLayer?,
	},
	content: {
		style: ColorStyleValue,
		iconSize: IconSize,
	},
}

local variantsMap = function(tokens: Tokens)
	local common = {
		container = {
			tag = "auto-xy row align-y-center align-x-center clip",
		},
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

	local types: { [CloseAffordanceVariant]: { [ColorMode]: VariantProps } } = {
		[CloseAffordanceVariant.OverMedia] = Dash.map(ColorMode, function(_)
			return {
				container = {
					radius = tokens.Radius.Circle,
					tag = "bg-over-media-100",
				},
				content = { style = tokens.Color.Content.Emphasis },
			}
		end),
		[CloseAffordanceVariant.Utility] = Dash.map(ColorMode, function(colorMode: ColorMode)
			return {
				container = {
					radius = tokens.Radius.Medium,
					stateLayer = {
						mode = Constants.COLOR_MODE_TO_STATE_LAYER_MODE[false][colorMode],
					},
				},
				content = { style = tokens[colorMode].Content.Emphasis },
			}
		end),
	}

	return { common = common, sizes = sizes, types = types }
end

return function(
	tokens: Tokens,
	size: InputSize,
	variant: CloseAffordanceVariant,
	colorMode: ColorMode?
): CloseAffordanceVariantProps
	local variants = VariantsContext.useVariants("CloseAffordance", variantsMap, tokens)
	return composeStyleVariant(
		variants.common,
		variants.sizes[size],
		variants.types[variant][colorMode or ColorMode.Color]
	)
end
