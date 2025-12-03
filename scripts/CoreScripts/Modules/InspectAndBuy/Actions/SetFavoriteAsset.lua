local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return Action(script.Name, function(id, isFavorite)
	return {
		id = id,
		isFavorite = isFavorite,
	}
end)
