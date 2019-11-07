local validate = require(script.Parent.Parent.utils.validate)
local isValidRoactElementType = require(script.Parent.Parent.utils.isValidRoactElementType)

--[[
	This utility checks to make sure that configs passed to a
	router are in the correct format.

	Example:
	routeConfigs = {
		routeNameEx1 = Roact.Component,
		routeNameEx2 = {
			screen = Roact.Component,
		},
		routeNameEx3 = {
			getScreen = function()
				return Roact.Component
			end
		}
	}
]]
return function(routeConfigs)
	validate(type(routeConfigs) == "table", "routeConfigs must be a table")

	local atLeastOne = false
	for routeName, routeConfig in pairs(routeConfigs) do
		local configIsTable = type(routeConfig) == "table" or false
		local screenConfig = configIsTable and routeConfig or {} -- easy index .screen/.getScreen
		local screenComponent = configIsTable and routeConfig.screen or routeConfig

		validate(isValidRoactElementType(screenComponent) or type(screenConfig.getScreen) == "function",
			"The component for route '%s' must be a Roact component or table with 'getScreen'.",
			routeName)
		validate(screenConfig.screen == nil or screenConfig.getScreen == nil,
			"Route '%s' should provide 'screen' or 'getScreen', but not both.", routeName)
		atLeastOne = true
	end

	validate(atLeastOne, "Please specify at least one route when configuring a navigator.")

	return routeConfigs
end
