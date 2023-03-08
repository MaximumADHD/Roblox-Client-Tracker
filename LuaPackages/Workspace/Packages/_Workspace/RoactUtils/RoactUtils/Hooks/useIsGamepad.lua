--[[
	A hook that returns true if the last input type was a gamepad.
]]

local UserInputService = game:GetService("UserInputService")
local RoactUtils = script:FindFirstAncestor("RoactUtils")
local Packages = RoactUtils.Parent

local React = require(Packages.React)
local useExternalEvent = require(script.Parent.useExternalEvent)
local isGamepadInput = require(script.Parent.Parent.isGamepadInput)

local function useIsGamepad(userInputServiceForTesting: any)
	local userInputService = userInputServiceForTesting or UserInputService

	local function wasLastInputGamepad()
		local lastInput = userInputService:GetLastInputType()
		return isGamepadInput(lastInput)
	end

	local isGamepad, setIsGamepad = React.useState(wasLastInputGamepad)

	local lastInputTypeChangedCallback = React.useCallback(function(lastInputType)
		local newInputIsGamepad = isGamepadInput(lastInputType)
		if newInputIsGamepad ~= nil then
			setIsGamepad(newInputIsGamepad)
		end
	end)

	useExternalEvent(userInputService.LastInputTypeChanged, lastInputTypeChangedCallback)

	-- Set initial isGamepad state via effect, to account for possibility that it changed
	-- between the initial render and the LastInputTypeChanged connection.
	React.useEffect(function()
		setIsGamepad(wasLastInputGamepad())
	end, {})

	return isGamepad
end

return useIsGamepad
