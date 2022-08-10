local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local Rodux = require(VerifiedBadges.Parent.Rodux)
local dependencies = require(VerifiedBadges.dependencies)
local RoduxNetworking = dependencies.RoduxNetworking

--[=[
	Function that generates the Verified Badges root reducer that holds the verified status of users and groups.
	To be used for integrating verified badges in a Rodux application.
	@within VerifiedBadges
]=]
local function installReducer()
	return Rodux.combineReducers({
		VerifiedUsers = require(script.VerifiedUsers),
		VerifiedGroups = require(script.VerifiedGroups),
		NetworkStatus = RoduxNetworking.installReducer(),
	})
end

return installReducer
