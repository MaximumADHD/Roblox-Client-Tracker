local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Action = require(Modules.Common.Action)

return Action("SetAssets", function(assets)
	return
	{
		assets = assets
	}
end)
