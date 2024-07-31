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
type SenderNickname = { [string]: string? }

local DEFAULT_STATE: SenderNickname = {}

return function(options: any)
	local FriendsNetworking: any = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[FriendsNetworking.AcceptFriendRequestFromUserId.Succeeded.name] = function(state: SenderNickname, action: any)
			local ids: { string } = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendsNetworking.DeclineFriendRequestFromUserId.Succeeded.name] = function(
			state: SenderNickname,
			action: any
		)
			local ids: { string } = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendsNetworking.GetFriendRequests.Succeeded.name] = function(
			state: SenderNickname,
			action: roduxFriendsTypes.GetFriendRequestsSucceeded
		)
			local response = action.responseBody
			local friendRequests = response.data

			local newIds: SenderNickname = {}
			for _, request in pairs(friendRequests) do
				newIds[tostring(request.id)] = request.friendRequest.senderNickname
			end
			local newState = llama.Dictionary.join(state, newIds)

			return newState
		end,
		[FriendRequestCreated.name] = function(state: SenderNickname, action: any)
			local userId: string = action.requesteeId
			local senderNickname: { number }? = action.senderNickname

			return llama.Dictionary.join(state, {
				[tostring(userId)] = senderNickname,
			})
		end,
		[FriendRequestDeclined.name] = function(state: SenderNickname, action: any)
			local ids: { string } = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendsNetworking.DeclineAllFriendRequests.Succeeded.name] = function()
			return {}
		end,
	})
end
