local CorePackages = game:GetService("CorePackages")
local PolicyProvider = require(CorePackages.PolicyProvider)

local implementation = PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")
local TrustAndSafetyAppPolicy = PolicyProvider.withGetPolicyImplementation(implementation)

TrustAndSafetyAppPolicy.Mapper = function(policy)
	return {
		-- TODO add policies
	}
end

return TrustAndSafetyAppPolicy
