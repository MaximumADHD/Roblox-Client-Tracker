local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local Rodux = require(VerifiedBadges.Parent.Rodux)
local Cryo = require(VerifiedBadges.Parent.Cryo)
local dependencies = require(VerifiedBadges.dependencies)

local UsersNetworking = dependencies.UsersNetworking
local FriendsNetworking = dependencies.FriendsNetworking

export type State = { [string]: boolean }

local DEFAULT_STATE: State = {}

local addDataFromList = function(state: State, newUsers: { { hasVerifiedBadge: boolean? } })
	local verifiedUsers = {}

	for _, user in ipairs(newUsers) do
		verifiedUsers[tostring(user.id)] = if user.hasVerifiedBadge then true else Cryo.None
	end

	return Cryo.Dictionary.join(state, verifiedUsers)
end

return Rodux.createReducer(DEFAULT_STATE, {
	[UsersNetworking.GetUserV2FromUserId.Succeeded.name] = function(state: State, action: any)
		return addDataFromList(state, { action.responseBody })
	end,

	[FriendsNetworking.GetFriendsFromUserId.Succeeded.name] = function(state: State, action: any)
		return addDataFromList(state, action.responseBody.data)
	end,
})
