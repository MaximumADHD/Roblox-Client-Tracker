local CorePackages = game:GetService("CorePackages")
local Common = CorePackages.AppTempCommon.Common

local Action = require(Common.Action)

return Action(script.Name, function(userId, membershipType)
    return {
        userId = userId,
        membershipType = membershipType,
    }
end)