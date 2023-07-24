-- upstream https://github.com/react-navigation/react-navigation/blob/62da341b672a83786b9c3a80c8a38f929964d7cc/packages/core/src/routers/TabRouter.js
local routers = script.Parent
local root = routers.Parent
local Packages = root.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local SwitchRouter = require(routers.SwitchRouter)
local BackBehavior = require(root.BackBehavior)

return function(routeArray, config)
	-- Provide defaults suitable for tab routing.
	local switchConfig = {
		resetOnBlur = false,
		backBehavior = BackBehavior.InitialRoute,
	}

	if config then
		switchConfig = Object.assign(switchConfig, config)
	end

	return SwitchRouter(routeArray, switchConfig)
end
