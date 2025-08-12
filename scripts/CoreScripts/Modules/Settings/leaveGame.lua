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

-------------- Flags ----------------------------------------------------------
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagIEMSettingsAddPlaySessionID = SharedFlags.FFlagIEMSettingsAddPlaySessionID
local FFlagEnableGameLeftMessage = SharedFlags.FFlagEnableGameLeftMessage

local EngineFeatureRbxAnalyticsServiceExposePlaySessionId = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")

----------- UTILITIES --------------
local PerfUtils = require(RobloxGui.Modules.Common.PerfUtils)
local Cryo = require(CorePackages.Packages.Cryo)
local MessageBus = require(CorePackages.Workspace.Packages.MessageBus).MessageBus
local coreGuiFinalStateAnalytics = require(script:FindFirstAncestor("Settings").Analytics.CoreGuiFinalStateAnalytics).new()

------------ Variables -------------------
RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")

local GetFFlagEnableInGameMenuDurationLogger = require(RobloxGui.Modules.Common.Flags.GetFFlagEnableInGameMenuDurationLogger)
local FFlagLeaveActionChromeShortcutTelemetry = require(RobloxGui.Modules.Chrome.Flags.FFlagLeaveActionChromeShortcutTelemetry)
local FFlagEnableReactSessionMetrics =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableReactSessionMetrics

local GetDefaultQualityLevel = require(CorePackages.Workspace.Packages.AppCommonLib).GetDefaultQualityLevel

local Constants = require(RobloxGui.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))
local ReactSchedulingTracker = require(RobloxGui.Modules.Common.ReactSchedulingTracker)

export type LeaveGameProps = {
	telemetryFields: { [string] : any},
}

local leaveGame = function(publishSurveyMessage: boolean, props: LeaveGameProps?)
    if FFlagEnableGameLeftMessage then
        MessageBus.publish(Constants.OnAppRatingPromptEventDescriptor, {gameTime = game:getGameTime()})
    end

    if GetFFlagEnableInGameMenuDurationLogger() then
        PerfUtils.leavingGame()
    end
    if FFlagEnableReactSessionMetrics then
        (ReactSchedulingTracker::ReactSchedulingTracker.ReactSchedulingTracker):reportSession()
    end
    local CorescriptMemoryTracker = require(RobloxGui.Modules.Common.CorescriptMemoryTracker)
    local coreScriptMemoryTracker = CorescriptMemoryTracker()
    if coreScriptMemoryTracker then
        coreScriptMemoryTracker:destroy()
    end

    GuiService.SelectedCoreObject = nil -- deselects the button and prevents spamming the popup to save in studio when using gamepad

	local playsessionid = ""
	if FFlagIEMSettingsAddPlaySessionID and EngineFeatureRbxAnalyticsServiceExposePlaySessionId then
		playsessionid = AnalyticsService:GetPlaySessionId()
	end

	local customTelemetryFields = {
		confirmed = Constants.AnalyticsConfirmedName,
		universeid = tostring(game.GameId),
		source = Constants.AnalyticsLeaveGameSource,
		playsessionid = if FFlagIEMSettingsAddPlaySessionID then playsessionid else nil,
	}
	if FFlagLeaveActionChromeShortcutTelemetry and props and props.telemetryFields then
		customTelemetryFields = Cryo.Dictionary.join(customTelemetryFields, props.telemetryFields)
	end
    AnalyticsService:SetRBXEventStream(
        Constants.AnalyticsTargetName,
        Constants.AnalyticsInGameMenuName,
        Constants.AnalyticsLeaveGameName,
		customTelemetryFields
    )

    if publishSurveyMessage then
        -- TODO APPEXP-1879: Remove code passing chromeSeenCount/customProps to survey receiver by flagging it off, now that it is unused.
        local chromeSeenCount = tostring(0)
        local customProps = { chromeSeenCount = chromeSeenCount }

        local localUserId = tostring(Players.LocalPlayer.UserId)
        MessageBus.publish(Constants.OnSurveyEventDescriptor, {eventType = Constants.SurveyEventType, userId = localUserId, customProps = customProps})
    end
	
	coreGuiFinalStateAnalytics:sendCoreGuiFinalAnalytic()

    -- need to wait for render frames so on slower devices the leave button highlight will update
    -- otherwise, since on slow devices it takes so long to leave you are left wondering if you pressed the button
    for i = 1, LEAVE_GAME_FRAME_WAITS do
        RunService.RenderStepped:wait()
    end

    game:Shutdown()

    settings().Rendering.QualityLevel = GetDefaultQualityLevel()
end

return leaveGame
