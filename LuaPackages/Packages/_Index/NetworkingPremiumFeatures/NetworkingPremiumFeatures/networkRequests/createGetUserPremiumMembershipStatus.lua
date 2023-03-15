--[[
	GetUserPremiumMembershipStatus API

	Query path: /v1/users/{userId}/validate_membership
]]
local PREMIUM_FEATURES_URL = require(script.Parent.Parent.PREMIUM_FEATURES_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET(
		{ Name = "GetUserPremiumMembershipStatus" },
		function(requestBuilder, userId: string | number)
			return requestBuilder(PREMIUM_FEATURES_URL):path("v1"):path("users"):id(userId):path("validate-membership")
		end
	)
end
