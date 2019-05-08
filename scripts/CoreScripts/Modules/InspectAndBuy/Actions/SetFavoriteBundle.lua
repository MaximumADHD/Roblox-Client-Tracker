local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action(script.Name, function(id, isFavorite)
	return {
		id = id,
		isFavorite = isFavorite,
	}
end)