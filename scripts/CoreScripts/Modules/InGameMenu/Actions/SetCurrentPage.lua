local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action("SET_CURRENT_PAGE", function(pageKey)
	return {
		newPage = pageKey,
	}
end)
