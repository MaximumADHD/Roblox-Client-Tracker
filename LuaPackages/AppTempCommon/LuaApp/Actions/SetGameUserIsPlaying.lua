local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(userId, universeId)
	return {
		userId = userId,
		universeId = universeId,
	}
end)
