local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local Rodux = require(VerifiedBadges.Parent.Rodux)
local dependencies = require(VerifiedBadges.dependencies)
local RoduxNetworking = dependencies.RoduxNetworking

return function()
	return Rodux.combineReducers({
		HasVerifiedBadge = require(script.HasVerifiedBadge),
		NetworkStatus = RoduxNetworking.installReducer(),
	})
end
