local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Action = require(Modules.Common.Action)

return Action("SetAvatarHeight", function(height)
	return
	{
		height = height
	}
end)
