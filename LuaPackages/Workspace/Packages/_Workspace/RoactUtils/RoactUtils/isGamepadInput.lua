local Packages = script.Parent.Parent
local InputTypeConstants = require(Packages.InputType).InputTypeConstants
local getInputGroup = require(Packages.InputType).getInputGroup

local function isGamepadInput(inputType: Enum.UserInputType): boolean
	return getInputGroup(inputType) == InputTypeConstants.Gamepad
end

return isGamepadInput
