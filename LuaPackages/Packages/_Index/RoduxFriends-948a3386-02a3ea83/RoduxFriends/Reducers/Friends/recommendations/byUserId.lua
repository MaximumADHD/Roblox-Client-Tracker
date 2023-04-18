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
local RecommendationDestroyed = require(Actions.RecommendationDestroyed)

local roduxFriendsTypes = require(RoduxFriends.roduxFriendsTypes)

local DEFAULT_STATE: roduxFriendsTypes.RecommendationsByUserId = {}

local removeRecommendation = function(
	users: { baseUserId: string, recommendedUserId: string },
	state: roduxFriendsTypes.RecommendationsByUserId
)
	local existingState = state[users.baseUserId]

	return if existingState then llama.Dictionary.removeKey(existingState, users.recommendedUserId) else nil
end

local removeRecommendationBothWays = function(users, state: roduxFriendsTypes.RecommendationsByUserId)
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

local removeMultipleRecommendations = function(config, state: roduxFriendsTypes.RecommendationsByUserId)
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
	local NetworkingBlocking = options.networkingBlocking

	return Rodux.createReducer(DEFAULT_STATE, {
		[RecommendationCreated.name] = function(
			state: roduxFriendsTypes.RecommendationsByUserId,
			action: roduxFriendsTypes.RecommendationCreated
		)
			local userId = tostring(action.payload.baseUserId)
			local recommendedUserId = tostring(action.payload.recommendedUser.id)

			local existingState = state[userId] or {}

			return llama.Dictionary.join(state, {
				[userId] = llama.Dictionary.join(
					existingState,
					{ [recommendedUserId] = Recommendation.format(action.payload.recommendedUser) }
				),
			})
		end :: any,

		[RecommendationDestroyed.name] = function(
			state: roduxFriendsTypes.RecommendationsByUserId,
			action: roduxFriendsTypes.RecommendationDestroyed
		)
			return llama.Dictionary.join(state, {
				[action.payload.baseUserId] = removeRecommendation(action.payload, state),
			})
		end,

		[FriendsNetworking.GetFriendRecommendationsFromUserId.Succeeded.name] = function(
			state: roduxFriendsTypes.RecommendationsByUserId,
			action: roduxFriendsTypes.GetFriendRecommendationsFromUserId
		)
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

			local existingState = state[baseFriendId] or {}

			return llama.Dictionary.join(state, {
				[baseFriendId] = llama.Dictionary.join(existingState, recommendations),
			})
		end,

		[FriendshipCreated.name] = function(
			state: roduxFriendsTypes.RecommendationsByUserId,
			action: roduxFriendsTypes.FriendshipCreated
		)
			return removeRecommendationBothWays(action.payload, state)
		end,

		[FriendsNetworking.GetFriendsFromUserId.Succeeded.name] = function(
			state: roduxFriendsTypes.RecommendationsByUserId,
			action: roduxFriendsTypes.GetFriendsFromUserId
		)
			return removeMultipleRecommendations(
				{ baseFriendId = tostring(action.namedIds.users), users = action.responseBody.data },
				state
			)
		end,

		[FriendsNetworking.AcceptFriendRequestFromUserId.Succeeded.name] = function(
			state: roduxFriendsTypes.RecommendationsByUserId,
			action: roduxFriendsTypes.AcceptFriendRequestFromUserId
		)
			local id = tostring(action.ids[1])
			local baseUserId = tostring(action.additionalData.currentUserId)

			return removeRecommendationBothWays({
				userId1 = baseUserId,
				userId2 = id,
			}, state)
		end,

		[NetworkingBlocking.BlockUserById.Succeeded.name] = function(
			state: roduxFriendsTypes.RecommendationsByUserId,
			action: roduxFriendsTypes.BlockUserById
		)
			local baseUserId = tostring(action.additionalData.currentUserId)
			local recommendedUserId = tostring(action.namedIds.users)

			return removeRecommendationBothWays({
				userId1 = baseUserId,
				userId2 = recommendedUserId,
			}, state)
		end,
	})
end
