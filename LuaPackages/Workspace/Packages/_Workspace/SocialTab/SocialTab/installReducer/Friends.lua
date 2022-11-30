--!nonstrict
local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local llama = dependencies.llama
local RoduxFriends = dependencies.RoduxFriends

local function friendshipCreatedWithUser(user)
	return RoduxFriends.Actions.FriendshipCreated(user.id, "localUserId")
end

local convertActionsFunctions = {
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

local reducer = RoduxFriends.installReducer()

return function(state, action)
	state = state or {
		countsByUserId = {},
		byUserId = {},
		requests = {
			receivedCount = 0,
		},
	}

	local actions = { action }
	local convert = convertActionsFunctions[action.type]
	if convert then
		actions = convert(action)
	end

	return llama.List.reduce(actions, reducer, state)
end
