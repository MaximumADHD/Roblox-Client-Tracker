local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("SET_RESPAWNING", function(isRespawning)
	return {
		respawning = isRespawning,
	}
end)