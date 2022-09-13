--[[
	A hook to use the control state from an Interactable component.

	It returns two values:

		controlState - the current control state of the Interactable

		onStateChanged - a callback that must be passed in as the onStateChanged
			prop to the Interactable
]]

local Control = script.Parent
local Core = Control.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local ControlState = require(Core.Control.Enum.ControlState)

local function useControlState()
	local controlState, setControlState = React.useState(ControlState.Initialize)

	local onStateChanged = React.useCallback(function(_oldState, newState)
		setControlState(newState)
	end, {})

	return controlState, onStateChanged
end

return useControlState
