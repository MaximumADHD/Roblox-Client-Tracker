local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(searchText)
	return {
		searchText = searchText,
	}
end)
