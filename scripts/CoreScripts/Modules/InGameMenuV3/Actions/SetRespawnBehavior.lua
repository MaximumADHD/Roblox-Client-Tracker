local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("SET_RESPAWN_BEHAVIOR", function(respawnEnabled, respawnCallback)
	return {
		respawnEnabled = respawnEnabled,
		customCallback = respawnCallback,
	}
end)