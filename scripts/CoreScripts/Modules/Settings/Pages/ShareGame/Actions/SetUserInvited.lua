local Modules = game:GetService("CorePackages").AppTempCommon
local Action = require(Modules.Common.Action)

return Action(script.Name, function(userId, isInvited)
	return {
		userId = tostring(userId),
		isInvited = isInvited,
	}
end)