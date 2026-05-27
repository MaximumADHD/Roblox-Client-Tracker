--[[

Collection of constants used by In-Experience Menu Settings

TODO: APPEXP-2044 move GameSettings.lua constants here

]]

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = RobloxGui.Modules
local CorePackages = game:GetService("CorePackages")

local PartyVoiceVolumeFeatureAvailable = game:GetEngineFeature("PartyVoiceVolume")
local GetFFlagEnablePlayerNamesEnabledSetting = require(Modules.Settings.Flags.GetFFlagEnablePlayerNamesEnabledSetting)
local FFlagBadgeVisibilitySettingEnabled = require(CorePackages.Workspace.Packages.SharedFlags).FFlagBadgeVisibilitySettingEnabled
local FFlagEnableModerateChatRemoteEvent = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableModerateChatRemoteEvent
local FFlagIEMSettingsGroups = require(Modules.Settings.Flags.FFlagIEMSettingsGroups)
local FFlagAIRephraseSettingEnabled = require(CorePackages.Workspace.Packages.SharedFlags).FFlagAIRephraseSettingEnabled
local FFlagUpdateRephraseSettingUI = game:DefineFastFlag("UpdateRephraseSettingUI", false)
local FFlagChatSummariesSettingEnabled = require(CorePackages.Workspace.Packages.SharedFlags).FFlagChatSummariesSettingEnabled

local isInExperienceUIVREnabled = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local ReactUtils = require(CorePackages.Packages.ReactUtils)

local FIntChatModerationFrameLayoutOrder = game:DefineFastInt("ChatModerationFrameLayoutOrder", 9)

-------------- LAYOUT ORDER -----------
-- Recall that layout order values are relative
local SETTINGS_MENU_LAYOUT_ORDER = {}

-- Overscan Entry point, console only
SETTINGS_MENU_LAYOUT_ORDER.OverscanAdjustButton = 1
-- Chat Moderation Mode
if FFlagEnableModerateChatRemoteEvent then
	SETTINGS_MENU_LAYOUT_ORDER.ChatModerationFrame = FIntChatModerationFrameLayoutOrder
end
-- Movement and Camera Mode
SETTINGS_MENU_LAYOUT_ORDER.ShiftLockFrame = 10
SETTINGS_MENU_LAYOUT_ORDER.CameraModeFrame = 11
SETTINGS_MENU_LAYOUT_ORDER.MovementModeFrame = 12
SETTINGS_MENU_LAYOUT_ORDER.FramerateCap = 13
SETTINGS_MENU_LAYOUT_ORDER.GamepadSensitivityFrame = 14
SETTINGS_MENU_LAYOUT_ORDER.CameraInvertedFrame = 90
SETTINGS_MENU_LAYOUT_ORDER.CameraDeviceFrame = 91
-- Camera Sensitivity
SETTINGS_MENU_LAYOUT_ORDER.MouseAdvancedFrame = 50
-- Voice Connect Disconnect
SETTINGS_MENU_LAYOUT_ORDER.VoiceConnectDisconnectSelector = 17
SETTINGS_MENU_LAYOUT_ORDER.VoiceConnectFrame = 18
SETTINGS_MENU_LAYOUT_ORDER.VoiceDisconnectFrame = 19
if game:GetEngineFeature("InExperiencePlayerChoiceToggle") then
	-- Experience Language
	SETTINGS_MENU_LAYOUT_ORDER.PlayerChoiceTranslationFrame = 20
	SETTINGS_MENU_LAYOUT_ORDER.LanguageSelectorFrame = 21
	-- Chat Translation
	SETTINGS_MENU_LAYOUT_ORDER.ChatTranslationFrame = 30
	SETTINGS_MENU_LAYOUT_ORDER.ChatLanguageSelectorFrame = 31
	SETTINGS_MENU_LAYOUT_ORDER.ChatTranslationToggleFrame = 32
	-- Feedback Mode
	SETTINGS_MENU_LAYOUT_ORDER.FeedbackModeButton = 40
