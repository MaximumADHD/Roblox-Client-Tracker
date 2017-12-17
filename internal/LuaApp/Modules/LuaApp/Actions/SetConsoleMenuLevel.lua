local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Action = require(Modules.Common.Action)

return Action("SetConsoleMenuLevel", function(menuLevel)
	return {
		menuLevel = menuLevel
	}
end)