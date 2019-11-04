local validate = require(script.Parent.Parent.utils.validate)
local isValidRoactElementType = require(script.Parent.Parent.utils.isValidRoactElementType)

-- Extract a single screen Roact component/navigator from
-- a navigator's config.
return function(routeConfigs, routeName)
	validate(type(routeConfigs) == "table", "routeConfigs must be a table")
	validate(type(routeName) == "string", "routeName must be a string")

	local routeConfig = routeConfigs[routeName]
	validate(routeConfig ~= nil, "There is no route defined for key '%s'.", routeName)

	local routeConfigType = type(routeConfig)

	if routeConfigType == "table" then
		if routeConfig.screen ~= nil then
			validate(isValidRoactElementType(routeConfig.screen),
				"screen param for key '%s' must be a valid Roact component.", routeName)
			return routeConfig.screen
		elseif type(routeConfig.getScreen) == "function" then
			local screen = routeConfig.getScreen()
			validate(isValidRoactElementType(screen),
				"The getScreen function defined for route '%s' did not return a valid screen or navigator", routeName)
			return screen
		end
	end

	validate(isValidRoactElementType(routeConfig),
		"Value for key '%s' must be a route config table or a valid Roact component.", routeName)

	return routeConfig
end
