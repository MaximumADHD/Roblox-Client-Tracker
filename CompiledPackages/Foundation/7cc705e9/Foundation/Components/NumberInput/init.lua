local Flags = require(script.Parent.Parent.Utility.Flags)
-- TODO: clean up with FFlagFoundationNumberInputTextFix
local NumberInputNew = require(script.NumberInput)
local NumberInput = if Flags.FoundationNumberInputTextFix then NumberInputNew else require(script.NumberInputTextState)

export type NumberInputProps = NumberInputNew.NumberInputProps

export type NumberInputRef = NumberInputNew.NumberInputRef

return NumberInput
