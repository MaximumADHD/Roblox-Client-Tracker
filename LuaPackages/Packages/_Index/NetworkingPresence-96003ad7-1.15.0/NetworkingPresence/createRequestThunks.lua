local networkRequests = script.Parent.networkRequests

local createGetPresencesFromUserIds = require(networkRequests.createGetPresencesFromUserIds)
local createSetInvisibilityStatus = require(networkRequests.createSetInvisibilityStatus)
local networkingPresenceTypes = require(script.Parent.networkingPresenceTypes)

local createRequestThunks = function(config: networkingPresenceTypes.Config): networkingPresenceTypes.RequestThunks
	return {
		GetPresencesFromUserIds = createGetPresencesFromUserIds(config),
		SetInvisibilityStatus = createSetInvisibilityStatus(config),
	}
end

return createRequestThunks
