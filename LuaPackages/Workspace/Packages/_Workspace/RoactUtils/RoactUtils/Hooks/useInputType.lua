--[[
	A hook that returns the last input type (mapped to InputTypeConstants).
]]

local UserInputService = game:GetService("UserInputService")
local RoactUtils = script:FindFirstAncestor("RoactUtils")
local Packages = RoactUtils.Parent

local React = require(Packages.React)
local useExternalEvent = require(script.Parent.useExternalEvent)
local InputType = require(Packages.InputType)
local InputTypeMap = InputType.InputTypeMap
local InputTypeConstants = InputType.InputTypeConstants

local getFFlagDebugLuaAppAlwaysUseGamepad = require(Packages.SharedFlags).getFFlagDebugLuaAppAlwaysUseGamepad

local function useInputType(userInputServiceForTesting: any)
	local userInputService = userInputServiceForTesting or UserInputService

	local function getLastInputType()
		local lastInputType = userInputService:GetLastInputType()
		return InputTypeMap[lastInputType]
	end

	if getFFlagDebugLuaAppAlwaysUseGamepad() then
		return InputTypeConstants.Gamepad
	end

	local inputType, setInputType = React.useState(getLastInputType)

	local lastInputTypeChangedCallback = React.useCallback(function(lastInputType)
		local newInputType = InputTypeMap[lastInputType]
		if newInputType ~= nil then
			setInputType(newInputType)
		end
	end)

	useExternalEvent(userInputService.LastInputTypeChanged, lastInputTypeChangedCallback)

	-- Set initial input type state via effect, to account for possibility that it changed
	-- between the initial render and the LastInputTypeChanged connection.
	React.useEffect(function()
		setInputType(getLastInputType())
	end, {})

	return inputType
end

return useInputType
