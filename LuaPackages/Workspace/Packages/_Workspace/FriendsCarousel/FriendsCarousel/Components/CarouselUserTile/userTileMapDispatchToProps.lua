local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local NetworkingFriends = dependencies.NetworkingFriends

type RequestArgs = {
	targetUserId: string,
	currentUserId: string,
}

local mapDispatchToProps = function(dispatch: any)
	return {
		sendFriendRequest = function(args: RequestArgs)
			return dispatch(NetworkingFriends.RequestFriendshipFromUserId.API(args))
		end,
		unfriendUser = function(args: RequestArgs)
			return dispatch(NetworkingFriends.UnfriendTargetUserId.API(args))
		end,
	}
end

export type Props = typeof(mapDispatchToProps(...))

return mapDispatchToProps
