--!nonstrict
local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local NetworkingChat = dependencies.NetworkingChat
local getUsersFromConversations = require(SocialTab.utils.getUsersFromConversations)
local getFFlagSocialTabReplaceRefreshConversations =
	require(SocialTab.Flags.getFFlagSocialTabReplaceRefreshConversations)

local llama = dependencies.llama
local RoduxUsers = dependencies.RoduxUsers

local function userUpdatedFromUser(user)
	return RoduxUsers.Actions.UserUpdated({
		id = user.id,
		username = user.name,
		displayName = user.displayName,
		friendRank = user.friendRank,
		hasVerifiedBadge = user.hasVerifiedBadge,
	})
end

local convertActionsFunctions = {
	AddUser = function(action)
		return { userUpdatedFromUser(action.user) }
	end,

	AddUsers = function(action)
		return llama.Dictionary.values(llama.Dictionary.map(action.users, userUpdatedFromUser))
	end,

	[getFFlagSocialTabReplaceRefreshConversations() and NetworkingChat.GetUserConversations.Succeeded.name or ""] = getFFlagSocialTabReplaceRefreshConversations()
			and getUsersFromConversations
		or nil,
}

local reducer = RoduxUsers.installReducer()

return function(state, action)
	state = state or {
		byUserId = {},
	}

	local actions = { action }
	local convert = convertActionsFunctions[action.type]
	if convert then
		if getFFlagSocialTabReplaceRefreshConversations() then
			actions = convert(action, state)
		else
			actions = convert(action)
		end
	end

	return llama.List.reduce(actions, reducer, state)
end
