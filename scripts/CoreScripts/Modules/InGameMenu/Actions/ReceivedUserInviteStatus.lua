local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action("RECEIVED_USER_INVITE_STATUS", function(userId, inviteStatus)
	return {
		userId = tostring(userId),
		inviteStatus = inviteStatus,
	}
end)
