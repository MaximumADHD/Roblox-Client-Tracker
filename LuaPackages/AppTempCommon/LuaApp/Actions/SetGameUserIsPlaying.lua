local CorePackages = game:GetService("CorePackages")
local Common = CorePackages.AppTempCommon.Common

local Action = require(Common.Action)

return Action(script.Name, function(userId, universeId)
	return {
		userId = userId,
		universeId = universeId,
	}
end)