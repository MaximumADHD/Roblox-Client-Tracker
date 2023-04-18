--!strict

local RoduxFriends = script.Parent.Parent.Parent
local Packages = RoduxFriends.Parent
local Rodux = require(Packages.Rodux) :: any
local llama = require(Packages.llama) :: any

local Actions = RoduxFriends.Actions
local FriendshipCreated = require(Actions.FriendshipCreated)
local FriendshipDestroyed = require(Actions.FriendshipDestroyed)
local FriendRequestCreated = require(Actions.FriendRequestCreated)
local FriendRequestDeclined = require(Actions.FriendRequestDeclined)

local roduxFriendsTypes = require(RoduxFriends.roduxFriendsTypes)

local DEFAULT_STATE: roduxFriendsTypes.FriendshipStatus = {}

local function mapFriendshipStatusToEnum(status: string): Enum.FriendStatus
	if status == "NotFriends" then
		return Enum.FriendStatus.NotFriend
	elseif status == "Friends" then
		return Enum.FriendStatus.Friend
	elseif status == "RequestSent" then
		return Enum.FriendStatus.FriendRequestSent
	elseif status == "RequestReceived" then
		return Enum.FriendStatus.FriendRequestReceived
	else
		return Enum.FriendStatus.Unknown
	end
end

local function difference(a: {}, b: {}): { [number]: any }
	local tempTable = {}
	for k, v in pairs(a) do
		tempTable[v] = true
	end

	for k, v in pairs(b) do
		tempTable[v] = nil
	end

	local resultTable = {}
	local n = 0
	for k, v in pairs(a) do
		if tempTable[v] then
			n = n + 1
			resultTable[n] = v
		end
	end

	return resultTable
end

return function(options: roduxFriendsTypes.RoduxFriendsOptions)
	local FriendsNetworking = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[FriendsNetworking.GetFriendshipStatus.Succeeded.name] = function(state: roduxFriendsTypes.FriendshipStatus, action: any)
			local statuses = {}
			for _, friendship in pairs(action.responseBody.data) do
				statuses[tostring(friendship.id)] = mapFriendshipStatusToEnum(friendship.status)
			end
			return llama.Dictionary.join(state, statuses)
		end,

		[FriendsNetworking.GetExtendedFriendshipStatus.Succeeded.name] = function(state, action)
			local userId = tostring(action.ids[1])
			return llama.Dictionary.join(state, { [userId] = mapFriendshipStatusToEnum(action.responseBody.status) })
		end,

		[FriendsNetworking.GetFriendsFromUserId.Succeeded.name] = function(state: roduxFriendsTypes.FriendshipStatus, action: roduxFriendsTypes.GetFriendsFromUserId)
			local stateFriendIds = llama.Dictionary.keys(llama.Dictionary.filter(state, function(friendship)
				return friendship == Enum.FriendStatus.Friend
			end))
			local requestFriendIds = llama.List.map(llama.Dictionary.values(action.responseBody.data), function(friend)
				return tostring(friend.id)
			end)
			local addedFriends = difference(requestFriendIds, stateFriendIds)
			local removedFriends = difference(stateFriendIds, requestFriendIds)
			for _, addedFriend in pairs(addedFriends) do
				state = llama.Dictionary.join(state, {
					[addedFriend] = Enum.FriendStatus.Friend,
				})
			end
			for _, removedFriend in pairs(removedFriends) do
				state = llama.Dictionary.join(state, {
					[removedFriend] = Enum.FriendStatus.Unknown,
				})
			end

			return state
		end,

		[FriendsNetworking.UnfriendTargetUserId.Succeeded.name] = function(state: roduxFriendsTypes.FriendshipStatus, action: roduxFriendsTypes.UnfriendTargetUserId)
			local removedUser = tostring(action.namedIds.users)
			return llama.Dictionary.join(state, {
				[removedUser] = Enum.FriendStatus.NotFriend,
			})
		end,

		[FriendsNetworking.AcceptFriendRequestFromUserId.Succeeded.name] = function(state: roduxFriendsTypes.FriendshipStatus, action: roduxFriendsTypes.AcceptFriendRequestFromUserId)
			local id = tostring(action.ids[1])
			return llama.Dictionary.join(state, {
				[id] = Enum.FriendStatus.Friend,
			})
		end,

		[FriendsNetworking.DeclineFriendRequestFromUserId.Succeeded.name] = function(state: roduxFriendsTypes.FriendshipStatus, action: roduxFriendsTypes.DeclineFriendRequestFromUserId)
			local ids: { string } = action.ids
			local statuses = {}
			for _, id in pairs(ids) do
				statuses[tostring(id)] = Enum.FriendStatus.NotFriend
			end
			return llama.Dictionary.join(state, statuses)
		end,

		[FriendsNetworking.GetFriendRequests.Succeeded.name] = function(state: roduxFriendsTypes.FriendshipStatus, action: roduxFriendsTypes.GetFriendRequestsSucceeded)
			local friendRequests = action.responseBody.data
			local statuses = {}
			for _, request in pairs(friendRequests) do
				statuses[tostring(request.id)] = Enum.FriendStatus.FriendRequestReceived
			end
			return llama.Dictionary.join(state, statuses)
		end,

		[FriendsNetworking.DeclineAllFriendRequests.Succeeded.name] = function(state: roduxFriendsTypes.FriendshipStatus)
			local declinedUsers = {}
			for userId, status in pairs(state) do
				if status == Enum.FriendStatus.FriendRequestReceived then
					declinedUsers[tostring(userId)] = Enum.FriendStatus.NotFriend
				end
			end
			return llama.Dictionary.join(state, declinedUsers)
		end,

		[FriendsNetworking.RequestFriendshipFromUserId.Succeeded.name] = function(state: roduxFriendsTypes.FriendshipStatus, action: roduxFriendsTypes.GetFriendRecommendationsFromUserId)
			local userId = tostring(action.namedIds.users)
			return llama.Dictionary.join(state, {
				[userId] = Enum.FriendStatus.FriendRequestSent,
			})
		end,

		[FriendshipDestroyed.name] = function(state: roduxFriendsTypes.FriendshipStatus, action: roduxFriendsTypes.FriendshipDestroyed)
			local userId = tostring(action.payload.userId1)
			return llama.Dictionary.join(state, {
				[userId] = Enum.FriendStatus.NotFriend,
			})
		end,

		[FriendshipCreated.name] = function(state: roduxFriendsTypes.FriendshipStatus, action: roduxFriendsTypes.FriendshipCreated)
			local userId: string = tostring(action.payload.userId1)
			return llama.Dictionary.join(state, {
				[userId] = Enum.FriendStatus.Friend,
			})
		end,

		[FriendRequestCreated.name] = function(state: roduxFriendsTypes.FriendshipStatus, action: roduxFriendsTypes.FriendRequestCreated)
			local userId: string = tostring(action.requesteeId)
			return llama.Dictionary.join(state, {
				[userId] = Enum.FriendStatus.FriendRequestReceived,
			})
		end,

		[FriendRequestDeclined.name] = function(state: roduxFriendsTypes.FriendshipStatus, action: roduxFriendsTypes.FriendRequestDeclined)
			local ids: { string } = action.ids
			local statuses = {}
			for _, id in pairs(ids) do
				statuses[tostring(id)] = Enum.FriendStatus.NotFriend
			end
			return llama.Dictionary.join(state, statuses)
		end,
	})
end
