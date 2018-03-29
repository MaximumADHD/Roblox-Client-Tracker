local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Action = require(Modules.Common.Action)

return Action("SelectCategoryTab", function(categoryIndex, tabIndex, position)
	return
	{
		categoryIndex = categoryIndex,
		tabIndex = tabIndex,
		position = position
	}
end)
