local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Action = require(Modules.Common.Action)

return Action("SelectCategory", function(categoryIndex)
	return {
		categoryIndex = categoryIndex
	}
end)