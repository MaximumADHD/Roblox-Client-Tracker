local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(isControllerMode)
	return {
		isControllerMode = isControllerMode,
	}
end)
