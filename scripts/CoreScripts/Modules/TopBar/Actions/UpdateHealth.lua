local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(health, maxHealth)
	return {
		health = health,
		maxHealth = maxHealth,
	}
end)
