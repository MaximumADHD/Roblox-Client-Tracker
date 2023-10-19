local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(userId, combinedName)
	return {
		userId = userId,
		combinedName = combinedName,
	}
end)
