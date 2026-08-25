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
local FFlagEnableGameLeftMessage = SharedFlags.FFlagEnableGameLeftMessage
local FFlagSurvBloxEventTypeEnabled = SharedFlags.FFlagSurvBloxEventTypeEnabled
local EngineFeatureRbxAnalyticsServiceExposePlaySessionId = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")
local FFlagRemoveExitModal = require(RobloxGui.Modules.Settings.Flags.FFlagRemoveExitModal)
local FFlagVoiceVolumeControlsEnableVoiceVolumeImpressionsTelemetry =
	require(CorePackages.Workspace.Packages.VoiceChatCore).Flags.GetFFlagVoiceVolumeControlsEnableVoiceVolumeImpressionsTelemetry()

----------- UTILITIES --------------
local PerfUtils = require(RobloxGui.Modules.Common.PerfUtils)
local Cryo = require(CorePackages.Packages.Cryo)
local MessageBus = require(CorePackages.Workspace.Packages.MessageBus).MessageBus
local SurveyEventPublisher = require(CorePackages.Workspace.Packages.OnPlatformSurveys.SurveyEventPublisher)
local WebViewEventType = require(CorePackages.Workspace.Packages.OnPlatformSurveys.WebViewEventType)
local coreGuiFinalStateAnalytics = require(script:FindFirstAncestor("Settings").Analytics.CoreGuiFinalStateAnalytics).new()

------------ Variables -------------------
RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")

local GetFFlagEnableInGameMenuDurationLogger = require(RobloxGui.Modules.Common.Flags.GetFFlagEnableInGameMenuDurationLogger)
local FFlagLeaveActionChromeShortcutTelemetry = require(RobloxGui.Modules.Chrome.Flags.FFlagLeaveActionChromeShortcutTelemetry)

local GetDefaultQualityLevel = require(CorePackages.Workspace.Packages.AppCommonLib).GetDefaultQualityLevel

local Constants = require(RobloxGui.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))
local ReactSchedulingTracker = require(RobloxGui.Modules.Common.ReactSchedulingTracker)
local VoiceChatServiceManager = if FFlagVoiceVolumeControlsEnableVoiceVolumeImpressionsTelemetry
	then require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
	else nil

export type LeaveGameProps = {
	telemetryFields: { [string] : any},
    shouldNativeExit: boolean?,
    inhibitAppRating: boolean?,
    telemetryContext: string?,
}

local leaveGame = function(publishSurveyMessage: boolean, props: LeaveGameProps?)
    if FFlagEnableGameLeftMessage and not (props and props.inhibitAppRating) then
        MessageBus.publish(Constants.OnAppRatingPromptEventDescriptor, {gameTime = game:getGameTime()})
    end

    if GetFFlagEnableInGameMenuDurationLogger() then
        PerfUtils.leavingGame()
    end
    (ReactSchedulingTracker::ReactSchedulingTracker.ReactSchedulingTracker):reportSession()
    local MemoryTracker = require(CorePackages.Workspace.Packages.Memory).MemoryTracker
    local memoryTracker = MemoryTracker()
    if memoryTracker then
        memoryTracker:destroy()
    end

    GuiService.SelectedCoreObject = nil -- deselects the button and prevents spamming the popup to save in studio when using gamepad

	local playsessionid = ""
	if EngineFeatureRbxAnalyticsServiceExposePlaySessionId then
		playsessionid = AnalyticsService:GetPlaySessionId()
	end

	local customTelemetryFields = {
		confirmed = Constants.AnalyticsConfirmedName,
		universeid = tostring(game.GameId),
		source = Constants.AnalyticsLeaveGameSource,
		playsessionid = playsessionid ,
	}
	if FFlagLeaveActionChromeShortcutTelemetry and props and props.telemetryFields then
		customTelemetryFields = Cryo.Dictionary.join(customTelemetryFields, props.telemetryFields)
	end
    AnalyticsService:SetRBXEventStream(
        Constants.AnalyticsTargetName,
        if props and props.telemetryContext then props.telemetryContext else Constants.AnalyticsInGameMenuName,
        Constants.AnalyticsLeaveGameName,
		customTelemetryFields
    )

    if publishSurveyMessage then
        if FFlagSurvBloxEventTypeEnabled then
            SurveyEventPublisher.publishSurveyEvent(WebViewEventType.LeaveButtonClick)
        else
            -- TODO APPEXP-1879: Remove legacy customProps publish path after migration.
            local chromeSeenCount = tostring(0)
            local customProps = { chromeSeenCount = chromeSeenCount }

            local localUserId = tostring(Players.LocalPlayer.UserId)
            MessageBus.publish(
                Constants.OnSurveyEventDescriptor,
                { eventType = Constants.SurveyEventType, userId = localUserId, customProps = customProps }
            )
        end
    end
	
	coreGuiFinalStateAnalytics:sendCoreGuiFinalAnalytic()
	if FFlagVoiceVolumeControlsEnableVoiceVolumeImpressionsTelemetry then
		VoiceChatServiceManager:ReportVoiceVolumeImpressionsIfNeeded()
	end

    -- need to wait for render frames so on slower devices the leave button highlight will update
    -- otherwise, since on slow devices it takes so long to leave you are left wondering if you pressed the button
    for i = 1, LEAVE_GAME_FRAME_WAITS do
        RunService.RenderStepped:wait()
    end

    -- return to app by default, unless shouldNativeExit is true then native exit
    if not FFlagRemoveExitModal or (not props or not props.shouldNativeExit) then
        game:Shutdown()
    end

    settings().Rendering.QualityLevel = GetDefaultQualityLevel()

    if FFlagRemoveExitModal and props and props.shouldNativeExit then
        local NotificationType = GuiService:GetNotificationTypeList()
        GuiService:BroadcastNotification("", NotificationType.NATIVE_EXIT)
    end
end

return leaveGame
