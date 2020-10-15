return function(navigation, screenProps)
	local state = navigation.state
	local router = navigation.router
	local getChildNavigation = navigation.getChildNavigation

	local activeRoute = state.routes[state.index]
	local activeNavigation = getChildNavigation(activeRoute.key)

	return router.getScreenOptions(activeNavigation, screenProps)
end

