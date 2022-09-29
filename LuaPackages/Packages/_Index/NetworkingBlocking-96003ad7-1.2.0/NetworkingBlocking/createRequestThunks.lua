local NetworkingBlocking = script.Parent
local networkRequests = NetworkingBlocking.networkRequests
local createGetBlockedUsers = require(networkRequests.createGetBlockedUsers)
local createBlockUserById = require(networkRequests.createBlockUserById)
local createUnblockUserById = require(networkRequests.createUnblockUserById)

return function(config: { roduxNetworking: any })
	return {
		GetBlockedUsers = createGetBlockedUsers(config),
		BlockUserById = createBlockUserById(config),
		UnblockUserById = createUnblockUserById(config),
	}
end
