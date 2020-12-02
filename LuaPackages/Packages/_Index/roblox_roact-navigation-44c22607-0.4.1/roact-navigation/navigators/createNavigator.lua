-- upstream https://github.com/react-navigation/react-navigation/blob/9b55493e7662f4d54c21f75e53eb3911675f61bc/packages/core/src/navigators/createNavigator.js

local root = script.Parent.Parent
local Packages = root.Parent
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local validate = require(root.utils.validate)
local NavigationFocusEvents = require(root.views.NavigationFocusEvents)

return function(navigatorViewComponent, router, navigationConfig)
	local Navigator = Roact.Component:extend("Navigator")

	-- These statics need to be accessible to routers
	Navigator.router = router
	Navigator.navigationOptions = navigationConfig.navigationOptions
	-- deviation: no theme support

	function Navigator:init()
		local screenProps = self.props.screenProps

		self.state = {
			descriptors = {},
			screenProps = screenProps,
			-- deviation: no theme support
		}
	end

	function Navigator.getDerivedStateFromProps(nextProps, prevState)
		local prevDescriptors = prevState.descriptors
		local navigation = nextProps.navigation
		local screenProps = nextProps.screenProps

		validate(navigation ~= nil, "The navigation prop is missing for this navigator. " ..
			"In react-navigation v3 and v4 you must set up your app container directly. " ..
			"More info: https://reactnavigation.org/docs/en/app-containers.html")

		local routes = navigation.state.routes

		validate(type(routes) == "table", 'No "routes" found in navigation state. ' ..
			"Did you try to pass the navigation prop of a React component to a Navigator child? " ..
			"See https://reactnavigation.org/docs/en/custom-navigators.html#navigator-navigation-prop")

		local descriptors = Cryo.List.foldLeft(routes, function(descriptors, route)
			if
				prevDescriptors and
				prevDescriptors[route.key] and
				route == prevDescriptors[route.key].state and
				screenProps == prevState.screenProps
				-- deviation: no theme support
			then
				descriptors[route.key] = prevDescriptors[route.key]
			else
				local getComponent = function()
					return router.getComponentForRouteName(route.routeName)
				end

				local childNavigation = navigation.getChildNavigation(route.key)
				local options = router.getScreenOptions(childNavigation, screenProps)

				descriptors[route.key] = {
					key = route.key,
					getComponent = getComponent,
					options = options,
					state = route,
					navigation = childNavigation,
				}
			end

			return descriptors
		end, {})

		return {
			descriptors = descriptors,
			screenProps = screenProps,
			-- deviation: no theme support
		}
	end

	-- deviation: no `componentDidUpdate` because no theme support

	function Navigator:render()
		local navigation = self.props.navigation
		local screenProps = self.state.screenProps
		local descriptors = self.state.descriptors

		return Roact.createFragment({
			Events = Roact.createElement(NavigationFocusEvents, {
				navigation = navigation,
				onEvent = function(target, type, data)
					if descriptors[target] then
						descriptors[target].navigation.emit(type, data);
					end
				end,
			}),
			View = Roact.createElement(navigatorViewComponent, Cryo.Dictionary.join(self.props, {
				screenProps = screenProps,
				navigation = navigation,
				navigationConfig = navigationConfig,
				descriptors = descriptors,
			}))
		})
	end

	return Navigator
end
