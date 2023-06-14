local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(respawnEnabled, respawnCallback)
	return {
		respawnEnabled = respawnEnabled,
		customCallback = respawnCallback,
	}
end)
