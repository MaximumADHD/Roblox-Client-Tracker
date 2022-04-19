--!strict
local FriendsReducer: any = script.Parent.Parent.Parent.Parent
local Root: any = FriendsReducer.Parent
local Rodux = require(Root.Rodux) :: any

local Actions: any = FriendsReducer.Actions
local FriendRequestCreated: any = require(Actions.FriendRequestCreated)
local FriendRequestDeclined: any = require(Actions.FriendRequestDeclined)

local roduxFriendsTypes = require(FriendsReducer.roduxFriendsTypes)
local removeIdsFromRequestsStore: any = require(FriendsReducer.Reducers.Friends.utils.removeIdsFromRequestsStore)

local llama = require(Root.llama) :: any
type SourceUniverseIds = { [string]: number? }

local DEFAULT_STATE: SourceUniverseIds = {}

return function(options: any)
	local FriendsNetworking: any = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[FriendsNetworking.AcceptFriendRequestFromUserId.Succeeded.name] = function(state: SourceUniverseIds, action: any)
			local ids: { string } = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendsNetworking.DeclineFriendRequestFromUserId.Succeeded.name] = function(state: SourceUniverseIds, action: any)
			local ids: { string } = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendsNetworking.GetFriendRequests.Succeeded.name] = function(state: SourceUniverseIds, action: roduxFriendsTypes.GetFriendRequestsSucceeded)
			local response = action.responseBody
			local friendRequests = response.data

			local newIds: SourceUniverseIds = {}
			table.foreach(friendRequests, function(_, request)
				newIds[tostring(request.id)] = request.friendRequest.sourceUniverseId
			end)
			local newState = llama.Dictionary.join(state, newIds)

			return newState
		end,
		[FriendRequestCreated.name] = function(state: SourceUniverseIds, action: any)
			local userId: string = action.requesteeId
			local sourceUniverseId: { number }? = action.sourceUniverseId

			return llama.Dictionary.join(state, {
				[tostring(userId)] = sourceUniverseId,
			})
		end,
		[FriendRequestDeclined.name] = function(state: SourceUniverseIds, action: any)
			local ids: { string } = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendsNetworking.DeclineAllFriendRequests.Succeeded.name] = function()
			return {}
		end,
	})
end
