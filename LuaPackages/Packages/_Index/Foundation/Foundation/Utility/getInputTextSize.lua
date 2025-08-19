local Foundation = script:FindFirstAncestor("Foundation")

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
type InputLabelSize = InputLabelSize.InputLabelSize

local INPUT_TO_TEXT: { [InputSize]: InputLabelSize } = {
	[InputSize.Large] = InputLabelSize.Large,
	[InputSize.Medium] = InputLabelSize.Medium,
	[InputSize.Small] = InputLabelSize.Small,
	[InputSize.XSmall] = InputLabelSize.Small,
}

--[[
    inputSize:  Over all size of the input component text is being created for
]]
local function getInputTextSize(inputSize: InputSize): InputLabelSize
	return INPUT_TO_TEXT[inputSize]
end

return getInputTextSize
