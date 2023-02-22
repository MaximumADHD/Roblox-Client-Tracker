local UserInputService = game:GetService("UserInputService")

local isGamepadInput = require(script.Parent.isGamepadInput)

local function wasLastInputGamepad()
	local lastInput = UserInputService:GetLastInputType()
	return isGamepadInput(lastInput)
end

return wasLastInputGamepad
