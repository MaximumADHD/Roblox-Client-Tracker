local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action(script.Name, function(callId: string, userId: number, username: string)
	return { callId = callId, userId = userId, username = username }
end)
