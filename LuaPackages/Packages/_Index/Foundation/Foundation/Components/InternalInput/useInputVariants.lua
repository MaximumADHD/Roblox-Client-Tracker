local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
type Padding = Types.Padding

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type InputVariantProps = {
	container: { tag: string, padding: UDim },
	input: { style: ColorStyleValue, stroke: {
		style: ColorStyleValue,
		thickness: number,
	} },
	label: { style: ColorStyleValue },
}

local function variantsFactory(tokens: Tokens)
	local strokeThickness = math.ceil(tokens.Stroke.Standard)
	local common = {
		container = {
			tag = "row auto-xy align-x-left align-y-center",
			padding = UDim.new(0, strokeThickness),
		},
		input = { stroke = { thickness = strokeThickness } },
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = { container = { tag = "gap-small" } },
		[InputSize.Small] = { container = { tag = "gap-small" } },
		[InputSize.Medium] = { container = { tag = "gap-medium" } },
		[InputSize.Large] = { container = { tag = "gap-large" } },
	}

	return { common = common, sizes = sizes }
end

return function(tokens: Tokens, size: InputSize): InputVariantProps
	local props = VariantsContext.useVariants("InternalInput", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.sizes[size])
end
