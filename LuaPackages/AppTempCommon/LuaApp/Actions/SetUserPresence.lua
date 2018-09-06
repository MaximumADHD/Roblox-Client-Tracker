local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action(script.Name, function(userId, presence, lastLocation)
	return {
		userId = tostring(userId),
		presence = presence,
		lastLocation = lastLocation,
	}
end)