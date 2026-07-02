local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Image = require(Foundation.Components.Image)
local IndicatorShape = require(Foundation.Enums.IndicatorShape)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
type IndicatorShape = IndicatorShape.IndicatorShape
local IndicatorVariant = require(Foundation.Enums.IndicatorVariant)
type IndicatorVariant = IndicatorVariant.IndicatorVariant

local useIndicatorVariants = require(script.Parent.useIndicatorVariants)

type IndicatorProps = {
	shape: IndicatorShape?,
	variant: IndicatorVariant?,
	size: number,
} & Types.CommonProps

local defaultProps = {
	shape = IndicatorShape.Circle,
	variant = IndicatorVariant.Success,
}

local function Indicator(indicatorProps: IndicatorProps)
	local props = withDefaults(indicatorProps, defaultProps)
	local tokens = useTokens()

	local variantProps = useIndicatorVariants(tokens, props.shape, props.variant, props.size)
	return React.createElement(
		if variantProps.indicator.Image then Image else View,
		withCommonProps(props, variantProps.indicator)
	)
end

return React.memo(Indicator)