else
	-- Experience Language
	SETTINGS_MENU_LAYOUT_ORDER.LanguageSelectorFrame = 20
	-- Feedback Mode
	SETTINGS_MENU_LAYOUT_ORDER.FeedbackModeButton = 30
	-- Chat Translation
	SETTINGS_MENU_LAYOUT_ORDER.ChatTranslationFrame = 40
	SETTINGS_MENU_LAYOUT_ORDER.ChatLanguageSelectorFrame = 41
	SETTINGS_MENU_LAYOUT_ORDER.ChatTranslationToggleFrame = 42
end
-- VR Settings
if isInExperienceUIVREnabled then
	SETTINGS_MENU_LAYOUT_ORDER.VRComfortSettingFrame = 54
	SETTINGS_MENU_LAYOUT_ORDER.VRVignetteEnabledFrame = 55
	SETTINGS_MENU_LAYOUT_ORDER.VRSteppedRotationEnabledFrame = 56
	SETTINGS_MENU_LAYOUT_ORDER.VRThirdPersonFixedCamEnabledFrame = 57
	SETTINGS_MENU_LAYOUT_ORDER.VRSafetyBubbleModeFrame = 58
end
-- Input/Output and Volume
SETTINGS_MENU_LAYOUT_ORDER.DeviceFrameInput = 60
SETTINGS_MENU_LAYOUT_ORDER.DeviceFrameOutput = 61
SETTINGS_MENU_LAYOUT_ORDER.VolumeFrame = 62
if PartyVoiceVolumeFeatureAvailable then
	SETTINGS_MENU_LAYOUT_ORDER.PartyVoiceVolumeFrame = 63
end
SETTINGS_MENU_LAYOUT_ORDER.HapticsFrame = if PartyVoiceVolumeFeatureAvailable then 64 else 63
-- Graphics
SETTINGS_MENU_LAYOUT_ORDER.FullScreenFrame = 70
SETTINGS_MENU_LAYOUT_ORDER.GraphicsEnablerFrame = 71
SETTINGS_MENU_LAYOUT_ORDER.GraphicsQualityFrame = 72
SETTINGS_MENU_LAYOUT_ORDER.ReducedMotionFrame = 73
SETTINGS_MENU_LAYOUT_ORDER.PreferredTransparencyFrame = 74
SETTINGS_MENU_LAYOUT_ORDER.PreferredTextSizeFrame = 75
SETTINGS_MENU_LAYOUT_ORDER.UiNavigationKeyBindEnabledFrame = 76
-- Performance
SETTINGS_MENU_LAYOUT_ORDER.PerformanceStatsFrame = 80
SETTINGS_MENU_LAYOUT_ORDER.MicroProfilerFrame = 81
-- VR, Dev Console, Special
SETTINGS_MENU_LAYOUT_ORDER.VREnabledFrame = 100
SETTINGS_MENU_LAYOUT_ORDER.DeveloperConsoleButton = 101
-- AntiHarassment Settings
if GetFFlagEnablePlayerNamesEnabledSetting() then
	SETTINGS_MENU_LAYOUT_ORDER.PlayerNamesEnabledFrame = 105
end
if FFlagBadgeVisibilitySettingEnabled then
	SETTINGS_MENU_LAYOUT_ORDER.BadgeVisibilityFrame = 106
end
if FFlagAIRephraseSettingEnabled then
	SETTINGS_MENU_LAYOUT_ORDER.AIRephraseFrame = if FFlagUpdateRephraseSettingUI then 20 else 43
end
if FFlagChatSummariesSettingEnabled then
	SETTINGS_MENU_LAYOUT_ORDER.ChatSummariesFrame = 20
end
SETTINGS_MENU_LAYOUT_ORDER.UiToggleRow = 200
SETTINGS_MENU_LAYOUT_ORDER.UiToggleRowCustom = 200 -- Replaces "UiToggleRow" when FFlagUserShowGuiHideToggles == true
SETTINGS_MENU_LAYOUT_ORDER.UiToggleRowBillboards = 201
SETTINGS_MENU_LAYOUT_ORDER.UiToggleRowNameplates = 202
SETTINGS_MENU_LAYOUT_ORDER.FreecamToggleRow = 203
SETTINGS_MENU_LAYOUT_ORDER.InformationFrame = 999 -- Reserved to be last

---- SETTING LAYOUT REORDER VARIANTS ---

