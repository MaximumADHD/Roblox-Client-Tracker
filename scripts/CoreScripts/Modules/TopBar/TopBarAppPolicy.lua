local CorePackages = game:GetService("CorePackages")
local PolicyProvider = require(CorePackages.PolicyProvider)

local implementation = PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")
local TopBarAppPolicy = PolicyProvider.withGetPolicyImplementation(implementation)

TopBarAppPolicy.Mapper = function(policy)
	return {
	}
end

return TopBarAppPolicy
