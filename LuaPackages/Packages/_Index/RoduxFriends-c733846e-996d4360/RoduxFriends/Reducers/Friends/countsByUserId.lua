local FriendsReducer = script:FindFirstAncestor("RoduxFriends")
local Root = FriendsReducer.Parent
local llama = require(Root.llama)

local Actions = FriendsReducer.Actions
local FriendshipCreated = require(Actions.FriendshipCreated)
local FriendshipDestroyed = require(Actions.FriendshipDestroyed)
local addUser = require(script.Parent.utils.addUser)
local removeUser = require(script.Parent.utils.removeUser)
local setFriendshipsInStore = require(script.Parent.utils.setFriendshipsInStore)
local removeTargetUserFriendshipInStore = require(script.Parent.utils.removeTargetUserFriendshipInStore)
local countUserFriendsInStore = require(script.Parent.utils.countUserFriendsInStore)

local DEFAULT_STATE = {
	byUserId = {},
	countsByUserId = {},
}

-- Using if statements rather than `createReducer` as this needs to return something different to state by default.
return function(options)
	local FriendsNetworking = options.friendsNetworking

	return function(state, action)
		local currentState = state or DEFAULT_STATE

		if action and action.type == FriendshipCreated.name then
			assert(type(action.payload.userId1) == "string", "Expected userId1 to be a string")
			assert(type(action.payload.userId2) == "string", "Expected userId2 to be a string")

			return llama.Dictionary.join(currentState.countsByUserId, {
				[action.payload.userId1] = #(addUser(currentState.byUserId[action.payload.userId1], action.payload.userId2)),
				[action.payload.userId2] =  #(addUser(currentState.byUserId[action.payload.userId2], action.payload.userId1)),
			})
		end

		if action and action.type == FriendshipDestroyed.name then
			assert(type(action.payload.userId1) == "string", "Expected userId1 to be a string")
			assert(type(action.payload.userId2) == "string", "Expected userId2 to be a string")

			return llama.Dictionary.join(currentState.countsByUserId, {
				[action.payload.userId1] = #(removeUser(currentState.byUserId[action.payload.userId1], action.payload.userId2)),
				[action.payload.userId2] =  #(removeUser(currentState.byUserId[action.payload.userId2], action.payload.userId1)),
			})
		end

		if action and action.type == FriendsNetworking.GetFriendsFromUserId.Succeeded.name then
			local newByUserId = setFriendshipsInStore(currentState.byUserId, action)
			return countUserFriendsInStore(newByUserId)
		end

		if action and action.type == FriendsNetworking.UnfriendTargetUserId.Succeeded.name then
			local newState = removeTargetUserFriendshipInStore(state.byUserId, action)
			return countUserFriendsInStore(newState)
		end

		return currentState.countsByUserId
	end
end
