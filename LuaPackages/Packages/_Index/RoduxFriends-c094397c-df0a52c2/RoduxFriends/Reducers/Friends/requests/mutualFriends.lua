--!strict
local FriendsReducer: any = script.Parent.Parent.Parent.Parent
local Root: any = FriendsReducer.Parent
local Rodux = require(Root.Rodux) :: any

local Actions: any = FriendsReducer.Actions
local FriendRequestCreated: any = require(Actions.FriendRequestCreated)
local FriendRequestDeclined: any = require(Actions.FriendRequestDeclined)

local removeIdsFromRequestsStore: any = require(FriendsReducer.Reducers.Friends.utils.removeIdsFromRequestsStore)
local roduxFriendsTypes = require(FriendsReducer.roduxFriendsTypes)

local llama = require(Root.llama) :: any

type MutualFriends = { [string]: { number }? }

local DEFAULT_STATE: MutualFriends = {}

return function(options: any)
	local FriendsNetworking: any = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[FriendsNetworking.AcceptFriendRequestFromUserId.Succeeded.name] = function(state: MutualFriends, action: any)
			local ids: { string } = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendsNetworking.DeclineFriendRequestFromUserId.Succeeded.name] = function(state: MutualFriends, action: any)
			local ids: { string } = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendsNetworking.GetFriendRequests.Succeeded.name] = function(state: MutualFriends, action: roduxFriendsTypes.GetFriendRequestsSucceeded)
			local response = action.responseBody
			local friendRequests = response.data

			local newIds: { [string]: string } = {}
			table.foreach(friendRequests, function(_, request: any)
				if request.mutualFriendsList then
					newIds[tostring(request.id)] = llama.List.map(request.mutualFriendsList, function(id)
						return tostring(id)
					end)
				end
			end)
			local newState = llama.Dictionary.join(state, newIds)

			return newState
		end,
		[FriendRequestCreated.name] = function(state: MutualFriends, action: any)
			local userId: string = action.requesteeId
			local mutualFriends: { number }? = action.mutualFriends

			return llama.Dictionary.join(state, {
				[tostring(userId)] = llama.List.map(mutualFriends, function(id)
					return tostring(id)
				end),
			})
		end,
		[FriendRequestDeclined.name] = function(state: MutualFriends, action: any)
			local ids: { string } = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendsNetworking.DeclineAllFriendRequests.Succeeded.name] = function()
			return {}
		end,
	})
end
