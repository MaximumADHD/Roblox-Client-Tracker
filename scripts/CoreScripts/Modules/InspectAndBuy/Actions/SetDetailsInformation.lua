local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return Action(script.Name, function(viewingDetails, assetId)
	return {
		viewingDetails = viewingDetails,
		assetId = assetId,
	}
end)
