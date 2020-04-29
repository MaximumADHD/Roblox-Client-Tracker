local validate = require(script.Parent.Parent.utils.validate)
local isValidScreenComponent = require(script.Parent.Parent.utils.isValidScreenComponent)

--[[
	This utility checks to make sure that configs passed to a
	router are in the correct format.

	Example:
	routeConfigs = {
		routeNameEx1 = Roact.Function/Stateful_Component,
		routeNameEx2 = {
			screen = Roact.Function/Stateful_Component,
		},
		routeNameEx3 = {
			getScreen = function()
				return Roact.Function/Stateful_Component
			end
		}
		routeNameEx4 = AnotherRoactNavigator -- this is a Stateful Component
	}
]]
return function(routeConfigs)
	validate(type(routeConfigs) == "table", "routeConfigs must be a table")

	local atLeastOne = false
	for routeName, routeConfig in pairs(routeConfigs) do
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
		atLeastOne = true
	end

	validate(atLeastOne, "Please specify at least one route when configuring a navigator.")

	return routeConfigs
end
