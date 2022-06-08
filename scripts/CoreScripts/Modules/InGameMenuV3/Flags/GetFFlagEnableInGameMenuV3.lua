local Players = game:GetService("Players")

game:DefineFastFlag("EnableInGameMenuV3", false)
game:DefineFastString("NewInGameMenuForcedUserIds", "")

return function()
    local localPlayer = Players.LocalPlayer
    if localPlayer then
        local forcedUserIds = game:GetFastString("NewInGameMenuForcedUserIds")
        for forcedUserIdString in forcedUserIds:gmatch("%d+") do
            if tonumber(forcedUserIdString) == localPlayer.UserId then
                return true
            end
        end
    end

    return game:GetFastFlag("EnableInGameMenuV3")
end
