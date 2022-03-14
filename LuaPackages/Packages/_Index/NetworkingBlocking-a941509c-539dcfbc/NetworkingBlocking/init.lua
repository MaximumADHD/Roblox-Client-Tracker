--[[
	The NetworkingBlocking package API.
]]

local networkRequests = script.networkRequests
local createGetBlockedUsers = require(networkRequests.createGetBlockedUsers)
local createBlockUserById = require(networkRequests.createBlockUserById)
local createUnblockUserById = require(networkRequests.createUnblockUserById)

local function createRequestThunks(config)
	return {
		GetBlockedUsers = createGetBlockedUsers(config),
		BlockUserById = createBlockUserById(config),
		UnblockUserById = createUnblockUserById(config),
	}
end

return {
	config = createRequestThunks,
}
