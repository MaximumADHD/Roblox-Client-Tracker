local FriendsReducer: any = script:FindFirstAncestor("rodux-friends")
local Root: any = FriendsReducer.Parent
local Rodux: any = require(Root.Rodux)

local Actions: any = FriendsReducer.Actions
local FriendRequestCreated: any = require(Actions.FriendRequestCreated)
local FriendRequestDeclined: any = require(Actions.FriendRequestDeclined)

local removeIdsFromRequestsStore: any = require(FriendsReducer.Reducers.Friends.utils.removeIdsFromRequestsStore)

local Cryo: any = require(Root.Cryo)
type SentAt = {[string]: DateTime?}

local DEFAULT_STATE: SentAt = {}

return function(options: any)
	local FriendsNetworking: any = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[FriendsNetworking.AcceptFriendRequestFromUserId.Succeeded.name] = function(state: SentAt, action: any)
			local ids: {string} = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendsNetworking.DeclineFriendRequestFromUserId.Succeeded.name] = function(state: SentAt, action: any)
			local ids: {string} = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendsNetworking.GetFriendRequests.Succeeded.name] = function(state: SentAt, action: any)
			local response: table = action.responseBody
			local friendRequests: table = response.data

			local newTimestamps: {string} = {}
			table.foreach(friendRequests, function(_, request)
				newTimestamps[tostring(request.id)] = DateTime.fromIsoDate(request.friendRequest.sentAt)
			end)

			return Cryo.Dictionary.join(state, newTimestamps)
		end,
		[FriendRequestCreated.name] = function(state: SentAt, action: any)
			local userId: string = tostring(action.id)
			local sentAt: {string}? = action.sentAt

			return Cryo.Dictionary.join(state, {
				[userId] = DateTime.fromIsoDate(sentAt)
			})
		end,
		[FriendRequestDeclined.name] = function(state: SentAt, action: any)
			local ids: {string} = action.ids

			return removeIdsFromRequestsStore(state, ids)
		end,
		[FriendsNetworking.DeclineAllFriendRequests.Succeeded.name] = function()
			return DEFAULT_STATE
		end,
	})
end
