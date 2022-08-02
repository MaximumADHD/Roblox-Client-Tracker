local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local Rodux = require(VerifiedBadges.Parent.Rodux)
local dependencies = require(VerifiedBadges.dependencies)
local RoduxNetworking = dependencies.RoduxNetworking

return function()
	return Rodux.combineReducers({
		VerifiedUsers = require(script.VerifiedUsers),
		VerifiedGroups = require(script.VerifiedGroups),
		NetworkStatus = RoduxNetworking.installReducer(),
	})
end
