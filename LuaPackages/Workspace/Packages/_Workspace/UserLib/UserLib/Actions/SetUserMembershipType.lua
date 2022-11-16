local UserLib = script:FindFirstAncestor("UserLib")
local Packages = UserLib.Parent

local Action = require(Packages.Rodux).makeActionCreator

return Action(script.Name, function(userId, membershipType)
    return {
        userId = userId,
        membershipType = membershipType,
    }
end)
