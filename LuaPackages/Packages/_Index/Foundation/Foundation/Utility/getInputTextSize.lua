local Foundation = script:FindFirstAncestor("Foundation")

local Flags = require(Foundation.Utility.Flags)
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
type InputLabelSize = InputLabelSize.InputLabelSize

-- Deprecated: Remove with FoundationStandardizeInputLabelSizes
local INPUT_TO_LABEL: { [InputSize]: InputLabelSize } = {
	[InputSize.XSmall] = InputLabelSize.Small,
	[InputSize.Small] = InputLabelSize.Medium,
	[InputSize.Medium] = InputLabelSize.Medium,
	[InputSize.Large] = InputLabelSize.Medium,
}

local INPUT_TO_TEXT: { [InputSize]: InputLabelSize } = {
	[InputSize.Large] = InputLabelSize.Large,
	[InputSize.Medium] = InputLabelSize.Medium,
	[InputSize.Small] = InputLabelSize.Small,
	[InputSize.XSmall] = InputLabelSize.Small,
}

--[[
    inputSize:  Over all size of the input component text is being created for
    isInline:   Whether text being created is inline with the input's visual element (eg. Checkbox) or not (eg. TextInput's label)
]]
local function getInputTextSize(inputSize: InputSize, isInline: boolean): InputLabelSize
	-- Remove isInline from the function signature with removal of FoundationStandardizeInputLabelSizes
	if Flags.FoundationStandardizeInputLabelSizes then
		return INPUT_TO_TEXT[inputSize]
	end

	if not isInline then
		return INPUT_TO_LABEL[inputSize]
	end
	return INPUT_TO_TEXT[inputSize]
end

return getInputTextSize
