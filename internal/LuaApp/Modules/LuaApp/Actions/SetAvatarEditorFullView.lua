local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Action = require(Modules.Common.Action)

return Action("SetAvatarEditorFullView", function(fullView)
	return
	{
		fullView = fullView
	}
end)