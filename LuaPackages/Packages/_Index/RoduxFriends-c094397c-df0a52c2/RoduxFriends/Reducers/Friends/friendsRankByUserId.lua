--!strict

local RoduxFriends = script.Parent.Parent.Parent
local Packages = RoduxFriends.Parent
local Rodux = require(Packages.Rodux) :: any
local llama = require(Packages.llama) :: any

local roduxFriendsTypes = require(RoduxFriends.roduxFriendsTypes)

local DEFAULT_STATE: roduxFriendsTypes.FriendsRankByUserId = {}

return function(options: roduxFriendsTypes.RoduxFriendsOptions)
	local FriendsNetworking = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[FriendsNetworking.GetFriendsFromUserId.Succeeded.name] = function(state: roduxFriendsTypes.FriendsRankByUserId, action: roduxFriendsTypes.GetFriendsFromUserId)
			if not (action.queryArgs and action.queryArgs.userSort) then
				return state
			end

			local baseFriendId = tostring(action.namedIds.users)
			local friends = action.responseBody.data or {}

			local friendsRankByUserId = llama.Dictionary.map(friends, function(friend, rank)
				return rank, tostring(friend.id)
			end)

			return llama.Dictionary.join(state, {
				[baseFriendId] = friendsRankByUserId
			})
		end,
	})
end