local LAYOUT_ORDER_GROUPS
if FFlagIEMSettingsGroups then
	local nextOrder = ReactUtils.createNextOrder()

	LAYOUT_ORDER_GROUPS = {
		AudioHeader = nextOrder(),
		VolumeFrame = nextOrder(),
		PartyVoiceVolumeFrame = nextOrder(),
		DeviceFrameInput = nextOrder(),
		DeviceFrameOutput = nextOrder(),
		AudioDivider = nextOrder(),
		
		LanguageHeader = nextOrder(),
		ChatModerationFrame = nextOrder(),
		VoiceConnectDisconnectSelector = nextOrder(),
		VoiceConnectFrame = nextOrder(),
		VoiceDisconnectFrame = nextOrder(),
		ChatSummariesFrame = if FFlagChatSummariesSettingEnabled then nextOrder() else nil,
		AIRephraseFrame = if FFlagAIRephraseSettingEnabled then nextOrder() else nil,
		PlayerChoiceTranslationFrame = if game:GetEngineFeature("InExperiencePlayerChoiceToggle") then nextOrder() else nil,
		LanguageSelectorFrame = nextOrder(),
		FeedbackModeButton = nextOrder(),
		ChatTranslationFrame = nextOrder(),
		ChatLanguageSelectorFrame = nextOrder(),
		ChatTranslationToggleFrame = nextOrder(),
		LanguageDivider = nextOrder(),

		DisplayHeader = nextOrder(),
		OverscanAdjustButton = nextOrder(),
		FullScreenFrame = nextOrder(),
		PreferredTransparencyFrame = nextOrder(),
		PreferredTextSizeFrame = nextOrder(),
		VRComfortSettingFrame = if isInExperienceUIVREnabled then nextOrder() else nil,
		VRVignetteEnabledFrame = if isInExperienceUIVREnabled then nextOrder() else nil,
		VRSteppedRotationEnabledFrame = if isInExperienceUIVREnabled then nextOrder() else nil,
		VRThirdPersonFixedCamEnabledFrame = if isInExperienceUIVREnabled then nextOrder() else nil,
		VRSafetyBubbleModeFrame = if isInExperienceUIVREnabled then nextOrder() else nil,
		PerformanceStatsFrame = nextOrder(),
		MicroProfilerFrame = nextOrder(),
		GraphicsEnablerFrame = nextOrder(),
		GraphicsQualityFrame = nextOrder(),
		HapticsFrame = nextOrder(),
		ReducedMotionFrame = nextOrder(),
		FramerateCap = nextOrder(),
		VREnabledFrame = nextOrder(),
		DisplayDivider = nextOrder(),

		ViewAndControlsHeader = nextOrder(),
		CameraModeFrame = nextOrder(),
		CameraInvertedFrame = nextOrder(),
		CameraSensitivityFrame = nextOrder(),
		MouseAdvancedFrame = nextOrder(),
		GamepadSensitivityFrame = nextOrder(),
		MovementModeFrame = nextOrder(),
		ShiftLockFrame = nextOrder(),
		CameraDeviceFrame = nextOrder(),
		UiNavigationKeyBindEnabledFrame = nextOrder(),
		DeveloperConsoleButton = nextOrder(),
		PlayerNamesEnabledFrame = if GetFFlagEnablePlayerNamesEnabledSetting() then nextOrder() else nil,
		BadgeVisibilityFrame = if FFlagBadgeVisibilitySettingEnabled then nextOrder() else nil,

		UiToggleRow = nextOrder(),
		UiToggleRowCustom = nextOrder(),
		UiToggleRowBillboards = nextOrder(),
		UiToggleRowNameplates = nextOrder(),
		FreecamToggleRow = nextOrder(),
		InformationFrame = nextOrder(),
	}
end

-- Returns a LayoutOrder of Settings Menu with flagging
local function getLayoutOrder()
	local layoutOrder = {} :: any
	if FFlagIEMSettingsGroups then
		layoutOrder = LAYOUT_ORDER_GROUPS
	else
		layoutOrder = SETTINGS_MENU_LAYOUT_ORDER
	end

	return layoutOrder
end

return {
	SETTINGS_MENU_LAYOUT_ORDER = getLayoutOrder()
}
