--!strict
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)
local networkingFriendsTypes = require(script.Parent.Parent.networkingFriendsTypes)

type QueryArgs = {
	query: string?,
	userSort: string?,
	cursor: string?,
	limit: number?
}

return function(config: networkingFriendsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET({ Name = "SearchFriendsByQuery" }, function(requestBuilder: any, userId: number | string, queryArgs: QueryArgs?)
		return requestBuilder(FRIENDS_URL):path("v1"):path("users"):id(userId):path("friends"):path("search"):queryArgs({
			query = if queryArgs then queryArgs.query else nil,
			userSort = if queryArgs then queryArgs.userSort else nil,
			cursor = if queryArgs then queryArgs.cursor else nil,
			limit = if queryArgs then queryArgs.limit else nil,
		})
	end)
end
