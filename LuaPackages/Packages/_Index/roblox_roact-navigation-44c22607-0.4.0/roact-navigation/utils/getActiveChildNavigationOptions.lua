-- upstream https://github.com/react-navigation/react-navigation/blob/6390aacd07fd647d925dfec842a766c8aad5272f/packages/core/src/utils/getActiveChildNavigationOptions.js

-- deviation: no theme parameter because no support for theme
return function(navigation, screenProps)
	local state = navigation.state
	local router = navigation.router
	local getChildNavigation = navigation.getChildNavigation

	local activeRoute = state.routes[state.index]
	local activeNavigation = getChildNavigation(activeRoute.key)

	-- deviation: no support for theme
	return router.getScreenOptions(activeNavigation, screenProps)
end
