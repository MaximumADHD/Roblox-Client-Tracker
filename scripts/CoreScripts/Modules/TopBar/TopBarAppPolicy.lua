local CorePackages = game:GetService("CorePackages")
local PolicyProvider = require(CorePackages.PolicyProvider)

local implementation = PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")
local TopBarAppPolicy = PolicyProvider.withGetPolicyImplementation(implementation)

TopBarAppPolicy.Mapper = function(policy)
	return {
		getDisplayVoiceBetaBadge = function()
			return policy.DisplayVoiceBetaBadge or false
		end,
		showBadgeOver12 = function()
			return policy.ShowBadgeOver12 or false
		end,
	}
end

return TopBarAppPolicy
