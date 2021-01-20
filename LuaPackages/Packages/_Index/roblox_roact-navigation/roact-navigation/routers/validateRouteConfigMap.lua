-- upstream https://github.com/react-navigation/react-navigation/blob/6390aacd07fd647d925dfec842a766c8aad5272f/packages/core/src/routers/validateRouteConfigMap.js
local root = script.Parent.Parent
local validate = require(root.utils.validate)
local isValidScreenComponent = require(root.utils.isValidScreenComponent)

local function getScreenComponent(routeConfig)
	if not routeConfig then
		return nil
	end

	if type(routeConfig) == "table" and routeConfig.screen then
		return routeConfig.screen
	end

	return routeConfig
end

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
	validate(next(routeConfigs) ~= nil, "Please specify at least one route when configuring a navigator.")

	for routeName, routeConfig in pairs(routeConfigs) do
		local screenComponent = getScreenComponent(routeConfig)

		local tableRouteConfig = type(routeConfig) == "table"
		validate(
			isValidScreenComponent(screenComponent) or
				(tableRouteConfig and type(routeConfig.getScreen) == "function"),
			"The component for route '%s' must be a Roact component or table with 'getScreen'." ..
				[[ For example:

local MyScreen = require(script.Parent.MyScreen)
...
%s = MyScreen,
}

You can also use a navigator:

local MyNavigator = require(script.Parent.MyNavigator)
...
%s = MyNavigator,
}]],
			routeName,
			routeName,
			routeName
		)

		if tableRouteConfig then
			validate(
				routeConfig.screen == nil or routeConfig.getScreen == nil,
				"Route '%s' should declare a screen or a getScreen, not both.",
				routeName
			)
		end
	end

	return routeConfigs
end
