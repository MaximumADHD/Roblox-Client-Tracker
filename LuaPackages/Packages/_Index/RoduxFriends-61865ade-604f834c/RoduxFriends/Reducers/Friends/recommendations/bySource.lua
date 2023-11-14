--!strict
local RoduxFriends = script.Parent.Parent.Parent.Parent
local Packages = RoduxFriends.Parent
local Rodux = require(Packages.Rodux) :: any
local llama = require(Packages.llama) :: any

local Actions = RoduxFriends.Actions
local RecommendationSourceCreated = require(Actions.RecommendationSourceCreated)

local roduxFriendsTypes = require(RoduxFriends.roduxFriendsTypes)

local DEFAULT_STATE: roduxFriendsTypes.RecommendationsBySource = {}

return function(_options: roduxFriendsTypes.RoduxFriendsOptions)
	return Rodux.createReducer(DEFAULT_STATE, {
		[RecommendationSourceCreated.name] = function(
			state: roduxFriendsTypes.RecommendationsBySource,
			action: roduxFriendsTypes.RecommendationSourceCreated
		)
			local source = action.payload.source
			local recommendationIds = action.payload.recommendationIds or {}

			local recommendationIdsMappedToTrue = llama.List.reduce(recommendationIds, function(acc, id)
				acc[tostring(id)] = true
				return acc
			end, {})

			return llama.Dictionary.join(state, {
				[source] = recommendationIdsMappedToTrue,
			})
		end,
	})
end
