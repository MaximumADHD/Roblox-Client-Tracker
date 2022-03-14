--[[
	Reducer for the friendship status between the local player and other users
]]
local Packages = script:FindFirstAncestor("RoduxProfile").Parent
local Rodux = require(Packages.Rodux)
local Dash = require(Packages.Dash)

export type State = {
	-- maps user ID to what friendship status it has with local player
	-- friendship status = ['NotFriends', 'Friends', 'RequestSent', 'RequestReceived']
	[string]: string,
}

local function mapFriendshipStatusToEnum(status: string)
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

--[[
	Function to configure and return the FriendshipStatus reducer

	@param options - Configuration options for the reducer
				.networkingUserInfo - The Networking User Info instance
]]
return function(options)
	local NetworkingUserInfo = options.networkingUserInfo
	local NetworkingFriends = options.networkingFriends
	local NetworkingBlocking = options.networkingBlocking

	return Rodux.createReducer({}, {
		[NetworkingUserInfo.GetFriendshipStatus.Succeeded.name] = function(state, action)
			local userId = tostring(action.responseBody.data[1].id)
			return Dash.join(
				state,
				{ [userId] = mapFriendshipStatusToEnum(action.responseBody.data[1].status) }
			)
		end,
		[NetworkingUserInfo.GetExtendedFriendshipStatus.Succeeded.name] = function(state, action)
			local userId = tostring(action.ids[1])
			return Dash.join(
				state,
				{ [userId] = mapFriendshipStatusToEnum(action.responseBody.status) }
			)
		end,
		[NetworkingFriends.UnfriendTargetUserId.Succeeded.name] = function(state, action)
			local userId = tostring(action.namedIds.users)
			return Dash.join(state, { [userId] = Enum.FriendStatus.NotFriend })
		end,
		[NetworkingFriends.DeclineFriendRequestFromUserId.Succeeded.name] = function(state, action)
			local userId = tostring(action.namedIds.users)
			return Dash.join(state, { [userId] = Enum.FriendStatus.NotFriend })
		end,
		[NetworkingFriends.AcceptFriendRequestFromUserId.Succeeded.name] = function(state, action)
			local userId = tostring(action.namedIds.users)
			return Dash.join(state, { [userId] = Enum.FriendStatus.Friend })
		end,
		[NetworkingFriends.RequestFriendshipFromUserId.Succeeded.name] = function(state, action)
			local userId = tostring(action.namedIds.users)
			return Dash.join(state, { [userId] = Enum.FriendStatus.FriendRequestSent })
		end,
		[NetworkingBlocking.BlockUserById.Succeeded.name] = function(state, action)
			local userId = tostring(action.postBody.userId)
			return Dash.join(state, { [userId] = Enum.FriendStatus.NotFriend })
		end,
	})
end
