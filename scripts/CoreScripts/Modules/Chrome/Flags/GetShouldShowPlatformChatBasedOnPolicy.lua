local CorePackages = game:GetService("CorePackages")

local UniversalAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy)

return function()
	local shouldShowPlatformChatBasedOnPolicy = UniversalAppPolicy.getAppFeaturePolicies().getCanSeeChatTab()

	return shouldShowPlatformChatBasedOnPolicy
end
