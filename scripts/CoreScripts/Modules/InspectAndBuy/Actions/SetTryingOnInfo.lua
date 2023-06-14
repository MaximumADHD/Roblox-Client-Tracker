local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(tryingOn, assetId, assetTypeId)
	return {
		tryingOn = tryingOn,
		assetId = assetId,
		assetTypeId = assetTypeId,
	}
end)
