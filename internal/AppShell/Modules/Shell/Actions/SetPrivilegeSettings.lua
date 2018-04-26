local CoreGui = game:GetService("CoreGui")
local Action = require(CoreGui.RobloxGui.Modules.Common.Action)

return Action("SetPrivilegeSettings", function(privilegeSettings)
    privilegeSettings = privilegeSettings or {}
    return
    {
        Multiplayer = privilegeSettings.Multiplayer,
        SharedContent = privilegeSettings.SharedContent
    }
end)