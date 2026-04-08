local Flags = require(script.Parent.Parent.Utility.Flags)
local NumberInput = require(script.NumberInput)

export type NumberInputProps = NumberInput.NumberInputProps

export type NumberInputRef = NumberInput.NumberInputRef

return if Flags.FoundationNumberInputTextFix then NumberInput else require(script.NumberInputTextState)
