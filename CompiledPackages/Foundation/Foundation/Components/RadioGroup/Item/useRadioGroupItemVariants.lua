local Foundation = script:FindFirstAncestor("Foundation")

local Input = require(Foundation.Components.InternalInput)
type InputVariantProps = Input.InputVariantProps

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type RadioItemVariantProps = {
	input: InputVariantProps,
	checkmark: { tag: string, style: ColorStyleValue },
}

local function variantsFactory(tokens: Tokens)
	local common = {
		input = { tag = "radius-circle", cursorRadius = UDim.new(0, tokens.Radius.Circle) },
		checkmark = {
			tag = "position-center-center anchor-center-center radius-circle",
			style = tokens.Inverse.Content.Emphasis,
		},
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			input = { size = UDim2.fromOffset(tokens.Size.Size_400, tokens.Size.Size_400) },
			checkmark = { tag = "size-150" },
		},
		[InputSize.Small] = {
			input = { size = UDim2.fromOffset(tokens.Size.Size_500, tokens.Size.Size_500) },
			checkmark = { tag = "size-200" },
		},
		[InputSize.Medium] = {
			input = { size = UDim2.fromOffset(tokens.Size.Size_600, tokens.Size.Size_600) },
			checkmark = { tag = "size-250" },
		},
		[InputSize.Large] = {
			input = { size = UDim2.fromOffset(tokens.Size.Size_700, tokens.Size.Size_700) },
			checkmark = { tag = "size-300" },
		},
	}

	return { common = common, sizes = sizes }
end

return function(tokens: Tokens, size: InputSize): RadioItemVariantProps
	local props = VariantsContext.useVariants("RadioItem", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.sizes[size])
end
