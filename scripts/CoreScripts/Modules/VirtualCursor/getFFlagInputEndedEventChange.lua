-- This package is DEPRECATED, per https://roblox.atlassian.net/browse/UIBLOX-2597
-- Virtual Cursor has been moved to lua-apps/modules/app-common/virtual-cursor, this location's VC will be deleted after rollout of FFlagUseAppCommonVirtualCursorWithFixes

game:DefineFastFlag("InputEndedEventChange", false)

local function getFFlagInputEndedEventChange()
    return game:GetFastFlag("InputEndedEventChange")
end

return getFFlagInputEndedEventChange
