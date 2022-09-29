local networkRequests = script.Parent.networkRequests
local createGetPresencesFromUserIds = require(networkRequests.createGetPresencesFromUserIds)

return function(config)
	return {
		GetPresencesFromUserIds = createGetPresencesFromUserIds(config),
	}
end
