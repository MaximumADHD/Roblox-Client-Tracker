local CorePackages = game:GetService("CorePackages")
local PolicyProvider = require(CorePackages.Packages.PolicyProvider)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagShowGameAgeRating = SharedFlags.FFlagShowGameAgeRating

local implementation = PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")
local TopBarAppPolicy = PolicyProvider.withGetPolicyImplementation(implementation)

TopBarAppPolicy.Mapper = function(policy)
	return {
		-- TODO: Remove TopBarAppPolicy completely once FFlagShowGameAgeRating cleaned up as true
		showBadgeOver12 = if not FFlagShowGameAgeRating then function()
			return policy.ShowBadgeOver12 or false
		end else nil,
	}
end

return TopBarAppPolicy
