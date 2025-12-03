local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return Action(script.Name, function(itemId, itemType)
	return {
		itemId = itemId,
		itemType = itemType,
	}
end)
