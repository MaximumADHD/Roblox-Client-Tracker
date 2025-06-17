local Foundation = script:FindFirstAncestor("Foundation")

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local getKnobSize = require(script.Parent.getKnobSize)
local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type KnobVariantProps = {
	knob: {
		tag: string,
		size: UDim2,
		style: ColorStyleValue,
	},
	knobShadow: {
		tag: string,
		size: UDim2,
		padding: number,
	},
}

local function computeProps(props: {
	size: UDim2,
	shadowPadding: number,
})
	local knobWidth = props.size.X.Offset
	local shadowSize = knobWidth + 2 * props.shadowPadding
	return {
		knob = {
			size = props.size,
		},
		knobShadow = {
			size = UDim2.fromOffset(shadowSize, shadowSize),
			padding = props.shadowPadding,
		},
	}
end

local function variantsFactory(tokens: Tokens)
	local common = {
		knob = {
			tag = "radius-circle",
			style = tokens.Color.Extended.White.White_100,
		},
		knobShadow = {
			tag = "anchor-center-center position-center-center",
		},
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = computeProps({
			size = getKnobSize(tokens, InputSize.XSmall),
			shadowPadding = tokens.Padding.XXSmall,
		}),
		[InputSize.Small] = computeProps({
			size = getKnobSize(tokens, InputSize.Small),
			shadowPadding = tokens.Padding.XSmall,
		}),
		[InputSize.Medium] = computeProps({
			size = getKnobSize(tokens, InputSize.Medium),
			shadowPadding = tokens.Padding.Small,
		}),
		[InputSize.Large] = computeProps({
			size = getKnobSize(tokens, InputSize.Large),
			shadowPadding = tokens.Padding.Small,
		}),
	}

	return { common = common, sizes = sizes }
end

return function(tokens: Tokens, size: InputSize): KnobVariantProps
	local props = VariantsContext.useVariants("Knob", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.sizes[size])
end
