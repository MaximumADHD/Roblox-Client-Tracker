local networkRequests = script.Parent.networkRequests
local createGetTagsFromUserIds = require(networkRequests.createGetTagsFromUserIds)
local createSetUserTag = require(networkRequests.createSetUserTag)

return function(config)
	return {
		GetTagsFromUserIds = createGetTagsFromUserIds(config),
		SetUserTag = createSetUserTag(config),
	}
end
