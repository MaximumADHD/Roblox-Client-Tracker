local CorePackages = game:GetService("CorePackages")

local ThrottleUserId = require(CorePackages.AppTempCommon.LuaApp.Utils.ThrottleUserId)

local FFlagAvatarEditorEnableThemes = settings():GetFFlag("AvatarEditorEnableThemes2")
local FIntAvatarEditorNewCatalogButton = settings():GetFVariable("AvatarEditorNewCatalogButton")

return function(userId)
    if tonumber(userId) then
        local throttleNumber = FFlagAvatarEditorEnableThemes and tonumber(FIntAvatarEditorNewCatalogButton) or 0
        local id = tonumber(userId)
        return ThrottleUserId(throttleNumber, id)
    else
        return false
    end
end