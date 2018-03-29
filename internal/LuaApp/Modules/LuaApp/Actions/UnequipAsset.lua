local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Action = require(Modules.Common.Action)

return Action("UnequipAsset", function(assetType, assetId)
	return
	{
		assetType = assetType,
		assetId = assetId
	}
end)