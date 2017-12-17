local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Action = require(Modules.Common.Action)

return Action("SetAvatarProportion", function(proportion)
	return {
		proportion = proportion
	}
end)
