local Foundation = script:FindFirstAncestor("Foundation")

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local InputVariant = require(Foundation.Enums.InputVariant)
type InputVariant = InputVariant.InputVariant

local Radius = require(Foundation.Enums.Radius)
type Radius = Radius.Radius

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local getInputVariantsFactory = require(script.Parent.getInputVariantsFactory)

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

-- Composes InputField variant layers from getInputVariantsFactory in the same order as TextInput and related components
-- Useful in testing environments
local function composeInputFieldVariants(
	tokens: Tokens,
	size: InputSize,
	variant: InputVariant?,
	radius: Radius?,
	focused: boolean?,
	hover: boolean?,
	hasError: boolean?
): VariantProps
	local props = getInputVariantsFactory(tokens)
	local variantAttributes = props.variants[variant or InputVariant.Standard]

	return composeStyleVariant(
		props.common,
		props.sizes[size],
		if variant ~= InputVariant.Utility then variantAttributes else {},
		if radius then props.radius[radius] else props.defaultRadius[size],
		if hover ~= nil then props.hoverState[hover] else {},
		if focused ~= nil then props.focusedState[focused] else {},
		if hasError ~= nil then props.errorState[hasError] else {},
		if variant == InputVariant.Utility then variantAttributes else {}
	)
end

return composeInputFieldVariants
