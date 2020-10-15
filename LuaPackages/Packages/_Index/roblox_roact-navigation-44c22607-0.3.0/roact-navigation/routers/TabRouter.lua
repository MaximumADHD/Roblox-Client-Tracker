-- upstream https://github.com/react-navigation/react-navigation/blob/62da341b672a83786b9c3a80c8a38f929964d7cc/packages/core/src/routers/TabRouter.js
local Cryo = require(script.Parent.Parent.Parent.Cryo)
local SwitchRouter = require(script.Parent.SwitchRouter)
local BackBehavior = require(script.Parent.Parent.BackBehavior)
local showDeprecatedRouterMessage = require(script.Parent.showDeprecatedRouterMessage)

return function(routeArray, config)
	-- Provide defaults suitable for tab routing.
	local switchConfig = {
		resetOnBlur = false,
		backBehavior = BackBehavior.InitialRoute,
	}

	-- deviation: we need to support the previous router API
	if config == nil and routeArray.routes ~= nil then
		showDeprecatedRouterMessage("TabRouter")
		local oldConfig = routeArray
		config = Cryo.Dictionary.join(oldConfig, { routes = Cryo.None })

		local order = oldConfig.order or Cryo.Dictionary.keys(oldConfig.routes)
		routeArray = Cryo.List.map(order, function(routeName)
			return { [routeName] = oldConfig.routes[routeName] }
		end)
	end

	if config then
		switchConfig = Cryo.Dictionary.join(switchConfig, config)
	end

	return SwitchRouter(routeArray, switchConfig)
end
