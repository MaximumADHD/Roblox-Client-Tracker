game:DefineFastFlag("FriendInvitesEnabledForSoothsayers_v1", false)
local getOffPlatformFriendRequestsEnabledForDev = require(script.Parent.getOffPlatformFriendRequestsEnabledForDev)

return function()
	return game:GetFastFlag("FriendInvitesEnabledForSoothsayers_v1") or getOffPlatformFriendRequestsEnabledForDev()
end
