-- upstream https://github.com/react-navigation/react-navigation/blob/6390aacd07fd647d925dfec842a766c8aad5272f/packages/core/src/routers/createConfigGetter.js
local Cryo = require(script.Parent.Parent.Parent.Cryo)
local getScreenForRouteName = require(script.Parent.getScreenForRouteName)
local validateScreenOptions = require(script.Parent.validateScreenOptions)
local validate = require(script.Parent.Parent.utils.validate)

local function applyConfig(configurer, navigationOptions, configProps)
	navigationOptions = navigationOptions or {}

	local configurerType = type(configurer)
	if configurerType == "function" then
		return Cryo.Dictionary.join(
			navigationOptions,
			configurer(Cryo.Dictionary.join(configProps, {
				navigationOptions = navigationOptions
			}))
		)
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
		validate(
			type(route.routeName == "string"),
			"Cannot get config because the route does not have a routeName."
		)

		local component = getScreenForRouteName(routeConfigs, route.routeName)
		local routeConfig = routeConfigs[route.routeName]

		local routeScreenConfig = nil
		if routeConfig ~= component then
			routeScreenConfig = routeConfig.navigationOptions
		end

		-- deviation: check if the component is a table, because it could be a
		-- function and it can't be indexed in Lua.
		local componentScreenConfig = type(component) == "table"
			and component.navigationOptions or {}

		local configOptions = {
			navigation = navigation,
			screenProps = screenProps,
			-- deviation: no theme support
		}

		local outputConfig = applyConfig(navigatorScreenConfig, {}, configOptions)
		outputConfig = applyConfig(componentScreenConfig, outputConfig, configOptions)
		outputConfig = applyConfig(routeScreenConfig, outputConfig, configOptions)

		validateScreenOptions(outputConfig, route)
		return outputConfig
	end
end
