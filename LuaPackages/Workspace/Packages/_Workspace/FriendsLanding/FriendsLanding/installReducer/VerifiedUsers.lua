local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local Rodux = dependencies.Rodux
local llama = dependencies.llama
local FriendsNetworking = dependencies.FriendsNetworking

export type State = { [string]: boolean }

local DEFAULT_STATE: State = {}

export type User = {
	id: number,
	hasVerifiedBadge: boolean,
}

local addDataFromList = function(state: State, newUsers: { User })
	local verifiedUsers = {}

	for _, user in ipairs(newUsers) do
		verifiedUsers[tostring(user.id)] = if user.hasVerifiedBadge then true else llama.None
	end

	return llama.Dictionary.join(state, verifiedUsers)
end

return Rodux.createReducer(DEFAULT_STATE, {
	[FriendsNetworking.GetFriendsFromUserId.Succeeded.name] = function(state: State, action: any)
		return addDataFromList(state, action.responseBody.data)
	end,
})
