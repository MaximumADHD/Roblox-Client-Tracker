--[[
	A hook that returns true if the last input type was a gamepad.
]]

local UserInputService = game:GetService("UserInputService")
local RoactUtils = script:FindFirstAncestor("RoactUtils")
local Packages = RoactUtils.Parent

local React = require(Packages.React)
local useExternalEvent = require(script.Parent.useExternalEvent)
local isGamepadInput = require(script.Parent.Parent.isGamepadInput)
local wasLastInputGamepad = require(script.Parent.Parent.wasLastInputGamepad)

local function useIsGamepad()
	local isGamepad, setIsGamepad = React.useState(wasLastInputGamepad)

	local lastInputTypeChangedCallback = React.useCallback(function(lastInputType)
		local newInputIsGamepad = isGamepadInput(lastInputType)
		if newInputIsGamepad ~= nil then
			setIsGamepad(newInputIsGamepad)
		end
	end)

	useExternalEvent(UserInputService.LastInputTypeChanged, lastInputTypeChangedCallback)

	return isGamepad
end

return useIsGamepad
