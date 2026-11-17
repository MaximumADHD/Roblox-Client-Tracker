--[[

Collection of constants used by In-Experience Menu Settings

TODO: APPEXP-2044 move GameSettings.lua constants here

]]

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = RobloxGui.Modules
local CorePackages = game:GetService("CorePackages")

local GetFFlagEnablePlayerNamesEnabledSetting = require(Modules.Settings.Flags.GetFFlagEnablePlayerNamesEnabledSetting)
local FFlagBadgeVisibilitySettingEnabled = require(CorePackages.Workspace.Packages.SharedFlags).FFlagBadgeVisibilitySettingEnabled
local RUUserScalePreferenceAPI = game:GetEngineFeature("RUUserScalePreferenceAPI")
local FFlagUIScaleEngineOptions = require(CorePackages.Workspace.Packages.SharedFlags).FFlagUIScaleEngineOptions
local FFlagAIRephraseSettingEnabled = require(CorePackages.Workspace.Packages.SharedFlags).FFlagAIRephraseSettingEnabled
local FFlagChatSummariesSettingEnabled = require(CorePackages.Workspace.Packages.SharedFlags).FFlagChatSummariesSettingEnabled
local FFlagExpChatDictationVoiceTypingModeSetting =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagExpChatDictationVoiceTypingModeSetting
local FFlagVoiceVolumeControlsEnableVoiceChatVolumeSlider =
	require(Modules.Settings.Flags.FFlagVoiceVolumeControlsEnableVoiceChatVolumeSlider)
local FFlagFriendsCallingCallVolumeSlider = require(Modules.Settings.Flags.FFlagFriendsCallingCallVolumeSlider)

local isInExperienceUIVREnabled = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local ReactUtils = require(CorePackages.Packages.ReactUtils)

-------------- LAYOUT ORDER -----------
-- Recall that layout order values are relative
local nextOrder = ReactUtils.createNextOrder()

local SETTINGS_MENU_LAYOUT_ORDER = {
	MoreSettingsBanner = nextOrder(),

	AudioHeader = nextOrder(),
	VolumeFrame = nextOrder(),
	VoiceChatVolumeFrame = if FFlagVoiceVolumeControlsEnableVoiceChatVolumeSlider then nextOrder() else nil,
	PartyVoiceVolumeFrame = nextOrder(),
	CallVolumeFrame = if FFlagFriendsCallingCallVolumeSlider then nextOrder() else nil,
	DeviceFrameInput = nextOrder(),
	DeviceFrameOutput = nextOrder(),
	AudioDivider = nextOrder(),

	LanguageHeader = nextOrder(),
	VoiceTypingModeFrame = if FFlagExpChatDictationVoiceTypingModeSetting then nextOrder() else nil,
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
	ChatNotificationsFrame = nextOrder(),
	LanguageDivider = nextOrder(),

	DisplayHeader = nextOrder(),
	OverscanAdjustButton = nextOrder(),
	FullScreenFrame = nextOrder(),
	UIScaleEngineModeFrame = if FFlagUIScaleEngineOptions then nextOrder() else nil,
	UIScaleEngineFrame = if FFlagUIScaleEngineOptions then nextOrder() else nil,
	PreferredTransparencyFrame = nextOrder(),
	PreferredTextSizeFrame = nextOrder(),
	UIScaleModeFrame = if RUUserScalePreferenceAPI then nextOrder() else nil,
	UIScaleFrame = if RUUserScalePreferenceAPI then nextOrder() else nil,
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
if FFlagUIScaleEngineOptions then
	-- Text Size displays before Background Transparency, matching App Device Preferences.
	SETTINGS_MENU_LAYOUT_ORDER.PreferredTextSizeFrame, SETTINGS_MENU_LAYOUT_ORDER.PreferredTransparencyFrame =
		SETTINGS_MENU_LAYOUT_ORDER.PreferredTransparencyFrame, SETTINGS_MENU_LAYOUT_ORDER.PreferredTextSizeFrame
end

return {
	SETTINGS_MENU_LAYOUT_ORDER = SETTINGS_MENU_LAYOUT_ORDER
}
