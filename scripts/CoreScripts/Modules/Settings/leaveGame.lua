--!nonstrict
-------------- CONSTANTS -------------
local LEAVE_GAME_FRAME_WAITS = 2

-------------- SERVICES --------------
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local Players = game:GetService("Players")

----------- UTILITIES --------------
local PerfUtils = require(RobloxGui.Modules.Common.PerfUtils)
local MessageBus = require(CorePackages.Workspace.Packages.MessageBus).MessageBus

------------ Variables -------------------
RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")

local GetFFlagEnableInGameMenuDurationLogger = require(RobloxGui.Modules.Common.Flags.GetFFlagEnableInGameMenuDurationLogger)
local GetFFlagChromeSurveySupport = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagChromeSurveySupport

local GetDefaultQualityLevel = require(CorePackages.Workspace.Packages.AppCommonLib).GetDefaultQualityLevel

local Constants = require(RobloxGui.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))

local LocalStore = require(RobloxGui.Modules.Chrome.Service.LocalStore)

local leaveGame = function(publishSurveyMessage: boolean)
    if GetFFlagEnableInGameMenuDurationLogger() then
        PerfUtils.leavingGame()
    end
    GuiService.SelectedCoreObject = nil -- deselects the button and prevents spamming the popup to save in studio when using gamepad
        
    AnalyticsService:SetRBXEventStream(
        Constants.AnalyticsTargetName,
        Constants.AnalyticsInGameMenuName,
        Constants.AnalyticsLeaveGameName,
        {
            confirmed = Constants.AnalyticsConfirmedName,
            universeid = tostring(game.GameId),
            source = Constants.AnalyticsLeaveGameSource
        }
    )

    if publishSurveyMessage then
        local customProps = nil
        if GetFFlagChromeSurveySupport() then
            local chromeSeenCount = tostring(LocalStore.getChromeSeenCount())
            customProps = { chromeSeenCount = chromeSeenCount }
        end

        local localUserId = tostring(Players.LocalPlayer.UserId)
        MessageBus.publish(Constants.OnSurveyEventDescriptor, {eventType = Constants.SurveyEventType, userId = localUserId, customProps = customProps})
    end

    -- need to wait for render frames so on slower devices the leave button highlight will update
    -- otherwise, since on slow devices it takes so long to leave you are left wondering if you pressed the button
    for i = 1, LEAVE_GAME_FRAME_WAITS do
        RunService.RenderStepped:wait()
    end

    game:Shutdown()

    settings().Rendering.QualityLevel = GetDefaultQualityLevel()
end

return leaveGame