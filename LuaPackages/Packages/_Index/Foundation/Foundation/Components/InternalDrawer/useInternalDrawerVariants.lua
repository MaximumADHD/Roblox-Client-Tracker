local Foundation = script:FindFirstAncestor("Foundation")

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local InternalDrawerLayout = require(Foundation.Enums.InternalDrawerLayout)
local InternalDrawerSide = require(Foundation.Enums.InternalDrawerSide)
local Tokens = require(Foundation.Providers.Style.Tokens)
local Types = require(Foundation.Components.Types)
local VariantsContext = require(Foundation.Providers.Style.VariantsContext)
local useTokens = require(Foundation.Providers.Style.useTokens)

type InternalDrawerLayout = InternalDrawerLayout.InternalDrawerLayout
type InternalDrawerSide = InternalDrawerSide.InternalDrawerSide
type ColorStyleValue = Types.ColorStyleValue
type Tokens = Tokens.Tokens

export type InternalDrawerVariantProps = {
	surface: {
		tag: string,
		anchorScaleX: number,
		openOffsetSign: number,
		hiddenOffsetSign: number,
		margin: number,
	},
	innerEdge: {
		tag: string,
		isVisible: boolean,
		thickness: number,
		backgroundStyle: ColorStyleValue,
	},
	shadow: {
		tag: string,
	},
}

local function variantsFactory(tokens: Tokens)
	local common = {
		innerEdge = {
			backgroundStyle = tokens.Color.Stroke.Default,
			thickness = tokens.Stroke.Standard,
		},
		shadow = {
			tag = "shadow-overlay-300",
		},
	}

	local layout: { [InternalDrawerLayout]: VariantProps } = {
		[InternalDrawerLayout.FullBleed] = {
			surface = {
				margin = 0,
			},
			innerEdge = {
				isVisible = true,
			},
		},
		[InternalDrawerLayout.Inset] = {
			surface = {
				tag = "stroke-standard stroke-default radius-large",
				margin = tokens.Padding.Medium,
			},
			innerEdge = {
				isVisible = false,
			},
			shadow = {
				tag = "radius-large",
			},
		},
	}

	local side: { [InternalDrawerSide]: VariantProps } = {
		[InternalDrawerSide.Start] = {
			surface = {
				tag = "anchor-top-left",
				anchorScaleX = 0,
				openOffsetSign = 1,
				hiddenOffsetSign = -1,
			},
			innerEdge = {
				tag = "position-top-right anchor-top-right",
			},
			shadow = {
				tag = "anchor-top-left",
			},
		},
		[InternalDrawerSide.End] = {
			surface = {
				tag = "anchor-top-left",
				anchorScaleX = 1,
				openOffsetSign = -1,
				hiddenOffsetSign = 1,
			},
			innerEdge = {
				tag = "position-top-left anchor-top-left",
			},
			shadow = {
				tag = "anchor-top-left",
			},
		},
	}

	return {
		common = common,
		layout = layout,
		side = side,
	}
end

local function useInternalDrawerVariants(
	layout: InternalDrawerLayout,
	side: InternalDrawerSide
): InternalDrawerVariantProps
	local tokens = useTokens()
	local variants = VariantsContext.useVariants("InternalDrawer", variantsFactory, tokens)

	return composeStyleVariant(variants.common, variants.layout[layout], variants.side[side])
end

return useInternalDrawerVariants
