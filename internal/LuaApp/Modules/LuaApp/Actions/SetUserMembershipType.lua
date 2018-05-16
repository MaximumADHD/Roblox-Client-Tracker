local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common

local Action = require(Common.Action)

return Action(script.Name, function(userId, membershipType)
    return {
        userId = userId,
        membershipType = membershipType,
    }
end)