local Foundation = script:FindFirstAncestor("Foundation")

local Flags = require(Foundation.Utility.Flags)
local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
type Padding = Types.Padding

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

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type CheckboxVariantProps = {
	input: InputVariantProps,
	checkmark: { tag: string },
}

local function variantsFactory(tokens: Tokens)
	local common = if Flags.FoundationToggleVisualUpdate
		then {
			input = {
				tag = "radius-small",
				colors = {
					checkedStyle = tokens.Color.ActionSubEmphasis.Background,
				},
				cursorRadius = UDim.new(0, tokens.Radius.Small),
			},
			checkmark = { tag = "position-center-center anchor-center-center content-action-sub-emphasis" },
		}
		else {
			input = {
				tag = "radius-small",
				checkedStyle = tokens.Color.ActionSubEmphasis.Background,
				cursorRadius = UDim.new(0, tokens.Radius.Small),
			},
			checkmark = { tag = "position-center-center anchor-center-center content-action-sub-emphasis" },
		}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			input = { size = UDim2.fromOffset(tokens.Size.Size_400, tokens.Size.Size_400) },
			checkmark = { tag = "size-400" },
		},
		[InputSize.Small] = {
			input = { size = UDim2.fromOffset(tokens.Size.Size_500, tokens.Size.Size_500) },
			checkmark = { tag = "size-500" },
		},
		[InputSize.Medium] = {
			input = { size = UDim2.fromOffset(tokens.Size.Size_600, tokens.Size.Size_600) },
			checkmark = { tag = "size-600" },
		},
		[InputSize.Large] = {
			input = { size = UDim2.fromOffset(tokens.Size.Size_700, tokens.Size.Size_700) },
			checkmark = { tag = "size-700" },
		},
	}

	return { common = common, sizes = sizes }
end

return function(tokens: Tokens, size: InputSize): CheckboxVariantProps
	local props = VariantsContext.useVariants("Checkbox", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.sizes[size])
end
