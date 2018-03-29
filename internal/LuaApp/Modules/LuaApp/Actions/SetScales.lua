local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Action = require(Modules.Common.Action)

return Action("SetScales", function(scales)
	return
	{
		scales = scales
	}
end)