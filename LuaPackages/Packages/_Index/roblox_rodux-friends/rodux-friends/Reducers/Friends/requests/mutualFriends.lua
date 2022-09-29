local FriendsReducer: any = script:FindFirstAncestor("rodux-friends")
local Root: any = FriendsReducer.Parent
local Rodux: any = require(Root.Rodux)

local Actions: any = FriendsReducer.Actions
local FriendRequestCreated: any = require(Actions.FriendRequestCreated)
local FriendRequestDeclined: any = require(Actions.FriendRequestDeclined)

local removeIdsFromRequestsStore: any = require(FriendsReducer.Reducers.Friends.utils.removeIdsFromRequestsStore)

local Cryo: any = require(Root.Cryo)

type MutualFriends = {[string]: {number}?}

local DEFAULT_STATE: MutualFriends = {}

return function(options: any)
	local FriendsNetworking: any = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[FriendsNetworking.AcceptFriendRequestFromUserId.Succeeded.name] = function(state: MutualFriends, action: any)
			local ids: {string} = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendsNetworking.DeclineFriendRequestFromUserId.Succeeded.name] = function(state: MutualFriends, action: any)
			local ids: {string} = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendsNetworking.GetFriendRequests.Succeeded.name] = function(state: MutualFriends, action: any)
			local response: table = action.responseBody
			local friendRequests: table = response.data

			local newIds: {string} = {}
			table.foreach(friendRequests, function(_, request: table)
				if request.mutualFriendsList then
					newIds[tostring(request.id)] = Cryo.List.map(request.mutualFriendsList, function(id)
						return tostring(id)
					end)
				end
			end)
			local newState = Cryo.Dictionary.join(state, newIds)

			return newState
		end,
		[FriendRequestCreated.name] = function(state: MutualFriends, action: any)
			local userId: string = action.id
			local mutualFriends: {number}? = action.mutualFriends

			return Cryo.Dictionary.join(state, {
				[tostring(userId)] = Cryo.List.map(mutualFriends, function(id)
					return tostring(id)
				end)
			})
		end,
		[FriendRequestDeclined.name] = function(state: MutualFriends, action: any)
			local ids: {string} = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendsNetworking.DeclineAllFriendRequests.Succeeded.name] = function()
			return {}
		end,
	})
end
