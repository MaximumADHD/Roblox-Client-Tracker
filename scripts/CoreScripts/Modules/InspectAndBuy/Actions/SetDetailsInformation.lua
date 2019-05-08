local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action(script.Name, function(viewingDetails, assetId)
	return {
		viewingDetails = viewingDetails,
		assetId = assetId,
	}
end)