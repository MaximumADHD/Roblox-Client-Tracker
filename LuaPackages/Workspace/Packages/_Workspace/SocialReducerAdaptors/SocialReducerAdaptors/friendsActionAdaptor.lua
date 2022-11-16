--!nonstrict
local SocialReducerAdaptors = script:FindFirstAncestor("SocialReducerAdaptors")
local dependencies = require(SocialReducerAdaptors.dependencies)
local Players = dependencies.Players
local llama = dependencies.llama

type OldUser = {
	id: string,
	isFriend: boolean?,
	[string]: any,
}

return function(roduxFriends: any, localUserId: string?)
	local function friendshipCreatedWithUser(user: OldUser)
		return roduxFriends.Actions.FriendshipCreated(user.id, localUserId or tostring(Players.LocalPlayer.UserId))
	end

	return {
		AddUser = function(action: { user: OldUser })
			if action.user.isFriend then
				return { friendshipCreatedWithUser(action.user) }
			else
				return { action }
			end
		end,

		AddUsers = function(action: { users: { [number]: OldUser } })
			return llama.Dictionary.values(llama.Dictionary.map(action.users, function(user, key)
				if user.isFriend then
					return friendshipCreatedWithUser(user)
				end

				return nil
			end))
		end,

		SetFriendRequestsCount = function(action: { count: number })
			return { roduxFriends.Actions.RequestReceivedCountUpdated(action.count) }
		end,
	}
end
