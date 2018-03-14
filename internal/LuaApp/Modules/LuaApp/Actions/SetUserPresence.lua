local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Action = require(Modules.Common.Action)

return Action(script.Name, function(userId, presence, lastLocation)
	return {
		userId = tostring(userId),
		presence = presence,
		lastLocation = lastLocation,
	}
end)