--!strict
local RoduxFriends = script.Parent.Parent.Parent.Parent
local Packages = RoduxFriends.Parent
local Rodux = require(Packages.Rodux) :: any
local llama = require(Packages.llama) :: any

local Actions = RoduxFriends.Actions
local RecommendationCreated = require(Actions.RecommendationCreated)
local FriendRequestDeclined = require(Actions.FriendRequestDeclined)

local roduxFriendsTypes = require(RoduxFriends.roduxFriendsTypes)

type RecommendationsHasIncomingFriendRequest = roduxFriendsTypes.RecommendationsHasIncomingFriendRequest

local DEFAULT_STATE: RecommendationsHasIncomingFriendRequest = {}

return function(options: roduxFriendsTypes.RoduxFriendsOptions)
	local FriendsNetworking = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[RecommendationCreated.name] = function(
			state: RecommendationsHasIncomingFriendRequest,
			action: roduxFriendsTypes.RecommendationCreated
		)
			local recommendedUser = action.payload.recommendedUser
			local recommendedUserId = tostring(recommendedUser.id)
			local hasIncomingFriendRequest = if recommendedUser.hasIncomingFriendRequest then true else false

			return llama.Dictionary.join(state, {
				[recommendedUserId] = hasIncomingFriendRequest,
			})
		end :: any,
		[FriendsNetworking.GetFriendRecommendationsFromUserId.Succeeded.name] = function(
			state: RecommendationsHasIncomingFriendRequest,
			action: roduxFriendsTypes.GetFriendRecommendationsFromUserId
		)
			local responseData = llama.List.filter(action.responseBody.data, function(user)
				return user.contextType ~= "Contacts"
			end, {})

			local incomingFriendRequests = llama.List.reduce(responseData, function(acc, user)
				local userId = tostring(user.id)
				acc[userId] = if user.friendRequest then true else false
				return acc
			end, {})

			return llama.Dictionary.join(state, incomingFriendRequests)
		end,

		[FriendsNetworking.DeclineFriendRequestFromUserId.Succeeded.name] = function(
			state: RecommendationsHasIncomingFriendRequest,
			action: roduxFriendsTypes.DeclineFriendRequestFromUserId
		)
			local ids: { string } = action.ids
			local incomingFriendRequests = llama.List.reduce(ids, function(acc, id)
				acc[tostring(id)] = false
				return acc
			end, {})

			return llama.Dictionary.join(state, incomingFriendRequests)
		end,

		[FriendRequestDeclined.name] = function(
			state: RecommendationsHasIncomingFriendRequest,
			action: roduxFriendsTypes.FriendRequestDeclined
		)
			local ids: { string } = action.ids
			local incomingFriendRequests = llama.List.reduce(ids, function(acc, id)
				acc[tostring(id)] = false
				return acc
			end, {})

			return llama.Dictionary.join(state, incomingFriendRequests)
		end,

		[FriendsNetworking.DeclineAllFriendRequests.Succeeded.name] = function(_state: RecommendationsHasIncomingFriendRequest)
			return DEFAULT_STATE
		end,
	})
end
