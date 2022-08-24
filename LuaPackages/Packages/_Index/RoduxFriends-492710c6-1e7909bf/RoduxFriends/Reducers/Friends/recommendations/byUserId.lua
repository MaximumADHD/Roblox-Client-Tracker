--!strict
local RoduxFriends = script.Parent.Parent.Parent.Parent
local Packages = RoduxFriends.Parent
local Rodux = require(Packages.Rodux) :: any
local llama = require(Packages.llama) :: any

local Models = RoduxFriends.Models
local Recommendation = require(Models.Recommendation)
local Actions = RoduxFriends.Actions
local RecommendationCreated = require(Actions.RecommendationCreated)
local FriendshipCreated = require(Actions.FriendshipCreated)
local FriendRequestCreated = require(Actions.FriendRequestCreated)
local RecommendationDestroyed = require(Actions.RecommendationDestroyed)

local roduxFriendsTypes = require(RoduxFriends.roduxFriendsTypes)

local DEFAULT_STATE: roduxFriendsTypes.RecommendationByUserId = {}

local removeRecommendation =
	function(users: { baseUserId: string, recommendedUserId: string }, state: roduxFriendsTypes.RecommendationByUserId)
		local existingState = state[users.baseUserId]

		return if existingState then llama.Dictionary.removeKey(existingState, users.recommendedUserId) else nil
	end

local removeRecommendationBothWays = function(users, state: roduxFriendsTypes.RecommendationByUserId)
	return llama.Dictionary.join(state, {
		[users.userId1] = removeRecommendation(
			{ baseUserId = users.userId1, recommendedUserId = users.userId2 },
			state
		),
		[users.userId2] = removeRecommendation(
			{ baseUserId = users.userId2, recommendedUserId = users.userId1 },
			state
		),
	})
end

local removeMultipleRecommendations = function(config, state: roduxFriendsTypes.RecommendationByUserId)
	local newState = state

	llama.Dictionary.map(config.users, function(user)
		newState = removeRecommendationBothWays({
			userId1 = config.baseFriendId,
			userId2 = tostring(user.id),
		}, newState)
	end)

	return newState
end

return function(options: roduxFriendsTypes.RoduxFriendsOptions)
	local FriendsNetworking = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[RecommendationCreated.name] = function(state: roduxFriendsTypes.RecommendationByUserId, action: roduxFriendsTypes.RecommendationCreated)
			local existingState = state[action.payload.baseUserId] or {}

			return llama.Dictionary.join(state, {
				[action.payload.baseUserId] = llama.Dictionary.join(
					existingState,
					{ [action.payload.recommendedUser.id] = Recommendation.format(action.payload.recommendedUser) }
				),
			})
		end :: (
			state: roduxFriendsTypes.RecommendationByUserId,
			action: any
		) -> roduxFriendsTypes.RecommendationByUserId,

		[FriendsNetworking.GetFriendRecommendationsFromUserId.Succeeded.name] = function(state: roduxFriendsTypes.RecommendationByUserId, action: roduxFriendsTypes.GetFriendRecommendationsFromUserId)
			local baseFriendId = tostring(action.namedIds.users)
			local responseData = action.responseBody.data

			local recommendations = llama.Dictionary.map(responseData, function(user, _)
				local userId = tostring(user.id)

				return Recommendation.format({
					id = userId,
					mutualFriendsList = user.mutualFriendsList,
					rank = user.rank,
					contextType = user.contextType,
				}),
					userId
			end)

			return llama.Dictionary.join(state, {
				[baseFriendId] = recommendations,
			})
		end,

		[RecommendationDestroyed.name] = function(state: roduxFriendsTypes.RecommendationByUserId, action: roduxFriendsTypes.RecommendationDestroyed)
			return llama.Dictionary.join(state, {
				[action.payload.baseUserId] = removeRecommendation(action.payload, state),
			})
		end,

		[FriendsNetworking.GetFriendsFromUserId.Succeeded.name] = function(state: roduxFriendsTypes.RecommendationByUserId, action: roduxFriendsTypes.GetFriendsFromUserId)
			return removeMultipleRecommendations(
				{ baseFriendId = tostring(action.namedIds.users), users = action.responseBody.data },
				state
			)
		end,

		[FriendsNetworking.GetFriendRequests.Succeeded.name] = function(state: roduxFriendsTypes.RecommendationByUserId, action: roduxFriendsTypes.GetFriendRequestsSucceeded)
			return removeMultipleRecommendations(
				{ baseFriendId = tostring(action.additionalData.currentUserId), users = action.responseBody.data },
				state
			)
		end,

		[FriendshipCreated.name] = function(state: roduxFriendsTypes.RecommendationByUserId, action: roduxFriendsTypes.FriendshipCreated)
			return removeRecommendationBothWays(action.payload, state)
		end,

		[FriendRequestCreated.name] = function(state: roduxFriendsTypes.RecommendationByUserId, action: roduxFriendsTypes.FriendRequestCreated)
			return removeRecommendationBothWays({
				userId1 = action.requesterId,
				userId2 = action.requesteeId,
			}, state)
		end,
	})
end
