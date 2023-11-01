--!strict
local FriendsReducer: any = script.Parent.Parent.Parent.Parent
local Root: any = FriendsReducer.Parent
local Rodux = require(Root.Rodux) :: any

local Actions = FriendsReducer.Actions
local FriendRequestCreated = require(Actions.FriendRequestCreated)
local FriendRequestDeclined = require(Actions.FriendRequestDeclined)
local FriendshipCreated = require(Actions.FriendshipCreated)

local removeIdsFromRequestsStore: any = require(FriendsReducer.Reducers.Friends.utils.removeIdsFromRequestsStore)
local roduxFriendsTypes = require(FriendsReducer.roduxFriendsTypes)

local llama = require(Root.llama) :: any

type ByUserId = { [string]: boolean }

local DEFAULT_STATE: ByUserId = {}

return function(options: any)
	local FriendsNetworking: any = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[FriendsNetworking.AcceptFriendRequestFromUserId.Succeeded.name] = function(state: ByUserId, action: any)
			local ids: { string } = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendsNetworking.DeclineFriendRequestFromUserId.Succeeded.name] = function(state: ByUserId, action: any)
			local ids: { string } = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendsNetworking.GetFriendRequests.Succeeded.name] = function(state: ByUserId, action: roduxFriendsTypes.GetFriendRequestsSucceeded)
			local response = action.responseBody
			local friendRequests = response.data

			local newIds: { [string]: boolean } = {}
			for _, request: any in pairs(friendRequests) do
				newIds[tostring(request.id)] = true
			end
			local newState = llama.Dictionary.join(state, newIds)

			return newState
		end,
		[FriendRequestCreated.name] = function(state: ByUserId, action: any)
			local userId: string = action.requesteeId

			return llama.Dictionary.join(state, {
				[tostring(userId)] = true,
			})
		end,
		[FriendRequestDeclined.name] = function(state: ByUserId, action: any)
			local ids: { string } = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendshipCreated.name] = function(state, action)
			assert(type(action.payload.userId1) == "string", "Expected userId1 to be a string")
			assert(type(action.payload.userId2) == "string", "Expected userId2 to be a string")

			return removeIdsFromRequestsStore(state, { action.payload.userId1, action.payload.userId2 })
		end,
		[FriendsNetworking.DeclineAllFriendRequests.Succeeded.name] = function()
			return {}
		end,
	})
end
