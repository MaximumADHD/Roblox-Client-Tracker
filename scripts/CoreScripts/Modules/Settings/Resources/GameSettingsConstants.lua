--[[

Collection of constants used by In-Experience Menu Settings

TODO: APPEXP-2044 move GameSettings.lua constants here

]]

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = RobloxGui.Modules
local CorePackages = game:GetService("CorePackages")

-------------- Flags ------------------
local PartyVoiceVolumeFeatureAvailable = game:GetEngineFeature("PartyVoiceVolume")
local GetFStringInExperienceMenuIXPLayer = require(Modules.Settings.Flags.GetFStringInExperienceMenuIXPLayer)
local GetFStringInExperienceMenuIXPVar = require(Modules.Settings.Flags.GetFStringInExperienceMenuIXPVar)
local FFlagInExperienceMenuReorderFirstVariant = require(Modules.Settings.Flags.FFlagInExperienceMenuReorderFirstVariant)
local FFlagOverrideInExperienceMenuReorderFirstVariant = require(Modules.Settings.Flags.FFlagOverrideInExperienceMenuReorderFirstVariant)
local GetFFlagEnablePlayerNamesEnabledSetting = require(Modules.Settings.Flags.GetFFlagEnablePlayerNamesEnabledSetting)
local FFlagBadgeVisibilitySettingEnabled = require(CorePackages.Workspace.Packages.SharedFlags).FFlagBadgeVisibilitySettingEnabled

-------------- Modules ----------------
local IXPServiceWrapper = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
local isInExperienceUIVREnabled = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled

-------------- LAYOUT ORDER -----------
-- Recall that layout order values are relative
local SETTINGS_MENU_LAYOUT_ORDER = {}

-- Overscan Entry point, console only
SETTINGS_MENU_LAYOUT_ORDER.OverscanAdjustButton = 1
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
SETTINGS_MENU_LAYOUT_ORDER.VoiceConnectFrame = 18
SETTINGS_MENU_LAYOUT_ORDER.VoiceDisconnectFrame = 19
-- Experience Language
SETTINGS_MENU_LAYOUT_ORDER.LanguageSelectorFrame = 20
-- Feedback Mode
SETTINGS_MENU_LAYOUT_ORDER.FeedbackModeButton = 30
-- Chat Translation
SETTINGS_MENU_LAYOUT_ORDER.ChatTranslationFrame = 40
SETTINGS_MENU_LAYOUT_ORDER.ChatLanguageSelectorFrame = 41
SETTINGS_MENU_LAYOUT_ORDER.ChatTranslationToggleFrame = 42
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
SETTINGS_MENU_LAYOUT_ORDER.UiToggleRow = 200
SETTINGS_MENU_LAYOUT_ORDER.UiToggleRowCustom = 200 -- Replaces "UiToggleRow" when FFlagUserShowGuiHideToggles == true
SETTINGS_MENU_LAYOUT_ORDER.UiToggleRowBillboards = 201
SETTINGS_MENU_LAYOUT_ORDER.UiToggleRowNameplates = 202
SETTINGS_MENU_LAYOUT_ORDER.FreecamToggleRow = 203
SETTINGS_MENU_LAYOUT_ORDER.InformationFrame = 999 -- Reserved to be last

---- SETTING LAYOUT REORDER VARIANTS ---
local LAYOUT_REORDER_VARIANT_1 = {}

-- Overscan Entry point, console only
LAYOUT_REORDER_VARIANT_1.OverscanAdjustButton = 1
-- VR Settings
if isInExperienceUIVREnabled then
	LAYOUT_REORDER_VARIANT_1.VRComfortSettingFrame = 4
	LAYOUT_REORDER_VARIANT_1.VRVignetteEnabledFrame = 5
	LAYOUT_REORDER_VARIANT_1.VRSteppedRotationEnabledFrame = 6
	LAYOUT_REORDER_VARIANT_1.VRThirdPersonFixedCamEnabledFrame = 7
	LAYOUT_REORDER_VARIANT_1.VRSafetyBubbleModeFrame = 8
end
-- Volumes
LAYOUT_REORDER_VARIANT_1.VolumeFrame = 10
if PartyVoiceVolumeFeatureAvailable then
	LAYOUT_REORDER_VARIANT_1.PartyVoiceVolumeFrame = 11
