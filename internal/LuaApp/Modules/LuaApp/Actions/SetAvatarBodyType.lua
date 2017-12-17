local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Action = require(Modules.Common.Action)

return Action("SetAvatarBodyType", function(bodyType)
	return {
		bodyType = bodyType
	}
end)
