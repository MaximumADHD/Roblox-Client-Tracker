local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)

return Rodux.makeActionCreator(script.Name, function(itemId, itemType)
	return {
		itemId = itemId,
		itemType = itemType,
	}
end)