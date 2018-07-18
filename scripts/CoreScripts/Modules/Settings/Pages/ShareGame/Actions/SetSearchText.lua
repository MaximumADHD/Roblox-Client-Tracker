local Modules = game:GetService("CorePackages").AppTempCommon
local Action = require(Modules.Common.Action)

return Action(script.Name, function(searchText)
	return {
		searchText = searchText,
	}
end)