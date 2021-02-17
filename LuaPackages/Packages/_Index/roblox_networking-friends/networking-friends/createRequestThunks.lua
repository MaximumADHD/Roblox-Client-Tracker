local networkRequests = script.Parent.networkRequests
local createGetFriendsFromUserId = require(networkRequests.createGetFriendsFromUserId)

return function(config)
	return {
		GetFriendsFromUserId = createGetFriendsFromUserId(config),
	}
end