end
-- Voice Connect Disconnect
LAYOUT_REORDER_VARIANT_1.VoiceConnectFrame = 20
LAYOUT_REORDER_VARIANT_1.VoiceDisconnectFrame = 21
-- Movement and Camera
LAYOUT_REORDER_VARIANT_1.MouseAdvancedFrame = 40
LAYOUT_REORDER_VARIANT_1.GamepadSensitivityFrame = 41
LAYOUT_REORDER_VARIANT_1.ShiftLockFrame = 45
LAYOUT_REORDER_VARIANT_1.CameraModeFrame = 46
LAYOUT_REORDER_VARIANT_1.MovementModeFrame = 47
LAYOUT_REORDER_VARIANT_1.CameraInvertedFrame = 48
-- Graphics
LAYOUT_REORDER_VARIANT_1.GraphicsEnablerFrame = 60
LAYOUT_REORDER_VARIANT_1.GraphicsQualityFrame = 61
LAYOUT_REORDER_VARIANT_1.FramerateCap = 65
-- Translation/Language
LAYOUT_REORDER_VARIANT_1.LanguageSelectorFrame = 80
LAYOUT_REORDER_VARIANT_1.ChatTranslationFrame = 81
LAYOUT_REORDER_VARIANT_1.ChatTranslationToggleFrame = 82
LAYOUT_REORDER_VARIANT_1.ChatLanguageSelectorFrame = 83
LAYOUT_REORDER_VARIANT_1.FeedbackModeButton = 84
-- a11y
LAYOUT_REORDER_VARIANT_1.PreferredTransparencyFrame = 95
LAYOUT_REORDER_VARIANT_1.ReducedMotionFrame = 96
LAYOUT_REORDER_VARIANT_1.HapticsFrame = 97
LAYOUT_REORDER_VARIANT_1.UiNavigationKeyBindEnabledFrame = 98
LAYOUT_REORDER_VARIANT_1.PreferredTextSizeFrame = 99
-- Hardware
LAYOUT_REORDER_VARIANT_1.CameraDeviceFrame = 110
LAYOUT_REORDER_VARIANT_1.FullScreenFrame = 111
LAYOUT_REORDER_VARIANT_1.DeviceFrameOutput = 112
LAYOUT_REORDER_VARIANT_1.DeviceFrameInput = 113
LAYOUT_REORDER_VARIANT_1.VREnabledFrame = 120
-- Advanced settings
LAYOUT_REORDER_VARIANT_1.PerformanceStatsFrame = 130
LAYOUT_REORDER_VARIANT_1.MicroProfilerFrame = 131
LAYOUT_REORDER_VARIANT_1.DeveloperConsoleButton = 132
-- AntiHarassment Settings
if GetFFlagEnablePlayerNamesEnabledSetting() then
	LAYOUT_REORDER_VARIANT_1.PlayerNamesEnabledFrame = 136
end
if FFlagBadgeVisibilitySettingEnabled then
	LAYOUT_REORDER_VARIANT_1.BadgeVisibilityFrame = 137
end
-- Special
LAYOUT_REORDER_VARIANT_1.UiToggleRow = 200
LAYOUT_REORDER_VARIANT_1.UiToggleRowCustom = 200 -- Replaces "UiToggleRow" when FFlagUserShowGuiHideToggles == true
LAYOUT_REORDER_VARIANT_1.UiToggleRowBillboards = 201
LAYOUT_REORDER_VARIANT_1.UiToggleRowNameplates = 202
LAYOUT_REORDER_VARIANT_1.FreecamToggleRow = 203
LAYOUT_REORDER_VARIANT_1.InformationFrame = 999 -- Reserved to be last

local function LayoutReOrderIXP()
	local LAYOUT_ORDER_MT = {}
	LAYOUT_ORDER_MT.ixp_variant = -1
	LAYOUT_ORDER_MT.variants = {
		DEFAULT = 1,
		VARIANT = 2,
	}

	-- Returns a variant from IXP InExperienceMenuReorder and log exposure
	local function fetchSettingReorderIXPVariant(): number
		local layer = GetFStringInExperienceMenuIXPLayer()
		local ixpVar = GetFStringInExperienceMenuIXPVar()
		local layerData = IXPServiceWrapper:GetLayerData(layer)
		local variant = LAYOUT_ORDER_MT.variants.DEFAULT
		if layerData ~= nil and layerData[ixpVar] ~= nil then
			variant = layerData[ixpVar]
		end
		return variant
	end

	LAYOUT_ORDER_MT.__index = function(settingLayout: {[string]: number}, setting: string): number
		if LAYOUT_ORDER_MT.ixp_variant == -1 then
			LAYOUT_ORDER_MT.ixp_variant = fetchSettingReorderIXPVariant()
		end
		if FFlagInExperienceMenuReorderFirstVariant and LAYOUT_ORDER_MT.ixp_variant == LAYOUT_ORDER_MT.variants.VARIANT then
			return LAYOUT_REORDER_VARIANT_1[setting]
		else
			return SETTINGS_MENU_LAYOUT_ORDER[setting]
		end
	end

	-- proxy table SETTINGS_MENU_LAYOUT_ORDER outside this file for ReOrdering IXP
	-- all accesses go through IXP table so ordering variant loads lazily
	local SETTINGS_MENU_LAYOUT_ORDER_IXP = {}
	setmetatable(SETTINGS_MENU_LAYOUT_ORDER_IXP, LAYOUT_ORDER_MT)
	return SETTINGS_MENU_LAYOUT_ORDER_IXP
end

-- Returns a LayoutOrder of Settings Menu with flagging
local function getLayoutOrder()
	local layoutOrder = {} :: any
	if FFlagOverrideInExperienceMenuReorderFirstVariant then 
		layoutOrder = LAYOUT_REORDER_VARIANT_1 
	elseif FFlagInExperienceMenuReorderFirstVariant then 
		layoutOrder = LayoutReOrderIXP() 
	else
		layoutOrder = SETTINGS_MENU_LAYOUT_ORDER
	end

	return layoutOrder
end

return {
	SETTINGS_MENU_LAYOUT_ORDER = getLayoutOrder()
}
