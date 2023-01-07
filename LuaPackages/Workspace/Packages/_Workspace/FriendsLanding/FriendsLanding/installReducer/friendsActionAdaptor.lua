--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Players = dependencies.Players

local llama = dependencies.llama
local RoduxFriends = dependencies.RoduxFriends

return function(localUserId: string?)
	local function friendshipCreatedWithUser(user)
		return RoduxFriends.Actions.FriendshipCreated(user.id, localUserId or tostring(Players.LocalPlayer.UserId))
	end

	return {
		AddUser = function(action)
			if action.user.isFriend then
				return { friendshipCreatedWithUser(action.user) }
			else
				return { action }
			end
		end,

		AddUsers = function(action)
			return llama.Dictionary.values(llama.Dictionary.map(action.users, function(user, key)
				if user.isFriend then
					return friendshipCreatedWithUser(user)
				end

				return nil
			end))
		end,

		SetFriendRequestsCount = function(action)
			return { RoduxFriends.Actions.RequestReceivedCountUpdated(action.count) }
		end,
	}
end
