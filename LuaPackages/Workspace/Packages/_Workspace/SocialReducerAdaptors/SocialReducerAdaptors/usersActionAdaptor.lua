local SocialReducerAdaptors = script:FindFirstAncestor("SocialReducerAdaptors")
local dependencies = require(SocialReducerAdaptors.dependencies)
local llama = dependencies.llama

type OldUser = {
	id: string,
	name: string,
	displayName: string,
	[string]: any,
}

type BaseAction = {
	type: string,
}

return function(roduxUsers)
	local function userUpdatedFromUser(user: OldUser)
		return roduxUsers.Actions.UserUpdated({
			id = user.id,
			username = user.name,
			displayName = user.displayName,
			hasVerifiedBadge = user.hasVerifiedBadge,
		})
	end

	return {
		AddUser = function(action: BaseAction & { user: OldUser })
			return { userUpdatedFromUser(action.user) }
		end,

		AddUsers = function(action: BaseAction & { users: { [number]: OldUser } })
			return llama.Dictionary.values(llama.Dictionary.map(action.users, userUpdatedFromUser))
		end,
	}
end
