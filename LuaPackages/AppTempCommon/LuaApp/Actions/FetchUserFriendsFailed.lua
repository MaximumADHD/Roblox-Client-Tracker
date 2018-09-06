local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action(script.Name, function(userId, response)
    return {
		userId = userId,
        response = response
    }
end)