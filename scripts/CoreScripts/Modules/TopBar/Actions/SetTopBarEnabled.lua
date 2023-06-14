local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(enabled)
	return {
		enabled = enabled,
	}
end)
