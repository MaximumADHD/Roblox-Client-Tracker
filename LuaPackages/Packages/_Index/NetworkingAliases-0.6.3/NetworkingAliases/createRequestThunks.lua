local networkRequests = script.Parent.networkRequests
local createGetTagsFromUserIds = require(networkRequests.createGetTagsFromUserIds)
local createSetUserTag = require(networkRequests.createSetUserTag)
local networkingAliasesTypes = require(script.Parent.networkingAliasesTypes)

return function(config: networkingAliasesTypes.Config)
	return {
		GetTagsFromUserIds = createGetTagsFromUserIds(config),
		SetUserTag = createSetUserTag(config),
	}
end
