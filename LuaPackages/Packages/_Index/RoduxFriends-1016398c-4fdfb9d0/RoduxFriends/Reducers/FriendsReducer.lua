local byUserId = require(script.Parent.Friends.byUserId)
local countsByUserId = require(script.Parent.Friends.countsByUserId)
local requests = require(script.Parent.Friends.requests)
local recommendations = require(script.Parent.Friends.recommendations)
local friendshipStatus = require(script.Parent.Friends.friendshipStatus)
local friendsRankByUserId = require(script.Parent.Friends.friendsRankByUserId)
local contactNamesByUserId = require(script.Parent.Friends.contactNamesByUserId)

local DEFAULT_STATE = {
	countsByUserId = {},
	byUserId = {},
	requests = {
		receivedCount = 0,
	},
	recommendations = {},
	friendshipStatus = {},
	friendsRankByUserId = {},
	contactNamesByUserId = {},
}

return function(options)
	return function(state, action)
		local newState = state or DEFAULT_STATE

		local byUserIdReducer = byUserId(options)
		local countsByUserIdReducer = countsByUserId(options)
		local requestsReducer = requests(options)
		local recommendationsReducer = recommendations(options)
		local friendshipStatusReducer = friendshipStatus(options)
		local friendsRankByUserIdReducer = friendsRankByUserId(options)
		local contactNamesByUserIdReducer = contactNamesByUserId(options)

		return {
			byUserId = byUserIdReducer(newState.byUserId, action),
			-- countsByUserId needs both byUserId and previous count data
			countsByUserId = countsByUserIdReducer(state, action),
			requests = requestsReducer(newState.requests, action),
			recommendations = recommendationsReducer(newState.recommendations, action),
			friendshipStatus = friendshipStatusReducer(newState.friendshipStatus, action),
			friendsRankByUserId = friendsRankByUserIdReducer(newState.friendsRankByUserId, action),
			contactNamesByUserId = contactNamesByUserIdReducer(newState.contactNamesByUserId, action),
		}
	end
end
