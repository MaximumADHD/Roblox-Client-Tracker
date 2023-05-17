-- This is a util that extend getActiveChildNavigationOptions from RN
local root = script:FindFirstAncestor("TenFootUiGlobalNav")
local Packages = root.Parent
local TenFootUiCommon = require(Packages.TenFootUiCommon)

export type ScreenProps = { [string]: any }

type RouteState = TenFootUiCommon.RouteState

export type NavigationState = {
	key: string,
	index: number,
	routes: { RouteState },
	isTransitioning: boolean?,
} | { key: string, routeName: string, params: { [any]: any }?, index: nil, routes: nil }

export type NavigationObject = {
	state: NavigationState,
	getChildNavigation: (string) -> NavigationObject,
	router: {
		getScreenOptions: (NavigationObject, ScreenProps?) -> ScreenProps,
	},
}

return function(navigation: NavigationObject, screenProps: ScreenProps?): ScreenProps
	local state = navigation.state
	local router = navigation.router
	local getChildNavigation = navigation.getChildNavigation

	local activeRoutes = state.routes
	local activeRoute, activeNavigation, ret

	while activeRoutes do
		activeRoute = activeRoutes[state.index :: number]
		activeNavigation = getChildNavigation(activeRoute.key)
		ret = router.getScreenOptions(activeNavigation, screenProps)

		if not activeNavigation then
			break
		end
		getChildNavigation = activeNavigation.getChildNavigation
		state = activeNavigation.state
		activeRoutes = state.routes
		router = activeNavigation.router
	end

	return ret
end
