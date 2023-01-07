game:DefineFastFlag("ContactImporterTweakDesignsForInvites", false)
local getOffPlatformFriendRequestsEnabledForDev = require(script.Parent.getOffPlatformFriendRequestsEnabledForDev)

return function()
	return game:GetFastFlag("ContactImporterTweakDesignsForInvites") or getOffPlatformFriendRequestsEnabledForDev()
end
