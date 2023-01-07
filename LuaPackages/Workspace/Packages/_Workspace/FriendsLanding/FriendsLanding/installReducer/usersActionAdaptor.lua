local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local llama = dependencies.llama
local RoduxUsers = dependencies.RoduxUsers

local function userUpdatedFromUser(user)
	return RoduxUsers.Actions.UserUpdated({
		id = user.id,
		username = user.name,
		displayName = user.displayName,
	})
end

return {
	AddUser = function(action)
		return { userUpdatedFromUser(action.user) }
	end,

	AddUsers = function(action)
		return llama.Dictionary.values(llama.Dictionary.map(action.users, userUpdatedFromUser))
	end,
}
