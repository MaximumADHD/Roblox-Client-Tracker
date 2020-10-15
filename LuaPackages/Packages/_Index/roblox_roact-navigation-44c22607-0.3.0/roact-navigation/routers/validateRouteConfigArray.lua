local validate = require(script.Parent.Parent.utils.validate)
local isValidScreenComponent = require(script.Parent.Parent.utils.isValidScreenComponent)

--[[
	This utility checks to make sure that configs passed to a
	router are in the correct format.

	Example:
	routeConfigs = {
		{ routeNameEx1 = Roact.Function/Stateful_Component },
		{ routeNameEx2 = { screen = Roact.Function/Stateful_Component } },
		{
			routeNameEx3 = {
				getScreen = function() return Roact.Function/Stateful_Component end
			}
		}
		{ routeNameEx4 = AnotherRoactNavigator } -- this is a Stateful Component
	}
]]
return function(routeConfigs)
	validate(type(routeConfigs) == "table", "routeConfigs must be an array table")

	for index, route in pairs(routeConfigs) do
		validate(
			type(index) == "number",
			("routeConfigs must be an array table (found non-number key %q of type %q)"):format(
				index,
				type(index)
			)
		)
		local routeName, routeConfig = next(route)
		validate(
			next(route, routeName) == nil,
			("only one route must be defined in each entry (found multiple at index %d)"):format(
				index
			)
		)
		local configIsTable = type(routeConfig) == "table" or false
		local screenConfig = configIsTable and routeConfig or {} -- easy index .screen/.getScreen
		local screenComponent = configIsTable and routeConfig.screen or routeConfig
		validate(isValidScreenComponent(screenComponent) or
			(type(screenConfig.getScreen) == "function" and isValidScreenComponent(screenConfig.getScreen())),
			"The component for route '%s' must be a Roact Function/Stateful component or table with 'getScreen'." ..
			"getScreen function must return Roact Function/Stateful component.",
			routeName)

		validate(screenConfig.screen == nil or screenConfig.getScreen == nil,
			"Route '%s' should provide 'screen' or 'getScreen', but not both.", routeName)
	end

	validate(#routeConfigs > 0, "Please specify at least one route when configuring a navigator.")

	return routeConfigs
end
