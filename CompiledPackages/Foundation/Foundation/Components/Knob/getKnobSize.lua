local Foundation = script:FindFirstAncestor("Foundation")

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local function getKnobSize(tokens: Tokens, size: InputSize): UDim2
	local knobSizes: { [InputSize]: number } = {
		[InputSize.XSmall] = tokens.Size.Size_200,
		[InputSize.Small] = tokens.Size.Size_300,
		[InputSize.Medium] = tokens.Size.Size_400,
		[InputSize.Large] = tokens.Size.Size_700,
	}

	local knobSize = knobSizes[size]
	return UDim2.fromOffset(knobSize, knobSize)
end

return getKnobSize
