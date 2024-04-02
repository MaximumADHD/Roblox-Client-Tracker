local Hooks = script.Parent
local Control = Hooks.Parent
local Core = Control.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)

local ControlStateEnum = require(UIBlox.Core.Control.Enum.ControlState)
local useGuiControlState = require(Core.Control.Hooks.useGuiControlState)

type ControlState = ControlStateEnum.ControlState

local function useGuiControlStateWithBinding(
	guiObjectRef: React.Ref<Instance>,
	onStateChanged: useGuiControlState.ControlStateChangedCallback?,
	userInteractionEnabled: boolean
)
	local controlState, updateControlState = React.useBinding(ControlStateEnum.Initialize)
	local onGuiControlStateChanged = React.useCallback(function(oldState, newState)
		updateControlState(tostring(newState))
		if onStateChanged then
			onStateChanged(oldState, newState)
		end
	end, {})

	local wrappedRef, _ = useGuiControlState(
		guiObjectRef :: React.Ref<Instance>,
		onGuiControlStateChanged,
		userInteractionEnabled :: boolean
	)

	return wrappedRef, controlState
end

return useGuiControlStateWithBinding
