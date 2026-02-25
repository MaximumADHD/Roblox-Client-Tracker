local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local DividerVariant = require(Foundation.Enums.DividerVariant)
type DividerVariant = DividerVariant.DividerVariant

local Orientation = require(Foundation.Enums.Orientation)
type Orientation = Orientation.Orientation

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type DividerVariantProps = {
	container: { tag: string },
	stroke: { Size: UDim2, backgroundStyle: ColorStyleValue },
	line: { tag: string, position: UDim2, backgroundStyle: ColorStyleValue },
}

local function variantsFactory(tokens: Tokens)
	local common = {
		container = {
			tag = "col",
		},
		stroke = {
			backgroundStyle = tokens.Color.Stroke.Default,
		},
		line = {
			tag = "size-full-200",
			position = UDim2.fromOffset(0, tokens.Size.Size_50),
			backgroundStyle = tokens.Color.Common.HeavyDivider,
		},
	}

	local orientation: { [Orientation]: VariantProps } = {
		[Orientation.Horizontal] = {
			container = {
				tag = "size-full-0 auto-y",
			},
			stroke = {
				Size = UDim2.new(1, 0, 0, tokens.Stroke.Standard),
			},
		},
		[Orientation.Vertical] = {
			container = {
				tag = "size-0-full auto-x",
			},
			stroke = {
				Size = UDim2.new(0, tokens.Stroke.Standard, 1, 0),
			},
		},
	}

	local padding: { [DividerVariant]: VariantProps } = {
		[DividerVariant.Inset] = {
			container = {
				tag = "padding-x-xlarge",
			},
		},
		[DividerVariant.InsetLeft] = {
			container = {
				tag = "padding-left-xlarge",
			},
		},
		[DividerVariant.InsetRight] = {
			container = {
				tag = "padding-right-xlarge",
			},
		},
	}

	return { common = common, padding = padding, orientation = orientation }
end

return function(tokens: Tokens, variant: DividerVariant, orientation: Orientation): DividerVariantProps
	local props = VariantsContext.useVariants("Divider", variantsFactory, tokens)
	return composeStyleVariant(
		props.common,
		if orientation == Orientation.Horizontal then props.padding[variant] else {},
		props.orientation[orientation]
	)
end
