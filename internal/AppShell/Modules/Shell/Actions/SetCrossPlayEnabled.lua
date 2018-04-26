local CoreGui = game:GetService("CoreGui")
local Action = require(CoreGui.RobloxGui.Modules.Common.Action)

return Action("SetCrossPlayEnabled", function(enabled)
	return {
        enabled = enabled
    }
end)