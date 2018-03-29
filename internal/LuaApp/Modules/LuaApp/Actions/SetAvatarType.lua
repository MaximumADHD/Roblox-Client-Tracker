local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Action = require(Modules.Common.Action)

return Action("SetAvatarType", function(avatarType)
	return
	{
		avatarType = avatarType
	}
end)