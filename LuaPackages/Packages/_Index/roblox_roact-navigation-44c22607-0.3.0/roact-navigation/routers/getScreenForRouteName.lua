-- upstream https://github.com/react-navigation/react-navigation/blob/62da341b672a83786b9c3a80c8a38f929964d7cc/packages/core/src/routers/SwitchRouter.js
local root = script.Parent.Parent
local Packages = root.Parent
local Cryo = require(Packages.Cryo)
local validate = require(root.utils.validate)
local isValidScreenComponent = require(root.utils.isValidScreenComponent)

-- Extract a single screen Roact component/navigator from
-- a navigator's config.
return function(routeConfigs, routeName)
	validate(type(routeConfigs) == "table", "routeConfigs must be a table")
	validate(type(routeName) == "string", "routeName must be a string")

	local routeConfig = routeConfigs[routeName]

	if routeConfig == nil then
		local possibleRoutes = Cryo.List.map(Cryo.Dictionary.keys(routeConfigs), function(name)
			return ("'%s'"):format(name)
		end)

		local message = ("There is no route defined for key %s.\nMust be one of: %s"):format(
			routeName,
			table.concat(possibleRoutes, ",")
		)
		error(message, 2)
	end

	local routeConfigType = type(routeConfig)

	if routeConfigType == "table" then
		if routeConfig.screen ~= nil then
			validate(
				isValidScreenComponent(routeConfig.screen),
				"screen for key '%s' must be a valid Roact component.",
				routeName
			)
			return routeConfig.screen
		elseif type(routeConfig.getScreen) == "function" then
			local screen = routeConfig.getScreen()
			validate(
				isValidScreenComponent(screen),
				"The getScreen defined for route '%s' didn't return a valid " ..
					"screen or navigator.\n\n" ..
					"Please pass it like this:\n" ..
					"%s = {\n    getScreen: function() return MyScreen end\n}",
					routeName,
					routeName
			)
			return screen
		end
	end

	validate(
		isValidScreenComponent(routeConfig),
		"Value for key '%s' must be a route config table or a valid Roact component.",
		routeName
	)

	return routeConfig
end
