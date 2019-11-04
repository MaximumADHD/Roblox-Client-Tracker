local Cryo = require(script.Parent.Parent.Parent.Cryo)
local getScreenForRouteName = require(script.Parent.getScreenForRouteName)
local validateScreenOptions = require(script.Parent.validateScreenOptions)
local validate = require(script.Parent.Parent.utils.validate)

local function applyConfig(configurer, navigationOptions, configProps)
	navigationOptions = navigationOptions or {}

	local configurerType = type(configurer)
	if configurerType == "function" then
		return Cryo.Dictionary.join(navigationOptions,
			configurer(Cryo.Dictionary.join(configProps or {}, {
				navigationOptions = navigationOptions
			})))
	elseif configurerType == "table" then
		return Cryo.Dictionary.join(navigationOptions, configurer)
	else
		return navigationOptions
	end
end

return function(routeConfigs, navigatorScreenConfig)
	return function(navigation, screenProps)
		screenProps = screenProps or {}
		local route = navigation.state

		validate(type(route) == "table", "navigation.state must be a table")
		validate(type(route.routeName == "string"), "routeName must be a string")

		local component = getScreenForRouteName(routeConfigs, route.routeName)
		local routeConfig = routeConfigs[route.routeName]

		local routeScreenConfig = nil
		if routeConfig ~= component then
			routeScreenConfig = routeConfig.navigationOptions
		end

		local componentScreenConfig = type(component) == "table"
			and component.navigationOptions or {}

		local configOptions = {
			navigation = navigation,
			screenProps = screenProps,
		}

		local outputConfig = applyConfig(navigatorScreenConfig, {}, configOptions)
		outputConfig = applyConfig(componentScreenConfig, outputConfig, configOptions)
		outputConfig = applyConfig(routeScreenConfig, outputConfig, configOptions)

		validateScreenOptions(outputConfig, route)
		return outputConfig
	end
end
