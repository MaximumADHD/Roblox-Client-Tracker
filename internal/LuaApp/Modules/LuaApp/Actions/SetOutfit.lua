local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Action = require(Modules.Common.Action)

return Action("SetOutfit", function(assets, bodyColors)
	return
	{
		assets = assets,
		bodyColors = bodyColors
	}
end)