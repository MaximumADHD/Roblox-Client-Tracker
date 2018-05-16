local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Action = require(Modules.Common.Action)

return Action(script.Name, function(userId, presence, lastLocation, placeId)
	return {
		userId = userId,
		presence = presence,
		lastLocation = lastLocation,
		placeId = placeId,
	}
end)