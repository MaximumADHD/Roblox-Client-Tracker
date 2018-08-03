local Modules = game:GetService("CorePackages").AppTempCommon
local Action = require(Modules.Common.Action)

return Action(script.Name, function(userId, inviteStatus)
	return {
		userId = tostring(userId),
		inviteStatus = inviteStatus,
	}
end)