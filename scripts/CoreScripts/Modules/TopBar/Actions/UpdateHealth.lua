local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action(script.Name, function(health, maxHealth)
	return {
		health = health,
		maxHealth = maxHealth,
	}
end)