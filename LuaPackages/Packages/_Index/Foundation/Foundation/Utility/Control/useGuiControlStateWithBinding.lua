local Control = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local createGuiControlStateTable = require(Control.createGuiControlStateTable)
local useGuiControlState = require(Control.useGuiControlState)

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local function useGuiControlStateWithBinding(
	guiObjectRef: React.Ref<Instance>,
	isDisabled: boolean?,
	onStateChanged: createGuiControlStateTable.onGuiControlStateChange?
)
	local controlState, updateControlState = React.useBinding(ControlState.Initialize :: ControlState)
	local onGuiControlStateChanged = React.useCallback(function(newState: ControlState)
		updateControlState(newState)
		if onStateChanged then
			onStateChanged(newState)
		end
	end, { onStateChanged })

	local wrappedRef, guiStateTable = useGuiControlState(guiObjectRef, onGuiControlStateChanged, true)

	React.useEffect(function()
		if isDisabled then
			guiStateTable.events.Disabled()
		else
			guiStateTable.events.Enabled()
		end
	end, { isDisabled :: any, guiStateTable })

	return wrappedRef, controlState
end

return useGuiControlStateWithBinding
