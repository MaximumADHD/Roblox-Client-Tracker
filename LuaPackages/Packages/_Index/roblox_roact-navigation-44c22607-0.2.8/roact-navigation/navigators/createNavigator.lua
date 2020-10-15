local Roact = require(script.Parent.Parent.Parent.Roact)
local Cryo = require(script.Parent.Parent.Parent.Cryo)
local validate = require(script.Parent.Parent.utils.validate)

return function(navigatorViewComponent, router, navigationConfig)
	local Navigator = Roact.Component:extend("Navigator")

	-- These statics need to be accessible to routers
	Navigator.router = router
	Navigator.navigationOptions = navigationConfig.navigationOptions

	function Navigator:init()
		local screenProps = self.props.screenProps

		self.state = {
			descriptors = {},
			screenProps = screenProps
		}
	end

	function Navigator.getDerivedStateFromProps(nextProps, prevState)
		local prevDescriptors = prevState.descriptors
		local navigation = nextProps.navigation
		local screenProps = nextProps.screenProps

		validate(navigation ~= nil, "The navigation prop is missing for this navigator")

		local routes = navigation.state.routes

		validate(type(routes) == "table", "No 'routes' found in navigation state. " ..
			"Don't try to pass the navigation prop from a Roact component to a Navigator child.")

		local descriptors = {}

		for _, route in ipairs(routes) do
			if prevDescriptors and prevDescriptors[route.key] and
				route == prevDescriptors[route.key].state and
				screenProps == prevState.screenProps then
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
		end

		return {
			descriptors = descriptors,
			screenProps = screenProps,
		}
	end

	function Navigator:render()
		local navigation = self.props.navigation
		local screenProps = self.state.screenProps
		local descriptors = self.state.descriptors

		return Roact.createElement(navigatorViewComponent, Cryo.Dictionary.join(self.props, {
			screenProps = screenProps,
			navigation = navigation,
			navigationConfig = navigationConfig,
			descriptors = descriptors,
		}))
	end

	return Navigator
end
