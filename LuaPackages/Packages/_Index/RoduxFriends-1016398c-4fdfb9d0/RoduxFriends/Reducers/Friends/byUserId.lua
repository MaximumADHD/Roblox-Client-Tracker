local FriendsReducer = script:FindFirstAncestor("RoduxFriends")
local Root = FriendsReducer.Parent
local Rodux = require(Root.Rodux)
local llama = require(Root.llama)

local Actions = FriendsReducer.Actions
local FriendshipCreated = require(Actions.FriendshipCreated)
local FriendshipDestroyed = require(Actions.FriendshipDestroyed)

local addUser = require(script.Parent.utils.addUser)
local removeUser = require(script.Parent.utils.removeUser)
local setFriendshipsInStore = require(script.Parent.utils.setFriendshipsInStore)
local removeTargetUserFriendshipInStore = require(script.Parent.utils.removeTargetUserFriendshipInStore)

local DEFAULT_STATE = {}

return function(options)
	local FriendsNetworking = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[FriendshipCreated.name] = function(state, action)
			assert(type(action.payload.userId1) == "string", "Expected userId1 to be a string")
			assert(type(action.payload.userId2) == "string", "Expected userId2 to be a string")

			return llama.Dictionary.join(state, {
				[action.payload.userId1] = addUser(state[action.payload.userId1], action.payload.userId2),
				[action.payload.userId2] = addUser(state[action.payload.userId2], action.payload.userId1),
			})
		end,

		[FriendshipDestroyed.name] = function(state, action)
			assert(type(action.payload.userId1) == "string", "Expected userId1 to be a string")
			assert(type(action.payload.userId2) == "string", "Expected userId2 to be a string")

			return llama.Dictionary.join(state, {
				[action.payload.userId1] = removeUser(state[action.payload.userId1], action.payload.userId2),
				[action.payload.userId2] = removeUser(state[action.payload.userId2], action.payload.userId1),
			})
		end,

		[FriendsNetworking.GetFriendsFromUserId.Succeeded.name] = function(state, action)
			return setFriendshipsInStore(state, action)
		end,

		[FriendsNetworking.UnfriendTargetUserId.Succeeded.name] = function(state, action)
			return removeTargetUserFriendshipInStore(state, action)
		end,
		[FriendsNetworking.AcceptFriendRequestFromUserId.Succeeded.name] = function(state, action)
			local id = tostring(action.ids[1])
			local currentUserId = tostring(action.additionalData.currentUserId)

			return llama.Dictionary.join(state, {
				[id] = addUser(state[id], currentUserId),
				[currentUserId] = addUser(state[currentUserId], id),
			})
		end,
	})
end
