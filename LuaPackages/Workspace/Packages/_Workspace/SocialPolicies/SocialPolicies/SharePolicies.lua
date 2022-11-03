local Root = script.Parent
local Packages = Root.Parent
local isSubjectToDesktopPolicies = require(Packages.SharedFlags).isSubjectToDesktopPolicies

local function SharePolicies(policy)
	return {
		getAccountProviderName = function()
			return policy.AccountProviderName or ""
		end,
		shouldShowGameDetailsShareButton = function()
			-- sharing is not available yet on desktop
			if isSubjectToDesktopPolicies() then
				return false
			end
			return policy.GameDetailsShareButton or false
		end,
		shouldShowCatalogShareButton = function()
			-- sharing is not available yet on desktop
			if isSubjectToDesktopPolicies() then
				return false
			end
			return policy.CatalogShareButton or false
		end,
		shouldShareToAccountProvider = function()
			return policy.ShareToAccountProvider or false
		end,
		shouldInviteFromAccountProvider = function()
			return policy.InviteFromAccountProvider or false
		end,
		getShareToAccountProviderTimeout = function()
			return policy.ShareToAccountProviderTimeout or 5.0
		end,
	}
end

export type Type = typeof(SharePolicies(...))

return SharePolicies
