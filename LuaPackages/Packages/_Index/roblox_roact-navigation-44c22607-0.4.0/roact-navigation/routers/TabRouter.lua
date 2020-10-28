-- upstream https://github.com/react-navigation/react-navigation/blob/62da341b672a83786b9c3a80c8a38f929964d7cc/packages/core/src/routers/TabRouter.js
local Cryo = require(script.Parent.Parent.Parent.Cryo)
local SwitchRouter = require(script.Parent.SwitchRouter)
local BackBehavior = require(script.Parent.Parent.BackBehavior)

return function(routeArray, config)
	-- Provide defaults suitable for tab routing.
	local switchConfig = {
		resetOnBlur = false,
		backBehavior = BackBehavior.InitialRoute,
	}

	if config then
		switchConfig = Cryo.Dictionary.join(switchConfig, config)
	end

	return SwitchRouter(routeArray, switchConfig)
end
