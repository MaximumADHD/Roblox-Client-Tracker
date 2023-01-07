local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local FriendsNetworking = dependencies.FriendsNetworking
local Promise = dependencies.Promise
local t = dependencies.t

local RefreshPageDataInterface = t.strictInterface({
	localUserId = t.string,
	onResolve = t.union(t.callback, t.table),
	onError = t.union(t.callback, t.table),
})

return function(dispatch)
	return {
		refreshPageData = function(args)
			assert(RefreshPageDataInterface(args))

			return Promise.all({
				dispatch(FriendsNetworking.GetFriendsFromUserId.API(args.localUserId)),
				dispatch(FriendsNetworking.GetFriendRequestsCount.API()),
			})
				:andThen(args.onResolve)
				:catch(args.onError)
		end,

		getFriendRequestsCount = function()
			return dispatch(FriendsNetworking.GetFriendRequestsCount.API())
		end,
	}
end
