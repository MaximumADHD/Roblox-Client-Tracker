local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local TenFootUiCommon = require(Packages.TenFootUiCommon)

type NavigationObject = TenFootUiCommon.NavigationObject
type NavigationState = TenFootUiCommon.NavigationState
type RouteState = TenFootUiCommon.RouteState

local function getCurrentState(state: NavigationState | RouteState)
	if state.routes and (state :: NavigationState).index then
		return getCurrentState((state :: NavigationState).routes[(state :: NavigationState).index])
	end
	return state
end

local function getCurrentRouteKey(navigation: NavigationObject?): string?
	if not navigation then
		return nil
	else
		local navigationState = getCurrentState(navigation.state :: NavigationState)
		return if navigationState then navigationState.key else nil
	end
end

return getCurrentRouteKey
