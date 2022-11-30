local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Rodux = dependencies.Rodux
local llama = dependencies.llama

return Rodux.createReducer({}, {
	SetUserMembershipType = function(state, action)
		return llama.Dictionary.set(state, action.userId, action.membershipType ~= Enum.MembershipType.None)
	end,
})
