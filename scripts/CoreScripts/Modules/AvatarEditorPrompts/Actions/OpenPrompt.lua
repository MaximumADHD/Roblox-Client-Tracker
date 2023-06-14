local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(promptType, promptInfo)
	return {
		promptType = promptType,
		promptInfo = promptInfo,
	}
end)
