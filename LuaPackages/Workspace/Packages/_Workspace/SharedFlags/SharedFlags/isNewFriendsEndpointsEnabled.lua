local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local ThrottleUserId = require(CorePackages.Workspace.Packages.AppCommonLib).ThrottleUserId

return function()
    return ThrottleUserId(
        game:DefineFastInt("LuaChatUseNewFriendsEndpointsV2", 0),
        (Players.LocalPlayer :: Player).UserId
    )
end
