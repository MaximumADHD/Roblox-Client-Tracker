local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action(script.Name, function(promptType, promptInfo)
	return {
		promptType = promptType,
		promptInfo = promptInfo,
	}
end)