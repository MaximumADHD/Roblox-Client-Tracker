local createRequestThunks = require(script.createRequestThunks)
local networkingFriendsTypes = require(script.networkingFriendsTypes)

return {
	config = createRequestThunks,
	networkingFriendsTypes = networkingFriendsTypes,
}
