local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action(script.Name, function(key, status)
	return {
		key = key,
		status = status
	}
end)
