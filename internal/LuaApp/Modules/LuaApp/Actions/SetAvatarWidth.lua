local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Action = require(Modules.Common.Action)

return Action("SetAvatarWidth", function(width, depth)
	return
	{
		width = width,
		depth = depth
	}
end)
