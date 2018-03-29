local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Action = require(Modules.Common.Action)

return Action("SetBodyColors", function(bodyColors)
	return
	{
		bodyColors = bodyColors
	}
end)