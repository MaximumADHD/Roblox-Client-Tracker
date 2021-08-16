local GA_CATEGORY_ACTION = "Action"
local ASSET_MANAGER_CATEGORY = "Debugger"

return function(rbxAnalyticsService)
    return {
        ThunkFailed = function(ThunkName)
            rbxAnalyticsService:TrackEvent(GA_CATEGORY_ACTION, ASSET_MANAGER_CATEGORY, ThunkName)
            rbxAnalyticsService:ReportCounter(ThunkName, 1)
        end,
    }
end
