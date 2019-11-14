local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local ThrottleUserId = require(CorePackages.AppTempCommon.LuaApp.Utils.ThrottleUserId)

return function()
    return ThrottleUserId(
        game:DefineFastInt("LuaChatUseNewFriendsEndpointsV2", 0),
        Players.LocalPlayer.UserId
    )
end
