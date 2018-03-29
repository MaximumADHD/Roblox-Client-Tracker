local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Action = require(Modules.Common.Action)

return Action("SetAvatarHeadSize", function(head)
	return
	{
		head = head
	}
end)
