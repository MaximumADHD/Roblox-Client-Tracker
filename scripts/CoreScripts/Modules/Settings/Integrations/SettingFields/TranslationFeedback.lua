-- Services
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")
local Settings = script:FindFirstAncestor("Settings")
local ExperienceStateCaptureService = game:GetService("ExperienceStateCaptureService")
local SafetyService = game:GetService("SafetyService")

-- Modules
local Constants = require(Settings.Integrations.Constants)
local SettingsServiceLib = require(CorePackages.Workspace.Packages.SettingsService)
local ValueChangedSignal = SettingsServiceLib.ValueChangedSignal
local AvailabilitySignal = SettingsServiceLib.AvailabilitySignal
local FieldType = SettingsServiceLib.FieldType

-- Variables
local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()

-- Constants
local SettingsLayoutOrder = Constants.GAMESETTINGS.LAYOUT_ORDER

-- Functions
local function TranslationFeedbackValue()
    local value = ValueChangedSignal.new()

    value:connect(function()
        -- check memory
        if game:GetEngineFeature("ExperienceStateCaptureMinMemEnabled")
            and not ExperienceStateCaptureService:CanEnterCaptureMode() then
            return
        end

        -- Closes tilt menu
        local SettingsHub = require(script.Parent.Parent.Parent.SettingsHub) :: any
        if SettingsHub then
            SettingsHub:SetVisibility(false)
        end

        -- open up feedback screen
        if game:GetEngineFeature("SafetyServiceCaptureModeReportProp") then
            -- Explicit false set for Safety Service capture mode before entering Feedback mode
            SafetyService.IsCaptureModeForReport = false
        end
        if game:GetEngineFeature("CaptureModeEnabled") then
            ExperienceStateCaptureService:ToggleCaptureMode()
        end
    end)

    return value
end

local function TranslationFeedbackAvailability()
    local available = AvailabilitySignal.new(true)

    if RunService:IsStudio()
        or game:GetEngineFeature("CaptureModeEnabled") == false
        or isTenFootInterface
    then
        available:set(false)
    end

    return available
end

local value = TranslationFeedbackValue()
local available = TranslationFeedbackAvailability()

local TranslationFeedbackConfig = {
    field_type = FieldType.TextButton,
    id = "translation-feedback",
    onActivated = value,
    label = "CoreScripts.InGameMenu.GameSettings.GiveTranslationFeedback",
    text = "CoreScripts.InGameMenu.GameSettings.GiveFeedback",
    layoutOrder = SettingsLayoutOrder.FeedbackModeButton,
    alreadyLocalized = false,
    availability = available,
} :: SettingsServiceLib.TextButtonRegisterConfig

return TranslationFeedbackConfig