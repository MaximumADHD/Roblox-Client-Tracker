local networkRequests = script.Parent.networkRequests
local createGetSkinnyUsersFromUserIds = require(networkRequests.createGetSkinnyUsersFromUserIds)
local createGetUsernameHistoryFromUserId = require(networkRequests.createGetUsernameHistoryFromUserId)
local createGetUserV2FromUserId = require(networkRequests.createGetUserV2FromUserId)

return function(config)
	return {
		GetSkinnyUsersFromUserIds = createGetSkinnyUsersFromUserIds(config),
		GetUsernameHistoryFromUserId = createGetUsernameHistoryFromUserId(config),
		GetUserV2FromUserId = createGetUserV2FromUserId(config),
	}
end
