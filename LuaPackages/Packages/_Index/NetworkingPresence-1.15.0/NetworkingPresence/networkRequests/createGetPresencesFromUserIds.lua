local root = script.Parent.Parent
local networkingPresenceTypes = require(root.networkingPresenceTypes)
local PRESENCE_URL = require(root.PRESENCE_URL)

return function(config: networkingPresenceTypes.Config): networkingPresenceTypes.GetPresencesFromUserIdsRequest
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "GetPresencesFromUserIds" }, function(requestBuilder, userIds)
		return requestBuilder(PRESENCE_URL)
			:path("v1")
			:path("presence")
			:path("users")
			:body({
				userIds = userIds,
			})
			:setStatusIds(userIds)
	end)
end
