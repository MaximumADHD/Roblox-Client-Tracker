--!strict
local FriendsReducer: any = script.Parent.Parent.Parent.Parent
local Root: any = FriendsReducer.Parent
local Rodux: any = require(Root.Rodux) :: any

local roduxFriendsTypes = require(FriendsReducer.roduxFriendsTypes)

local Actions: any = FriendsReducer.Actions
local FriendRequestCreated: any = require(Actions.FriendRequestCreated)
local FriendRequestDeclined: any = require(Actions.FriendRequestDeclined)
local FriendshipCreated: any = require(Actions.FriendshipCreated)

local removeIdsFromRequestsStore: any = require(FriendsReducer.Reducers.Friends.utils.removeIdsFromRequestsStore)

local llama: any = require(Root.llama) :: any
type SentAt = { [string]: DateTime? }

local DEFAULT_STATE: SentAt = {}

return function(options: any)
	local FriendsNetworking: any = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[FriendsNetworking.AcceptFriendRequestFromUserId.Succeeded.name] = function(state: SentAt, action: any)
			local ids: { string } = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendsNetworking.DeclineFriendRequestFromUserId.Succeeded.name] = function(state: SentAt, action: any)
			local ids: { string } = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendsNetworking.GetFriendRequests.Succeeded.name] = function(state: SentAt, action: roduxFriendsTypes.GetFriendRequestsSucceeded)
			local response = action.responseBody
			local friendRequests = response.data

			local newTimestamps: SentAt = {}
			for _, request in pairs(friendRequests) do
				newTimestamps[tostring(request.id)] = DateTime.fromIsoDate(request.friendRequest.sentAt)
			end

			return llama.Dictionary.join(state, newTimestamps)
		end,
		[FriendRequestCreated.name] = function(state: SentAt, action: any)
			local userId: string = tostring(action.requesteeId)
			local sentAt: string = action.sentAt

			return llama.Dictionary.join(state, {
				[userId] = DateTime.fromIsoDate(sentAt),
			})
		end,
		[FriendRequestDeclined.name] = function(state: SentAt, action: any)
			local ids: { string } = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendshipCreated.name] = function(state: SentAt, action: any)
			return removeIdsFromRequestsStore(state, { action.payload.userId1, action.payload.userId2 })
		end,
		[FriendsNetworking.DeclineAllFriendRequests.Succeeded.name] = function()
			return DEFAULT_STATE
		end,
	})
end
