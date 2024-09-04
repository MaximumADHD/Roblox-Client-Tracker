-- Comma-separated list of userIds that have in-experience name settings enabled
local FStringRccInExperienceNameSettingsEnabledAllowList = game:DefineFastString("RccInExperienceNameSettingsEnabledAllowList", "")

local allowList = nil

return {
    isAllowListedUserId = function(userId)
        local userIdStr = tostring(userId)

        if allowList == nil then
            allowList = {}
            for allowListedUserId in string.gmatch(FStringRccInExperienceNameSettingsEnabledAllowList, "[^,]+") do
                allowList[allowListedUserId] = true
            end
        end

        return allowList[userIdStr] == true
    end
}
