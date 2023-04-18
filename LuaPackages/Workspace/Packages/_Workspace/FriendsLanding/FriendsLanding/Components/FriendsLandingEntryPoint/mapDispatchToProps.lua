local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local RoduxNetworking = dependencies.RoduxNetworking
local Promise = dependencies.Promise
local t = dependencies.t

local NetworkStatus = RoduxNetworking.Enum.NetworkStatus

local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)

local FriendsNetworking = dependencies.FriendsNetworking

local RefreshPageDataInterface = if getFFlagFriendsLandingInactiveFriendsEnabled()
	then t.strictInterface({
		localUserId = t.string,
		inactiveFriendsNetworkRequestStatus = t.string,
		onResolve = t.union(t.callback, t.table),
		onError = t.union(t.callback, t.table),
	})
	else t.strictInterface({
		localUserId = t.string,
		onResolve = t.union(t.callback, t.table),
		onError = t.union(t.callback, t.table),
	})

return function(dispatch)
	return {
		refreshPageData = function(args)
			assert(RefreshPageDataInterface(args))

			if getFFlagFriendsLandingInactiveFriendsEnabled() then
				return Promise.all({
					dispatch(FriendsNetworking.GetFriendsFromUserId.API(args.localUserId)),
					dispatch(FriendsNetworking.GetFriendRequestsCount.API()),
					dispatch(function(store)
						if
							args.inactiveFriendsNetworkRequestStatus == NetworkStatus.NotStarted
							or args.inactiveFriendsNetworkRequestStatus == NetworkStatus.Failed
						then
							return dispatch(FriendsNetworking.GetInactiveFriends.API(args.localUserId))
						else
							return Promise.resolve()
						end
					end),
				})
					:andThen(args.onResolve)
					:catch(args.onError)
			else
				return Promise.all({
					dispatch(FriendsNetworking.GetFriendsFromUserId.API(args.localUserId)),
					dispatch(FriendsNetworking.GetFriendRequestsCount.API()),
				})
					:andThen(args.onResolve)
					:catch(args.onError)
			end
		end,

		getFriendRequestsCount = function()
			return dispatch(FriendsNetworking.GetFriendRequestsCount.API())
		end,
	}
end
