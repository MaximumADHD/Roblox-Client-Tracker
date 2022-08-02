local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local PolicyProvider = PurchasePromptDeps.PolicyProvider

local implementation = PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")
local PurchasePromptPolicy = PolicyProvider.withGetPolicyImplementation(implementation)

PurchasePromptPolicy.Mapper = function(policy)
	return {
		--[[
		enablePurchaseWarningChecks = function()
			if policy.EnablePurchaseWarningChecks ~= nil then
				return policy.EnablePurchaseWarningChecks
			end
			return true
		end,
		--]]
	}
end

return PurchasePromptPolicy
