--!nonstrict
local screenshotContentId = nil

if game:GetEngineFeature("ReportAnythingScreenshot") then
    local safetyService = game:GetService("SafetyService")

    safetyService.ScreenshotContentReady:Connect(function(jobId, contentId)
        -- TODO(bcwong): Debug why this gets called multiple times
        -- print("ScreenshotHelper: Screenshot contentId: ", contentId)
        screenshotContentId = contentId
    end)
end

local ScreenshotHelper = {}
ScreenshotHelper.__index = ScreenshotHelper

function ScreenshotHelper:GetScreenshotContentId()
    -- print("GetScreenshotContentId: ", screenshotContentId)
    return screenshotContentId
end

function ScreenshotHelper:SetScreenshotContentId(contentId)
    screenshotContentId = contentId
end 

return ScreenshotHelper
