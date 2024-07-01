local root = script.Parent.Parent

local networkingPresenceTypes = require(root.networkingPresenceTypes)

local PRESENCE_URL = require(root.PRESENCE_URL)

return function(config: networkingPresenceTypes.Config): networkingPresenceTypes.SetInvisibilityStatusRequest
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "SetInvisibilityStatus" }, function(requestBuilder, isInvisible: boolean)
		return requestBuilder(PRESENCE_URL):path("v1"):path("presence"):path("set-invisibility-status"):body({
			isInvisible = isInvisible,
		})
	end)
end
