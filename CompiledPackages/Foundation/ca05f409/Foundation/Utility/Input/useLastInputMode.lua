local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local UserInputService = game:GetService("UserInputService")

local React = require(Packages.React)

local ReactUtils = require(Packages.ReactUtils)
local useEventConnection = ReactUtils.useEventConnection

local InputMode = require(Foundation.Utility.Input.InputMode)
local getInputMode = require(Foundation.Utility.Input.getInputMode)

type InputMode = InputMode.InputMode

local function getLastInputMode(): InputMode?
	return getInputMode(UserInputService:GetLastInputType())
end

local function useLastInputMode(): InputMode?
	local lastInputMode, setLastInputMode = React.useState(getLastInputMode)

	useEventConnection(UserInputService.LastInputTypeChanged, function()
		setLastInputMode(getLastInputMode())
	end)

	return lastInputMode :: InputMode?
end

return useLastInputMode
