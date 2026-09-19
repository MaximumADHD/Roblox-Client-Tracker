--[[
	Return true if the input type is a left-mouse click or touch
]]
local function isInputMainPress(input)
	return input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch
end

return isInputMainPress
