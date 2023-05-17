local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local AppCommonLib = require(Packages.AppCommonLib)
local React = require(Packages.React)
local useDispatch = require(Packages.RoactUtils).Hooks.RoactRodux.useDispatch
local TenFootUiCommon = require(Packages.TenFootUiCommon)

type Signal = AppCommonLib.Signal
type Action = TenFootUiCommon.Action

local function useProcessNavigationStateChange(action: Action)
	local dispatch = useDispatch()

	local processNavigationStateChange = React.useCallback(function(_prevNavState, nextNavState, _action)
		-- Update UniversalApp store state when we dispatch navigation actions
		dispatch(action(nextNavState))
	end, { dispatch, action })

	return processNavigationStateChange
end

return useProcessNavigationStateChange
