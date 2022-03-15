local Modules = game:GetService("CorePackages").AppTempCommon
local Action = require(Modules.Common.Action)

return Action("RECEIVED_USER_INVITE_STATUS", function(userId, inviteStatus)
	return {
		userId = tostring(userId),
		inviteStatus = inviteStatus,
	}
end)