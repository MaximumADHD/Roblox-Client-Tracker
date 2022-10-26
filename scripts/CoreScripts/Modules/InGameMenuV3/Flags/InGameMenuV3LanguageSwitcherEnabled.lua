--!nonstrict
game:DefineFastInt("V3MenuLanguageSelectionFeaturePerMillageRollout", 0)
game:DefineFastString("V3MenuLanguageSelectionFeatureForcedUserIds", "")

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

return function()
    -- If the engine feature is not enabled, then no matter what we should
    -- return false, no need to consider the finer granularity flags
    if game:GetEngineFeature("EnableSetExperienceSettingsLocaleIdApi") ~= true then
        return false
    end

    -- Check if the user should get the dropdown via per millage
    if (LocalPlayer.UserId % 1000) + 1 <= game:GetFastInt("V3MenuLanguageSelectionFeaturePerMillageRollout") then
        return true
    end

    -- Check if the user is in the forced list of users 
    local forcedUserIds = game:GetFastString("V3MenuLanguageSelectionFeatureForcedUserIds")
    for forcedUserIdString in forcedUserIds:gmatch("%d+") do
        if tonumber(forcedUserIdString) == LocalPlayer.UserId then
            return true
        end
    end

    return false
end