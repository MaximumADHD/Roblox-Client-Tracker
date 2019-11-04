local Cryo = require(script.Parent.Parent.Parent.Cryo)
local SwitchRouter = require(script.Parent.SwitchRouter)
local BackBehavior = require(script.Parent.Parent.BackBehavior)

return function(config)
	-- Provide defaults suitable for tab routing.
	local modifiedConfig = Cryo.Dictionary.join({
		resetOnBlur = false,
		backBehavior = BackBehavior.InitialRoute,
	}, config)

	return SwitchRouter(modifiedConfig)
end
