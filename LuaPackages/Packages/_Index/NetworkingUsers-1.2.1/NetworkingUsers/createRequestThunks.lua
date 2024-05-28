local networkRequests = script.Parent.networkRequests
local createGetSkinnyUsersFromUserIds = require(networkRequests.createGetSkinnyUsersFromUserIds)
local createGetUsernameHistoryFromUserId = require(networkRequests.createGetUsernameHistoryFromUserId)
local createGetUserV2FromUserId = require(networkRequests.createGetUserV2FromUserId)
local createGetDisplayNameValidation = require(networkRequests.createGetDisplayNameValidation)
local createSetDisplayName = require(networkRequests.createSetDisplayName)
local createSetDescription = require(networkRequests.createSetDescription)

return function(config)
	return {
		GetSkinnyUsersFromUserIds = createGetSkinnyUsersFromUserIds(config),
		GetUsernameHistoryFromUserId = createGetUsernameHistoryFromUserId(config),
		GetUserV2FromUserId = createGetUserV2FromUserId(config),
		GetDisplayNameValidation = createGetDisplayNameValidation(config),
		SetDisplayName = createSetDisplayName(config),
		SetDescription = createSetDescription(config),
	}
end
