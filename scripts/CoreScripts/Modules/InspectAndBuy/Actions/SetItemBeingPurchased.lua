local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(itemId, itemType)
	return {
		itemId = itemId,
		itemType = itemType,
	}
end)
