local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action("SET_RESPAWNING", function(isRespawning)
	return {
		respawning = isRespawning,
	}
end)
