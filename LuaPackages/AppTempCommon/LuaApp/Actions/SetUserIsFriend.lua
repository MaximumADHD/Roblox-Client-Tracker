local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action(script.Name, function(userId, isFriend)
	return {
		userId = userId,
		isFriend = isFriend,
	}
end)