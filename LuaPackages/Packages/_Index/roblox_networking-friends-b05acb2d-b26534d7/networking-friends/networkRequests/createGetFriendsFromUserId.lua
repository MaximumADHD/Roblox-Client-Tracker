local FRIENDS_URL: string = require(script.Parent.Parent.FRIENDS_URL)

export type QueryArgs = {
	userSort: string?,
}

return function(config: any)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetFriendsFromUserId" }, function(requestBuilder: any, userId: number | string, queryArgs: QueryArgs?)
		return requestBuilder(FRIENDS_URL):path("v1"):path("users"):id(userId):path("friends"):queryArgs({
			userSort = queryArgs and queryArgs.userSort or nil
		})
	end)
end
