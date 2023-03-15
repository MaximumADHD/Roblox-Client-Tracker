local networkRequests = script.networkRequests
local createGetUserPremiumMembershipStatus = require(networkRequests.createGetUserPremiumMembershipStatus)

local function createRequestThunks(config)
	return {
		GetUserPremiumMembershipStatus = createGetUserPremiumMembershipStatus(config),
	}
end

return {
	config = createRequestThunks,
}
