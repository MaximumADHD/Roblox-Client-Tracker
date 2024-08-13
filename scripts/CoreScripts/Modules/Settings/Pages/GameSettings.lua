--!nonstrict
--!nolint GlobalUsedAsLocal

--[[
		Filename: GameSettings.lua
		Written by: jeditkacheff
		Version 1.1
		Description: Takes care of the Game Settings Tab in Settings Menu
--]]
-------------- SERVICES --------------
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GuiService = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService('HttpService')
local RunService = game:GetService("RunService")
local ContextActionService = game:GetService("ContextActionService")
local Players = game:GetService("Players")
local VRService = game:GetService("VRService")
local SoundService = game:GetService("SoundService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local Settings = UserSettings()
local GameSettings = Settings.GameSettings
local VideoCaptureService = game:GetService("VideoCaptureService")
local UserGameSettings = Settings:GetService("UserGameSettings")
local Url = require(RobloxGui.Modules.Common.Url)
local VoiceChatService = nil
local TextChatService = game:GetService("TextChatService")
local SafetyService = game:GetService("SafetyService")
local ExperienceStateCaptureService = nil
if game:GetEngineFeature("CaptureModeEnabled") then
	ExperienceStateCaptureService = game:GetService("ExperienceStateCaptureService")
end

local FFlagAvatarChatCoreScriptSupport = require(RobloxGui.Modules.Flags.FFlagAvatarChatCoreScriptSupport)
local getCamMicPermissions = require(RobloxGui.Modules.Settings.getCamMicPermissions)
local isCamEnabledForUserAndPlace = require(RobloxGui.Modules.Settings.isCamEnabledForUserAndPlace)

local PermissionsProtocol = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol.default
local cameraDevicePermissionGrantedSignal = require(CoreGui.RobloxGui.Modules.Settings.cameraDevicePermissionGrantedSignal)
local getFFlagDoNotPromptCameraPermissionsOnMount = require(RobloxGui.Modules.Flags.getFFlagDoNotPromptCameraPermissionsOnMount)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local GetFFlagSelfViewCameraSettings = SharedFlags.GetFFlagSelfViewCameraSettings
local GetFFlagAlwaysShowVRToggle = require(RobloxGui.Modules.Flags.GetFFlagAlwaysShowVRToggle)
local GetFFlagAddHapticsToggle = SharedFlags.GetFFlagAddHapticsToggle
local GetFFlagEnablePreferredTextSizeSettingInMenus = SharedFlags.GetFFlagEnablePreferredTextSizeSettingInMenus
local FFlagCameraSensitivityPadding = game:DefineFastFlag("CameraSensitivityPadding", false)
local GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu = require(script.Parent.Parent.Flags.GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu)


-------------- CONSTANTS --------------
-- DEPRECATED Remove with FixGraphicsQuality
local GRAPHICS_QUALITY_LEVELS = 10

-- DEPRECATED Remove with FixGraphicsQuality
local GRAPHICS_QUALITY_TO_INT = {
	["Enum.SavedQualitySetting.Automatic"] = 0,
	["Enum.SavedQualitySetting.QualityLevel1"] = 1,
	["Enum.SavedQualitySetting.QualityLevel2"] = 2,
	["Enum.SavedQualitySetting.QualityLevel3"] = 3,
	["Enum.SavedQualitySetting.QualityLevel4"] = 4,
	["Enum.SavedQualitySetting.QualityLevel5"] = 5,
	["Enum.SavedQualitySetting.QualityLevel6"] = 6,
	["Enum.SavedQualitySetting.QualityLevel7"] = 7,
	["Enum.SavedQualitySetting.QualityLevel8"] = 8,
	["Enum.SavedQualitySetting.QualityLevel9"] = 9,
	["Enum.SavedQualitySetting.QualityLevel10"] = 10
}
local PC_CHANGED_PROPS = {
	DevComputerMovementMode = true,
	DevComputerCameraMode = true,
	DevEnableMouseLock = true
}
local TOUCH_CHANGED_PROPS = {
	DevTouchMovementMode = true,
	DevTouchCameraMode = true
}
local CAMERA_MODE_DEFAULT_STRING = UserInputService.TouchEnabled and "Default (Follow)" or "Default (Classic)"

local VOICE_CHAT_DEVICE_TYPE = {
	Input = "Input",
	Output = "Output",
}

local MICROPROFILER_SETTINGS_PRESSED = "MicroprofilerSettingsPressed"

local MOVEMENT_MODE_DEFAULT_STRING = UserInputService.TouchEnabled and "Default (Dynamic Thumbstick)" or "Default (Keyboard)"
local MOVEMENT_MODE_KEYBOARDMOUSE_STRING = "Keyboard + Mouse"
local MOVEMENT_MODE_CLICKTOMOVE_STRING = UserInputService.TouchEnabled and "Tap to Move" or "Click to Move"
local MOVEMENT_MODE_DYNAMICTHUMBSTICK_STRING = "Dynamic Thumbstick"
local MOVEMENT_MODE_THUMBSTICK_STRING = "Classic Thumbstick"

----------- VIDEO CAMERA ------------

local CAMERA_DEVICE_INDEX_KEY = "CameraDeviceIndex"
local CAMERA_DEVICE_NAMES_KEY = "CameraDeviceNames"
local CAMERA_DEVICE_GUID_KEY = "CameraDeviceGuids"
local CAMERA_DEVICE_SELECTOR_KEY = "CameraDeviceSelector"
local CAMERA_DEVICE_FRAME_KEY = "CameraDeviceFrame"
local CAMERA_DEVICE_INFO_KEY = "CameraDeviceInfo"

----------- LAYOUT ORDER ------------
-- Recall that layout order values are relative
local SETTINGS_MENU_LAYOUT_ORDER = {
	-- Overscan Entry point, console only
	["OverscanAdjustButton"] = 1,
	-- Movement and Camera Mode
	["ShiftLockFrame"] = 10,
	["CameraModeFrame"] = 11,
	["MovementModeFrame"] = 12,
	["GamepadSensitivityFrame"] = 13,
	-- Experience Language
	["LanguageSelectorFrame"] = 20,
	-- Feedback Mode
	["FeedbackModeButton"] = 30,
	-- Chat Translation
	["ChatTranslationFrame"] = 40,
	["ChatLanguageSelectorFrame"] = 41,
	["ChatTranslationToggleFrame"] = 42,
	-- Camera Sensitivity
	["MouseAdvancedFrame"] = 50,
	-- Input/Output and Volume
	["DeviceFrameInput"] = 60,
	["DeviceFrameOutput"] = 61,
	["VolumeFrame"] = 62,
	["HapticsFrame"] = 63,
	-- Graphics
	["FullScreenFrame"] = 70,
	["GraphicsEnablerFrame"] = 71,
	["GraphicsQualityFrame"] = 72,
	["ReducedMotionFrame"] = 73,
	["PreferredTransparencyFrame"] = 74,
	["PreferredTextSizeFrame"] = 75,
	["UiNavigationKeyBindEnabledFrame"] = 76,
	-- Performance
	["PerformanceStatsFrame"] = 80,
	["MicroProfilerFrame"] = 81,
	-- More camera
	["CameraInvertedFrame"] = 90,
	[CAMERA_DEVICE_FRAME_KEY] = 91,
	-- VR, Dev Console, Special
	["VREnabledFrame"] = 100,
	["DeveloperConsoleButton"] = 101,
	["UiToggleRow"] = 200,
	["UiToggleRowCustom"] = 200, -- Replaces "UiToggleRow" when FFlagUserShowGuiHideToggles == true
	["UiToggleRowBillboards"] = 201,
	["UiToggleRowNameplates"] = 202,
	["FreecamToggleRow"] = 203,
	["InformationFrame"] = 999, -- Reserved to be last
}
-------- CHAT TRANSLATION ----------
local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)

local GetFFlagChatTranslationSettingEnabled = require(RobloxGui.Modules.Flags.GetFFlagChatTranslationSettingEnabled)
local GetFStringChatTranslationLayerName = require(RobloxGui.Modules.Flags.GetFStringChatTranslationLayerName)
local GetFFlagChatTranslationLaunchEnabled = require(RobloxGui.Modules.Flags.GetFFlagChatTranslationLaunchEnabled)
local GetFFlagChatTranslationHoldoutEnabled = require(RobloxGui.Modules.Flags.GetFFlagChatTranslationHoldoutEnabled)
local GetFFlagChatTranslationWaitForIXP = require(RobloxGui.Modules.Flags.GetFFlagChatTranslationWaitForIXP)
local GetFFlagChatTranslationForceSetting = require(RobloxGui.Modules.Flags.GetFFlagChatTranslationForceSetting)
local GetFFlagChatTranslationNewDefaults = require(RobloxGui.Modules.Flags.GetFFlagChatTranslationNewDefaults)

local ChatTranslationSettingsMoved = game:GetEngineFeature("TextChatServiceSettingsSaved")
local CreateChatTranslationOptionsWithChatLanguageSwitcher = require(RobloxGui.Modules.Settings.Pages.GameSettingsRowInitializers.ChatTranslationOptionsWithChatLanguageSwitcherInitializer)

local GameBasicSettingsFramerateCap = game:GetEngineFeature("GameBasicSettingsFramerateCap")

----------- UTILITIES --------------
local utility = require(RobloxGui.Modules.Settings.Utility)
local Constants = require(RobloxGui:WaitForChild("Modules"):WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))

local CoreUtility = require(RobloxGui.Modules.CoreUtility)

local PlayerPermissionsModule = require(RobloxGui.Modules.PlayerPermissionsModule)
local GetHasGuiHidingPermission = require(RobloxGui.Modules.Common.GetHasGuiHidingPermission)
local Theme = require(RobloxGui.Modules.Settings.Theme)
local Cryo = require(CorePackages.Cryo)
local GfxReset = require(script.Parent.Parent.GfxReset)
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create

------------ Variables -------------------
RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")
RobloxGui:WaitForChild("Modules"):WaitForChild("Settings"):WaitForChild("SettingsHub")
local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()
local PageInstance = nil
local LocalPlayer = Players.LocalPlayer
local platform = UserInputService:GetPlatform()
local PolicyService = require(RobloxGui.Modules.Common.PolicyService)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local GetFixGraphicsQuality = require(RobloxGui.Modules.Flags.GetFixGraphicsQuality)
local RenderSettings
local SendNotification
local RobloxTranslator = require(RobloxGui:WaitForChild("Modules"):WaitForChild("RobloxTranslator"))

local UniversalAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy)
local getAppFeaturePolicies = UniversalAppPolicy.getAppFeaturePolicies

local VideoPromptSystemDefault = RobloxTranslator:FormatByKey("Feature.SettingsHub.Video.SystemDefault")
local VideoPromptVideoCamera = RobloxTranslator:FormatByKey("Feature.SettingsHub.Video.VideoCamera")

local log = require(RobloxGui.Modules.Logger):new(script.Name)

if GetFixGraphicsQuality() then
	RenderSettings = settings().Rendering
	SendNotification = RobloxGui:WaitForChild("SendNotificationInfo")
end

local UnlSuccess, UnlResult =
	pcall(
	function()
		return settings():GetFFlag("UseNotificationsLocalization")
	end
)
local FFlagUseNotificationsLocalization = UnlSuccess and UnlResult
game:DefineFastInt("RomarkStartWithGraphicQualityLevel", -1)
local FIntRomarkStartWithGraphicQualityLevel = game:GetFastInt("RomarkStartWithGraphicQualityLevel")

local canUseMicroProfiler = not PolicyService:IsSubjectToChinaPolicies()

local isDesktopClient = (platform == Enum.Platform.Windows) or (platform == Enum.Platform.OSX) or (platform == Enum.Platform.UWP)
local isMobileClient = (platform == Enum.Platform.IOS) or (platform == Enum.Platform.Android)
local UseMicroProfiler = (isMobileClient or isDesktopClient) and canUseMicroProfiler

local GetFIntVoiceChatDeviceChangeDebounceDelay = require(RobloxGui.Modules.Flags.GetFIntVoiceChatDeviceChangeDebounceDelay)
local GetFFlagVoiceChatUILogging = require(RobloxGui.Modules.Flags.GetFFlagVoiceChatUILogging)
local GetFFlagEnableUniveralVoiceToasts = require(RobloxGui.Modules.Flags.GetFFlagEnableUniveralVoiceToasts)
local GetFFlagEnableExplicitSettingsChangeAnalytics = require(RobloxGui.Modules.Settings.Flags.GetFFlagEnableExplicitSettingsChangeAnalytics)
local GetFFlagGameSettingsCameraModeFixEnabled = SharedFlags.GetFFlagGameSettingsCameraModeFixEnabled
local GetFFlagFixCyclicFullscreenIndexEvent = require(RobloxGui.Modules.Settings.Flags.GetFFlagFixCyclicFullscreenIndexEvent)
local FFlagDisableFeedbackSoothsayerCheck = game:DefineFastFlag("DisableFeedbackSoothsayerCheck", false)
local FFlagUserShowGuiHideToggles = game:DefineFastFlag("UserShowGuiHideToggles", false)
local FFlagFixDeveloperConsoleButtonSizeAndPositioning = game:DefineFastFlag("FixDeveloperConsoleButtonSizeAndPositioning", false)
local FFlagEnableTFFeedbackModeEntryCheck = game:DefineFastFlag("EnableTFFeedbackModeEntryCheck", false)
local FFlagFeedbackEntryPointButtonSizeAdjustment = game:DefineFastFlag("FeedbackEntryPointButtonSizeAdjustment2", false)
local FFlagFeedbackEntryPointImprovedStrictnessCheck = game:DefineFastFlag("FeedbackEntryPointImprovedStrictnessCheck", false)
local FFlagFixSensitivityTextPrecision = game:DefineFastFlag("FixSensitivityTextPrecision", false)

local function reportSettingsChangeForAnalytics(fieldName, oldValue, newValue, extraData)
	if not GetFFlagEnableExplicitSettingsChangeAnalytics() or oldValue == newValue or oldValue == nil or newValue == nil then
		return
	end

	local stringTable = {
		universe_id = tostring(game.GameId),
		name = fieldName,
		old_value = tostring(oldValue),
		new_value = tostring(newValue),
		has_touch = UserInputService.TouchEnabled,
		has_mouse = UserInputService.MouseEnabled,
		has_gamepad = UserInputService.GamepadEnabled,
	}
	if extraData then
		stringTable = Cryo.Dictionary.join(stringTable, extraData)
	end

	AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, Constants.AnalyticsInGameMenuName, Constants.AnalyticsExplicitSettingsChangeName, stringTable)
end

local function reportSettingsForAnalytics()
	local stringTable = {}
	if UserInputService.TouchEnabled then
		stringTable["camera_mode_touch"] = tostring(GameSettings.TouchCameraMovementMode)
	else
		stringTable["camera_mode_desktop"] = tostring(GameSettings.ComputerCameraMovementMode)
	end

	if UserInputService.TouchEnabled then
		stringTable["movement_mode_touch"] = tostring(GameSettings.TouchMovementMode)
	else
		stringTable["movement_mode_desktop"] = tostring(GameSettings.ComputerMovementMode)
	end

	if UserInputService.MouseEnabled then
		stringTable["shift_lock_enabled"] = tostring(GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch)
	end

	if UserInputService.GamepadEnabled and GameSettings.IsUsingGamepadCameraSensitivity then
		local sensitivity = GameSettings.GamepadCameraSensitivity
		local formattedSensitivity = tonumber(string.format("%.2f", sensitivity))
		stringTable["camera_sensitivity_gamepad"] = tostring(formattedSensitivity)
	end
	if UserInputService.MouseEnabled then
		local sensitivity = GameSettings.MouseSensitivityFirstPerson.X
		local formattedSensitivity = tonumber(string.format("%.2f", sensitivity))
		stringTable["camera_sensitivity_mouse"] = tostring(formattedSensitivity)
	end

	stringTable["camera_y_inverted"] = tostring(GameSettings.CameraYInverted)
	stringTable["show_performance_stats"] = tostring(GameSettings.PerformanceStatsVisible)
	stringTable["volume"] = tostring( math.floor((GameSettings.MasterVolume * 10) + 0.5) )
	stringTable["gfx_quality_level"] = tostring(settings().Rendering.QualityLevel)
	if GameBasicSettingsFramerateCap then
		stringTable["framerate_cap"] = tostring(GameSettings.FramerateCap)
	end

	stringTable["fullscreen_enabled"] = tostring(GameSettings:InFullScreen())
	stringTable["microprofiler_enabled"] = tostring(GameSettings.OnScreenProfilerEnabled)
	stringTable["microprofiler_webserver_enabled"] = tostring(GameSettings.MicroProfilerWebServerEnabled)

	stringTable["reduced_motion"] = tostring(GameSettings.ReducedMotion)
	stringTable["preferred_transparency"] = tostring(GameSettings.PreferredTransparency)
	if GetFFlagEnablePreferredTextSizeSettingInMenus() then
		stringTable["preferred_text_size"] = tostring(GameSettings.PreferredTextSize)
	end 
	stringTable["ui_navigation_key_bind_enabled"] = tostring(GameSettings.UiNavigationKeyBindEnabled)

	stringTable["universeid"] = tostring(game.GameId)
	AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, Constants.AnalyticsInGameMenuName, Constants.AnalyticsSettingsChangeName, stringTable)
end

--------------- FLAGS ----------------
game:DefineFastInt("V1MenuLanguageSelectionFeaturePerMillageRollout", 0)
game:DefineFastString("V1MenuLanguageSelectionFeatureForcedUserIds", "")
local FFlagIGMEnableGFXReset = game:DefineFastFlag("IGMEnableGFXReset", false)

----------- CLASS DECLARATION --------------

local function Initialize()

	if FFlagIGMEnableGFXReset then
		GfxReset.RunGfxReset()
	end

	local settingsPageFactory = require(RobloxGui.Modules.Settings.SettingsPageFactory)
	local this = settingsPageFactory:CreateNewPage()

	local allSettingsCreated = false
	local settingsDisabledInVR = {}
	local function onVRSettingsReady()
		local vrEnabled = VRService.VREnabled
		for settingFrame, _ in pairs(settingsDisabledInVR) do
			settingFrame.Visible = not vrEnabled
		end
	end

	local function onVREnabled()
		if VRService.VREnabled and allSettingsCreated then
			--Only call this if all settings have been created.
			--If they aren't ready by the time VR is enabled, this
			--will be called later when they are.
			onVRSettingsReady()
		end
	end
	VRService:GetPropertyChangedSignal("VREnabled"):connect(onVREnabled)
	onVREnabled()

	----------- FUNCTIONS ---------------
	local function createGraphicsOptions()
		------------------ Fullscreen Selection GUI Setup ------------------
		local fullScreenInit = 1
		if not GameSettings:InFullScreen() then
			fullScreenInit = 2
		end

		this.FullscreenFrame, this.FullscreenLabel, this.FullscreenEnabler =
			utility:AddNewRow(this, "Fullscreen", "Selector", {"On", "Off"}, fullScreenInit)
		this.FullscreenFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["FullScreenFrame"]

		settingsDisabledInVR[this.FullscreenFrame] = true

		this.FullscreenEnabler.IndexChanged:connect(
			function(newIndex)
				local wasFullscreen = GameSettings:InFullScreen()
				if newIndex == 1 then
					if not GameSettings:InFullScreen() then
						GuiService:ToggleFullscreen()
						if GetFFlagFixCyclicFullscreenIndexEvent() then
							if this.FullscreenEnabler.GetSelectedIndex() ~= 1 then
								this.FullscreenEnabler:SetSelectionIndex(1)
							end
						else
							this.FullscreenEnabler:SetSelectionIndex(1)
						end
					end
				elseif newIndex == 2 then
					if GameSettings:InFullScreen() then
						GuiService:ToggleFullscreen()
						if GetFFlagFixCyclicFullscreenIndexEvent() then
							if this.FullscreenEnabler.GetSelectedIndex() ~= 2 then
								this.FullscreenEnabler:SetSelectionIndex(2)
							end
						else
							this.FullscreenEnabler:SetSelectionIndex(2)
						end
					end
				end
				spawn(function() --fullscreen setting takes a frame to update so need to wait before reporting
					if GetFFlagEnableExplicitSettingsChangeAnalytics() then
						reportSettingsChangeForAnalytics('fullscreen_enabled', wasFullscreen, GameSettings:InFullScreen())
					end
					reportSettingsForAnalytics()
				end)
			end
		)

		GameSettings.FullscreenChanged:connect(
			function(isFullScreen)
				if isFullScreen then
					if this.FullscreenEnabler:GetSelectedIndex() ~= 1 then
						this.FullscreenEnabler:SetSelectionIndex(1)
					end
				else
					if this.FullscreenEnabler:GetSelectedIndex() ~= 2 then
						this.FullscreenEnabler:SetSelectionIndex(2)
					end
				end

				AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, Constants.AnalyticsInGameMenuName, Constants.AnalyticsFullscreenModeName, {
					enabled = isFullScreen,
				})
			end
		)

		------------------ Gfx Enabler Selection GUI Setup ------------------
		local graphicsEnablerStart = 1

		if GetFixGraphicsQuality() then
			if GameSettings.GraphicsQualityLevel ~= 0 then
				graphicsEnablerStart = 2
			end
		else
			if GameSettings.SavedQualityLevel ~= Enum.SavedQualitySetting.Automatic then
				graphicsEnablerStart = 2
			end
		end

		this.GraphicsEnablerFrame, this.GraphicsEnablerLabel, this.GraphicsQualityEnabler =
			utility:AddNewRow(this, "Graphics Mode", "Selector", {"Automatic", "Manual"}, graphicsEnablerStart)
		this.GraphicsEnablerFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["GraphicsEnablerFrame"]

		------------------ Gfx Slider GUI Setup  ------------------

		local numGraphicsQualityLevels
		if GetFixGraphicsQuality() then
			numGraphicsQualityLevels = RenderSettings:GetMaxQualityLevel() - 1
			-- Don't be fooled by the word "max". It's not the maximum level, it's a strict upper bound
			-- so if GetMaxQualityLevel() returns 22, that means the biggest the level can be is 21


			--[[
				Cache the most recent non-zero graphics level in this member variable.  If the user
				switches to Auto mode, we use it to set the graphics level to whatever the user had set
				the last time they were in manual mode.
			]]
			this.mostRecentGraphicsQualityValue = numGraphicsQualityLevels

			this.GraphicsQualityFrame, this.GraphicsQualityLabel, this.GraphicsQualitySlider =
				utility:AddNewRow(this, "Graphics Quality", "Slider", numGraphicsQualityLevels, 1)
		else
			this.GraphicsQualityFrame, this.GraphicsQualityLabel, this.GraphicsQualitySlider =
				utility:AddNewRow(this, "Graphics Quality", "Slider", GRAPHICS_QUALITY_LEVELS, 1)
		end

		this.GraphicsQualityFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["GraphicsQualityFrame"]
		this.GraphicsQualitySlider:SetMinStep(1)

		------------------ FPS Cap GUI Setup  ------------------
		if GameBasicSettingsFramerateCap then
			-- VR is uncapped
			if not VRService.VREnabled then
				local framerateCaps = table.clone(Constants.FramerateCaps)
				local framerateCapsToText = {RobloxTranslator:FormatByKey("Feature.SettingsHub.GameSettings.FramerateCapDefaultEntry", {
					Frames = GameSettings:GetDefaultFramerateCap(),
				})}

				for _, framerate in framerateCaps do
					table.insert(framerateCapsToText, RobloxTranslator:FormatByKey("Feature.SettingsHub.GameSettings.FramerateEntry", {
						Frames = framerate,
					}))
				end

				table.insert(framerateCaps, 1, -1)

				-- `task.defer` being used because DropDown requires the hub to be set,
				-- but that isn't done until a later call.
				task.defer(function()
					this.FramerateCapFrame, this.FramerateCapLabel, this.FramerateCapMode =
						utility:AddNewRow(
							this,
							RobloxTranslator:FormatByKey("Feature.SettingsHub.GameSettings.MaximumFramerate"),
							"DropDown",
							framerateCapsToText,
							table.find(framerateCaps, GameSettings.FramerateCap),
							nil,
							RobloxTranslator:FormatByKey("Feature.SettingsHub.GameSettings.MaximumFramerate.Description")
						)
					this.FramerateCapFrame.LayoutOrder = 12

					this.FramerateCapMode.IndexChanged:Connect(function(newIndex)
						local oldValue = GameSettings.FramerateCap
						GameSettings.FramerateCap = framerateCaps[newIndex]

						if GetFFlagEnableExplicitSettingsChangeAnalytics() then
							reportSettingsChangeForAnalytics("framerate_cap", oldValue, GameSettings.FramerateCap)
						end

						reportSettingsForAnalytics()
					end)
				end)
			end
		end

		------------------------------------------------------
		------------------------- Connection Setup ----------------------------
		settings().Rendering.EnableFRM = true

		-- DEPRECATED Remove with FixGraphicsQuality
		function SetGraphicsQuality(newValue, automaticSettingAllowed)

			if FFlagIGMEnableGFXReset then
				local override, overrideValue = GfxReset.TemporaryOverride(newValue)
				if override then
					settings().Rendering.QualityLevel = overrideValue
					return
				end
			end

			local percentage = newValue / GRAPHICS_QUALITY_LEVELS
			local newQualityLevel = math.floor((settings().Rendering:GetMaxQualityLevel() - 1) * percentage)
			if newQualityLevel == 20 then
				newQualityLevel = 21
			elseif newValue == 1 then
				newQualityLevel = 1
			elseif newValue < 1 and not automaticSettingAllowed then
				newValue = 1
				newQualityLevel = 1
			elseif newQualityLevel > settings().Rendering:GetMaxQualityLevel() then
				newQualityLevel = settings().Rendering:GetMaxQualityLevel() - 1
			end

			GameSettings.SavedQualityLevel = newValue
			settings().Rendering.QualityLevel = newQualityLevel
		end

		-- DEPRECATED Remove with FixGraphicsQuality
		local function setGraphicsToAuto()
			this.GraphicsQualitySlider:SetZIndex(1)
			this.GraphicsQualityLabel.ZIndex = 1
			this.GraphicsQualitySlider:SetInteractable(false)

			SetGraphicsQuality(Enum.QualityLevel.Automatic.Value, true)
		end

		-- DEPRECATED. Remove with FixGraphicsQuality
		local function setGraphicsToManual(level)
			this.GraphicsQualitySlider:SetZIndex(2)
			this.GraphicsQualityLabel.ZIndex = 2
			this.GraphicsQualitySlider:SetInteractable(true)

			-- need to force the quality change if slider is already at this position
			if this.GraphicsQualitySlider:GetValue() == level then
				SetGraphicsQuality(level)
			else
				this.GraphicsQualitySlider:SetValue(level)
			end
		end

		--[[
			Perform a UI change corrseponding to the user setting Auto mode.
		]]
		local function disableGraphicsQualitySliderForAutoMode()
			this.GraphicsQualitySlider:SetZIndex(1)
			this.GraphicsQualityLabel.ZIndex = 1
			this.GraphicsQualitySlider:SetInteractable(false)
		end

		--[[
			Sets the value visible in the slider GUI object to the given number (not an enum)
			If the slider was hidden because we were in Auto mode before, this function also makes
			the slider visible and interactable.

			Also, it doesn't bother setting the value if unchanged.
		]]
		local function setGraphicsQualitySliderLevel(level)
			this.GraphicsQualitySlider:SetZIndex(2)
			this.GraphicsQualityLabel.ZIndex = 2
			this.GraphicsQualitySlider:SetInteractable(true)

			if this.GraphicsQualitySlider:GetValue() ~= level then
				this.GraphicsQualitySlider:SetValue(level)
			end
		end

		--[[
			Perform a settings change corresponding to the user setting Auto mode.
		]]
		local function setGraphicsQualityToAuto()
			GameSettings.GraphicsQualityLevel = 0
			RenderSettings.QualityLevel = 0
			disableGraphicsQualitySliderForAutoMode()
		end

		--[[
			Sets the rendering quality in three places:
			GameSettings, settings() and the GUI.

			GameSettings gets saved to persistent local storage.
			settings() affects the graphics engine.
			To set the GUI, we call setGraphicsQualitySliderLevel, which importantly does nothing if the value is already
			set on the GUI. (Otherwise, we might get into an infinite loop.)

			Returns two values:
				newValue - note that the first thing this function does is clamp to the appropriate range,
					and newValue is the clampped value.
				delta - the difference between the new value and the old value.
		]]
		local function setGraphicsQualityLevel(inputValue)
			local newValue = math.clamp(inputValue, 1, numGraphicsQualityLevels)
			local oldValue = GameSettings.GraphicsQualityLevel

			GameSettings.GraphicsQualityLevel = newValue
			RenderSettings.QualityLevel = newValue
			setGraphicsQualitySliderLevel(newValue)

			this.mostRecentGraphicsQualityValue = newValue

			if GetFFlagEnableExplicitSettingsChangeAnalytics() then
				reportSettingsChangeForAnalytics('gfx_quality_level', oldValue, newValue)
			end

			--[[
				The caller might want to know what effect calling this setter actually had, so we return:
					newValue - the actual new value (after clamping) and
					delta - the difference between the new value and the old one.

				So for instance, if the level was already at the 21, 21 is the maximum, and we
				tried to increment it to 22, this would returna newValue of 21 and a delta of 0
			]]
			return newValue, newValue - oldValue
		end

		--[[
			On startup, set the graphics quality level (according to the engine and also according to UI) to
			the most logical thing. If the fast-int is set that overrides it, set to the overridden value,
			if not, use the value stored in settings: GameSettings.GraphicsQualityLevel
		]]
		local function initGraphicsQualityLevel()
			if FIntRomarkStartWithGraphicQualityLevel >= 0 then
				if FIntRomarkStartWithGraphicQualityLevel == 0 then
					setGraphicsQualityToAuto()
					this.mostRecentGraphicsQualityValue = numGraphicsQualityLevels
				else
					setGraphicsQualityLevel(FIntRomarkStartWithGraphicQualityLevel)
				end
			elseif GameSettings.GraphicsQualityLevel == 0 then
				setGraphicsQualityToAuto()
				this.mostRecentGraphicsQualityValue = numGraphicsQualityLevels
			else
				setGraphicsQualityLevel(GameSettings.GraphicsQualityLevel)
			end
		end

		if GetFixGraphicsQuality() then
			this.GraphicsQualitySlider.ValueChanged:connect(setGraphicsQualityLevel)
				--[[
					Gets called when the user hits the button in settings that switches between Manual and Auto
					we forward that call to the appropriate function above.
				]]
				this.GraphicsQualityEnabler.IndexChanged:connect(
					function(newIndex)
						if newIndex == 1 then
							setGraphicsQualityToAuto()
						elseif newIndex == 2 then
							setGraphicsQualityLevel(this.mostRecentGraphicsQualityValue)
						end
						reportSettingsForAnalytics()
				end
			)

			--[[
				Generates the little popup in the lower right hand corner when the user changes the
				graphics quality level with the F-keys.
			]]
			local function sendNotificationForGraphicsQualityLevelChange(message, level)
				SendNotification:Fire({
					GroupName = "Graphics",
					Title = "Graphics Quality",
					Text = message,
					DetailText = message,
					Image = "",
					Duration = 2
				})
			end

			--[[
				Takes two arguments: newValue, delta. If delta is non-zero, constructs a message for the pop-up
				notification (based on whether delta is positive or negative) to inform the user that the level
				incrememnted / decremented to the new value.
			]]
			local function notifyForLevelChange(newValue, delta)
				if delta > 0 then
					sendNotificationForGraphicsQualityLevelChange(
						RobloxTranslator:FormatByKey("NotificationScrip2.onCurrentGraphicsQualityLevelChanged.Increased", {RBX_NUMBER = tostring(newValue)}),
						newValue)
				elseif delta < 0 then
					sendNotificationForGraphicsQualityLevelChange(
						RobloxTranslator:FormatByKey("NotificationScrip2.onCurrentGraphicsQualityLevelChanged.Decreased", {RBX_NUMBER = tostring(newValue)}),
						newValue)
				end
			end

			--[[
				Gets called when the user hits F10 / Shift-F10 to adjust the graphcs quality level.

				Based on whether the argument indicates an increase (or decrease), calls setGraphicsQualityLevel to increment (or decrement)
				the level. The setter can decide that it doesn't want to increment (if the new value would be out-of-range)
				the setter returns two values newValue and delta indicating what change actually happened.  We then pass thos two values
				to notifyForLevelChange to construct the notification.
			]]
			game.GraphicsQualityChangeRequest:Connect(
				function(isIncrease)
					local current = GameSettings.GraphicsQualityLevel
					if current ~= 0 then
						local targetValue = current + (isIncrease and 1 or -1)
						local newValue, delta = setGraphicsQualityLevel(targetValue)
						notifyForLevelChange(newValue, delta)
					end
				end
			)

			initGraphicsQualityLevel()
		else
			-- DEPRECATED Remove with FixGraphicsQuality
			local initializedGfxLvl = false
			this.GraphicsQualitySlider.ValueChanged:connect(
				function(newValue)
					SetGraphicsQuality(newValue)
					if initializedGfxLvl == true then
						reportSettingsForAnalytics()
					end
					initializedGfxLvl = true
				end
			)

			-- DEPRECATED Remove with FixGraphicsQuality
			this.GraphicsQualityEnabler.IndexChanged:connect(
				function(newIndex)
					if newIndex == 1 then
						setGraphicsToAuto()
					elseif newIndex == 2 then
						setGraphicsToManual(this.GraphicsQualitySlider:GetValue())
					end
					reportSettingsForAnalytics()
				end
			)

			-- DEPRECATED Remove with FixGraphicsQuality
			game.GraphicsQualityChangeRequest:Connect(
				function(isIncrease)
					--	was using settings().Rendering.Quality level, which was wrongly saying it was automatic.
					if GameSettings.SavedQualityLevel ~= Enum.SavedQualitySetting.Automatic then
						local currentGraphicsSliderValue = this.GraphicsQualitySlider:GetValue()
						if isIncrease then
							currentGraphicsSliderValue = currentGraphicsSliderValue + 1
						else
							currentGraphicsSliderValue = currentGraphicsSliderValue - 1
						end

						this.GraphicsQualitySlider:SetValue(currentGraphicsSliderValue)
					end
				end
			)

			-- DEPRECATED Remove with FixGraphicsQuality
			-- initialize the slider position
			if FIntRomarkStartWithGraphicQualityLevel >= 0 then
				if FIntRomarkStartWithGraphicQualityLevel == 0 then
					this.GraphicsQualityEnabler:SetSelectionIndex(1)
					setGraphicsToAuto()
				else
					this.GraphicsQualityEnabler:SetSelectionIndex(2)
					setGraphicsToManual(FIntRomarkStartWithGraphicQualityLevel)
				end
			elseif GameSettings.SavedQualityLevel == Enum.SavedQualitySetting.Automatic then
				this.GraphicsQualitySlider:SetValue(5)
				setGraphicsToAuto()
			else
				local graphicsLevel = tostring(GameSettings.SavedQualityLevel)
				if GRAPHICS_QUALITY_TO_INT[graphicsLevel] then
					graphicsLevel = GRAPHICS_QUALITY_TO_INT[graphicsLevel]
				else
					graphicsLevel = GRAPHICS_QUALITY_LEVELS
				end
				SetGraphicsQuality(graphicsLevel)
				spawn(
					function()
						this.GraphicsQualitySlider:SetValue(graphicsLevel)
					end
				)
			end
		end
	end -- of createGraphicsOptions

	local function createReducedMotionOptions()
		local startIndex = 2
		if GameSettings.ReducedMotion then
			startIndex = 1
		end

		local reducedMotionLabel = RobloxTranslator:FormatByKey("Feature.Accessibility.Heading.ReducedMotion")
		local reducedMotionDescription = RobloxTranslator:FormatByKey("Feature.Accessibility.Description.ReducedMotion")
		local onLabel = RobloxTranslator:FormatByKey("InGame.CommonUI.Label.On")
		local offLabel = RobloxTranslator:FormatByKey("InGame.CommonUI.Label.Off")

		this.ReducedMotionFrame, this.ReducedMotionLabel, this.ReducedMotionMode =
			utility:AddNewRow(this, reducedMotionLabel, "Selector", {onLabel, offLabel}, startIndex, nil, reducedMotionDescription)
		this.ReducedMotionFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["ReducedMotionFrame"]

		this.ReducedMotionMode.IndexChanged:connect(
			function(newIndex)
				local oldValue = GameSettings.ReducedMotion
				GameSettings.ReducedMotion = newIndex == 1

				if GetFFlagEnableExplicitSettingsChangeAnalytics() then
					reportSettingsChangeForAnalytics('reduced_motion', oldValue, GameSettings.ReducedMotion)
				end
				reportSettingsForAnalytics()
			end
		)
	end

	local function createPreferredTransparencyOptions()
		local startValue = 10 - math.clamp(math.floor(GameSettings.PreferredTransparency * 10 + 0.5), 0, 10)

		local preferredTransparencyLabel = RobloxTranslator:FormatByKey("Feature.Accessibility.Heading.PreferredTransparency")
		local preferredTransparencyDescription = RobloxTranslator:FormatByKey("Feature.Accessibility.Description.PreferredTransparency")
		local preferredTransparencyLeftLabel = RobloxTranslator:FormatByKey("Feature.Accessibility.PreferredTransparency.Transparent")
		local preferredTransparencyRightLabel = RobloxTranslator:FormatByKey("Feature.Accessibility.PreferredTransparency.Opaque")

		this.PreferredTransparencyFrame, this.PreferredTransparencyLabel, this.PreferredTransparencySlider =
			utility:AddNewRow(this, preferredTransparencyLabel, "Slider", 10, startValue, nil, preferredTransparencyDescription, preferredTransparencyLeftLabel, preferredTransparencyRightLabel)
		this.PreferredTransparencyFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["PreferredTransparencyFrame"]

		this.PreferredTransparencySlider.ValueChanged:connect(
			function(newValue)
				newValue = (10 - math.clamp(math.floor(newValue), 0, 10)) / 10
				local oldValue = GameSettings.PreferredTransparency
				GameSettings.PreferredTransparency = newValue

				if GetFFlagEnableExplicitSettingsChangeAnalytics() then
					reportSettingsChangeForAnalytics('preferred_transparency', oldValue, GameSettings.PreferredTransparency)
				end
				reportSettingsForAnalytics()
			end
		)
	end

	local function createPreferredTextSizeOptions()
		local items = Enum.PreferredTextSize:GetEnumItems()
		local startValue = GameSettings.PreferredTextSize.Value - 1

		local preferredTextSizeLabel = RobloxTranslator:FormatByKey("Feature.Accessibility.Heading.PreferredTextSize")
		local preferredTextSizeDescription = RobloxTranslator:FormatByKey("Feature.Accessibility.Description.PreferredTextSize")
		local preferredTextSizeLeftLabel = RobloxTranslator:FormatByKey("Feature.Accessibility.PreferredTextSize.Default")
		local preferredTextSizeRightLabel = RobloxTranslator:FormatByKey("Feature.Accessibility.PreferredTextSize.Largest")
 
		this.PreferredTextSizeFrame, this.PreferredTextSizeLabel, this.PreferredTextSizeSlider =
			utility:AddNewRow(this, preferredTextSizeLabel, "Slider", 3, startValue, nil, preferredTextSizeDescription, preferredTextSizeLeftLabel, preferredTextSizeRightLabel)
		this.PreferredTextSizeFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["PreferredTextSizeFrame"]

		this.PreferredTextSizeSlider.ValueChanged:connect(
			function(newValue)
				local oldValue = GameSettings.PreferredTextSize
				GameSettings.PreferredTextSize = items[newValue+1]
				if GetFFlagEnableExplicitSettingsChangeAnalytics() then
					reportSettingsChangeForAnalytics('preferred_text_size', oldValue, GameSettings.PreferredTextSize)
				end
				reportSettingsForAnalytics()
			end
		)
	end

	local function createUiNavigationKeyBindOptions()
		local startIndex = 2
		if GameSettings.UiNavigationKeyBindEnabled then
			startIndex = 1
		end

		local uiNavigationKeyBindLabel = RobloxTranslator:FormatByKey("Feature.Accessibility.Heading.UiNavigationKeyBind")
		local uiNavigationKeyBindDescription = RobloxTranslator:FormatByKey("Feature.Accessibility.Description.UiNavigationKeyBind", {
			uiNavigationKey = UserInputService:GetStringForKeyCode(Enum.KeyCode.BackSlash)
		})
		local onLabel = RobloxTranslator:FormatByKey("InGame.CommonUI.Label.On")
		local offLabel = RobloxTranslator:FormatByKey("InGame.CommonUI.Label.Off")

		this.UiNavigationKeyBindEnabledFrame, this.UiNavigationKeyBindEnabledLabel, this.UiNavigationKeyBindEnabledMode =
			utility:AddNewRow(this, uiNavigationKeyBindLabel, "Selector", {onLabel, offLabel}, startIndex, nil, uiNavigationKeyBindDescription)
		this.UiNavigationKeyBindEnabledFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["UiNavigationKeyBindEnabledFrame"]

		this.UiNavigationKeyBindEnabledMode.IndexChanged:connect(
			function(newIndex)
				local oldValue = GameSettings.UiNavigationKeyBindEnabled
				GameSettings.UiNavigationKeyBindEnabled = newIndex == 1

				if GetFFlagEnableExplicitSettingsChangeAnalytics() then
					reportSettingsChangeForAnalytics('ui_navigation_key_bind_enabled', oldValue, GameSettings.UiNavigationKeyBindEnabled)
				end
				reportSettingsForAnalytics()
			end
		)
	end

	local function createPerformanceStatsOptions()
		------------------
		------------------ Performance Stats -----------------
		this.PerformanceStatsFrame, this.PerformanceStatsLabel, this.PerformanceStatsMode, this.PerformanceStatsOverrideText =
			nil

		function GetDesiredPerformanceStatsIndex()
			if GameSettings.PerformanceStatsVisible then
				return 1
			else
				return 2
			end
		end

		local startIndex = GetDesiredPerformanceStatsIndex()

		this.PerformanceStatsFrame, this.PerformanceStatsLabel, this.PerformanceStatsMode =
			utility:AddNewRow(this, "Performance Stats", "Selector", {"On", "Off"}, startIndex)
		this.PerformanceStatsFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["PerformanceStatsFrame"]

		this.PerformanceStatsOverrideText =
			Create "TextLabel" {
			Name = "PerformanceStatsLabel",
			Text = "Set by Developer",
			TextColor3 = Color3.new(1, 1, 1),
			Font = Theme.font(Enum.Font.SourceSans, "GameSettings"),
			FontSize = Theme.fontSize(Enum.FontSize.Size24, "GameSettings"),
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 200, 1, 0),
			Position = UDim2.new(1, -350, 0, 0),
			Visible = false,
			ZIndex = 2,
			Parent = this.PerformanceStatsFrame
		}

		this.PerformanceStatsMode.IndexChanged:connect(
			function(newIndex)
				local previousPerformanceStatsVisible
				if GetFFlagEnableExplicitSettingsChangeAnalytics() then
					previousPerformanceStatsVisible = GameSettings.PerformanceStatsVisible
				end

				if newIndex == 1 then
					GameSettings.PerformanceStatsVisible = true
				else
					GameSettings.PerformanceStatsVisible = false
				end

				if GetFFlagEnableExplicitSettingsChangeAnalytics() then
					reportSettingsChangeForAnalytics('show_performance_stats', previousPerformanceStatsVisible, GameSettings.PerformanceStatsVisible)
				end
				reportSettingsForAnalytics()
			end
		)

		GameSettings.PerformanceStatsVisibleChanged:connect(
			function()
				local desiredIndex = GetDesiredPerformanceStatsIndex()
				if desiredIndex ~= this.PerformanceStatsMode.CurrentIndex then
					this.PerformanceStatsMode:SetSelectionIndex(desiredIndex)
				end
			end
		)
	end -- of createPerformanceStats

	-- Create UI element to show IPs and port a player need to access the
	-- web server for micro profiler
	local function createWebServerInformationRow()
		this.InformationFrame, this.InformationLabel, this.InformationTextBox =
			utility:AddNewRow(this, "MicroProfiler Information", "TextBox", nil, nil, 5)
		this.InformationFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["InformationFrame"]

		-- Override the default position
		-- todo replace this with TextX and TextYAlignment to centerlise the text
		this.InformationFrame.Position = UDim2.new(0.5, 0, 0.5, 0)

		this.InformationText =
			Create "TextLabel" {
			Name = "InformationLabel",
			Text = "Information Loading",
			Font = Theme.font(Enum.Font.SourceSans),
			FontSize = Theme.fontSize(Enum.FontSize.Size14),
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 800, 1, 0),
			Position = UDim2.new(1, -650, 0, 20),
			Visible = true,
			ZIndex = 2,
			Parent = this.InformationFrame
		}
		return this.InformationFrame, this.InformationText
	end

	local function createMicroProfilerOptions()
		------------------
		------------------ Micro Profiler Web Server -----------------
		this.MicroProfilerFrame, this.MicroProfilerLabel, this.MicroProfilerMode, this.MicroProfilerOverrideText = nil

		local function tryContentLabel()
			local port = GameSettings.MicroProfilerWebServerPort
			if port ~= 0 then
				-- Need to create this each time.
				this.InformationFrame, this.InformationText = createWebServerInformationRow()
				this.InformationText.Text = GameSettings.MicroProfilerWebServerIP .. port
				return true
			else
				return false
			end
		end

		local function setMicroProfilerIndex(newIndex)
			local function hideContentLabel()
					GameSettings.MicroProfilerWebServerEnabled = false

					if this.InformationFrame or this.InformationText then
						this.InformationFrame.Visible = false
						this.InformationFrame.Parent = nil
						this.InformationText.Parent = nil
						this.InformationFrame = nil
						this.InformationText = nil
					end
			end

			local microprofilerType
			local oldValue
			local newValue

			if isMobileClient then
				if GetFFlagEnableExplicitSettingsChangeAnalytics() then
					microprofilerType = 'webserver'
					oldValue = GameSettings.MicroProfilerWebServerEnabled
				end

				if newIndex == 1 then -- Show Web Server Content Label
					GameSettings.MicroProfilerWebServerEnabled = true

					-- Try poll every 0.1 seconds until 3 seconds passed
					local tryPollCount = 30
					while tryPollCount >= 1 do
						if tryContentLabel() then
							break
						end

						tryPollCount = tryPollCount - 1
						wait(0.1)
					end

					if tryPollCount <= 0 then
						-- if the web server has not been started, we will just set the switch and try to stop the
						-- web server
						this.MicroProfilerMode:SetSelectionIndex(2)
						hideContentLabel()
					end
				else -- Hide Web Server Content Label
						hideContentLabel()
				end

				if GetFFlagEnableExplicitSettingsChangeAnalytics() then
					newValue = GameSettings.MicroProfilerWebServerEnabled
				end
			elseif isDesktopClient then
				if GetFFlagEnableExplicitSettingsChangeAnalytics() then
					microprofilerType = 'regular'
					oldValue = GameSettings.OnScreenProfilerEnabled
				end

				GameSettings.OnScreenProfilerEnabled = (newIndex == 1)

				if GetFFlagEnableExplicitSettingsChangeAnalytics() then
					newValue = GameSettings.OnScreenProfilerEnabled
				end
			end

			AnalyticsService:ReportCounter(MICROPROFILER_SETTINGS_PRESSED)

			if GetFFlagEnableExplicitSettingsChangeAnalytics() then
				reportSettingsChangeForAnalytics('microprofiler_enabled', oldValue, newValue, {
					microprofiler_type = microprofilerType,
				})
			end
			reportSettingsForAnalytics()
		end

		-- This should be off default.
		local function GetDesiredWebServerIndex()
			if isMobileClient then
				if GameSettings.MicroProfilerWebServerEnabled then
					return 1
				else
					return 2
				end
			elseif isDesktopClient then
				if GameSettings.OnScreenProfilerEnabled then
					return 1
				else
					return 2
				end
			else
				return 2
			end
		end

		local webServerIndex = GetDesiredWebServerIndex()

		local microProfilerLabel = RobloxTranslator:FormatByKey("Feature.SettingsHub.GameSettings.MicroProfiler")
		this.MicroProfilerFrame, this.MicroProfilerLabel, this.MicroProfilerMode =
			utility:AddNewRow(this, microProfilerLabel, "Selector", {"On", "Off"}, webServerIndex) -- This can be set to override defualt micro profiler state
		this.MicroProfilerFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["MicroProfilerFrame"]

		tryContentLabel()


		local indexChangedExternally = false

		GameSettings:GetPropertyChangedSignal("OnScreenProfilerEnabled"):Connect(function()
			indexChangedExternally = true

			if GameSettings.OnScreenProfilerEnabled then
				this.MicroProfilerMode:SetSelectionIndex(1)
			else
				this.MicroProfilerMode:SetSelectionIndex(2)
			end
		end)

		local function onIndexChanged(...)
			if indexChangedExternally then
				indexChangedExternally = false
			else
				setMicroProfilerIndex(...)
			end
		end

		this.MicroProfilerMode.IndexChanged:connect(onIndexChanged)

	end -- of create Micro Profiler Web Server

	local function createCameraModeOptions(movementModeEnabled)
		------------------------------------------------------
		------------------
		------------------ Shift Lock Switch -----------------
		if UserInputService.MouseEnabled and not isTenFootInterface then
			this.ShiftLockFrame, this.ShiftLockLabel, this.ShiftLockMode, this.ShiftLockOverrideText = nil

			if UserInputService.MouseEnabled and UserInputService.KeyboardEnabled then
				local startIndex = 2
				if GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch then
					startIndex = 1
				end

				this.ShiftLockFrame, this.ShiftLockLabel, this.ShiftLockMode =
					utility:AddNewRow(this, "Shift Lock Switch", "Selector", {"On", "Off"}, startIndex)
				this.ShiftLockFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["ShiftLockFrame"]

				settingsDisabledInVR[this.ShiftLockFrame] = true

				this.ShiftLockOverrideText =
					Create "TextLabel" {
					Name = "ShiftLockOverrideLabel",
					Text = "Set by Developer",
					TextColor3 = Color3.new(1, 1, 1),
					Font = Theme.font(Enum.Font.SourceSans, "GameSettings"),
					FontSize = Theme.fontSize(Enum.FontSize.Size24, "GameSettings"),
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 200, 1, 0),
					Position = UDim2.new(1, -350, 0, 0),
					Visible = false,
					ZIndex = 2,
					Parent = this.ShiftLockFrame
				}

				this.ShiftLockMode.IndexChanged:connect(
					function(newIndex)
						local oldValue
						if GetFFlagEnableExplicitSettingsChangeAnalytics() then
							oldValue = GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch
						end

						if newIndex == 1 then
							GameSettings.ControlMode = Enum.ControlMode.MouseLockSwitch
						else
							GameSettings.ControlMode = Enum.ControlMode.Classic
						end

						if GetFFlagEnableExplicitSettingsChangeAnalytics() then
							reportSettingsChangeForAnalytics('shift_lock_enabled', oldValue, GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch)
						end
						reportSettingsForAnalytics()
					end
				)
			end
		end

		-----------------------------------------------------------
		----------------------- Camera Mode -----------------------
		function cameraModeIsUserChoice()
			if UserInputService.TouchEnabled then
				return LocalPlayer.DevTouchCameraMode == Enum.DevTouchCameraMovementMode.UserChoice
			else
				return LocalPlayer.DevComputerCameraMode == Enum.DevComputerCameraMovementMode.UserChoice
			end
		end

		function setCameraModeVisible(visible)
			if this.CameraMode then
				this.CameraMode.SelectorFrame.Visible = visible
				this.CameraMode:SetInteractable(visible)
				this.CameraModeOverrideText.Visible = not visible
			end
		end

		do
			local PlayerScripts = CoreUtility.waitForChildOfClass(LocalPlayer, "PlayerScripts")

			local cameraEnumNames = {}
			local cameraEnumNameToItem = {}

			local function updateCurrentCameraMovementIndex(index)
				local newEnumSetting = nil
				local success =
					pcall(
					function()
						newEnumSetting = cameraEnumNameToItem[cameraEnumNames[index]]
					end
				)
				if not success or newEnumSetting == nil then
					return false
				end

				local actuallyUpdated
				local oldValue

				if UserInputService.TouchEnabled then
					if GetFFlagEnableExplicitSettingsChangeAnalytics() then
						oldValue = GameSettings.TouchCameraMovementMode.Value
					end

					actuallyUpdated = GameSettings.TouchCameraMovementMode.Value ~= newEnumSetting
					GameSettings.TouchCameraMovementMode = newEnumSetting
				else
					if GetFFlagEnableExplicitSettingsChangeAnalytics() then
						oldValue = GameSettings.ComputerCameraMovementMode.Value
					end

					actuallyUpdated = GameSettings.ComputerCameraMovementMode.Value ~= newEnumSetting
					GameSettings.ComputerCameraMovementMode = newEnumSetting
				end

				if GetFFlagEnableExplicitSettingsChangeAnalytics() and actuallyUpdated then
					reportSettingsChangeForAnalytics('camera_mode', oldValue, newEnumSetting)
				end

				return actuallyUpdated
			end

			local function updateCameraMovementModes()
				local enumsToAdd = {}

				if PlayerScripts then
					if UserInputService.TouchEnabled then
						enumsToAdd = PlayerScripts:GetRegisteredTouchCameraMovementModes()
					else
						enumsToAdd = PlayerScripts:GetRegisteredComputerCameraMovementModes()
					end
				end

				cameraEnumNames = {}
				cameraEnumNameToItem = {}

				if #enumsToAdd <= 0 then
					setCameraModeVisible(false)
					return
				end

				if GetFFlagGameSettingsCameraModeFixEnabled() then
					setCameraModeVisible(cameraModeIsUserChoice())
				else
					setCameraModeVisible(true)
				end

				for i = 1, #enumsToAdd do
					local newCameraMode = enumsToAdd[i]
					local displayName = newCameraMode.Name
					if displayName == "Default" then
						displayName = CAMERA_MODE_DEFAULT_STRING
					end

					cameraEnumNames[#cameraEnumNames + 1] = displayName
					cameraEnumNameToItem[displayName] = newCameraMode.Value
				end

				if this.CameraMode then
					this.CameraMode:UpdateOptions(cameraEnumNames)
				end

				local currentSavedMode = -1

				if UserInputService.TouchEnabled then
					currentSavedMode = GameSettings.TouchCameraMovementMode.Value
				else
					currentSavedMode = GameSettings.ComputerCameraMovementMode.Value
				end

				if currentSavedMode > -1 then
					currentSavedMode = currentSavedMode + 1
					local savedEnum = nil
					local exists = pcall(function() savedEnum = enumsToAdd[currentSavedMode] end)
					if exists and savedEnum then
						updateCurrentCameraMovementIndex(savedEnum.Value + 1)
						this.CameraMode:SetSelectionIndex(savedEnum.Value + 1)
					end
				end
			end

			this.CameraModeFrame, this.CameraModeLabel, this.CameraMode = utility:AddNewRow(this, "Camera Mode", "Selector", cameraEnumNames, 1)
			this.CameraModeFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["CameraModeFrame"]

			settingsDisabledInVR[this.CameraMode] = true

			this.CameraModeOverrideText =
				Create "TextLabel" {
				Name = "CameraDevOverrideLabel",
				Text = "Set by Developer",
				TextColor3 = Color3.new(1, 1, 1),
				Font = Theme.font(Enum.Font.SourceSans, "GameSettings"),
				FontSize = Theme.fontSize(Enum.FontSize.Size24, "GameSettings"),
				BackgroundTransparency = 1,
				Size = UDim2.new(0.6, 0, 1, 0),
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, 0, 0.5, 0),
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				Visible = false,
				ZIndex = 2,
				Parent = this.CameraModeFrame
			}

			if PlayerScripts then
				PlayerScripts.TouchCameraMovementModeRegistered:connect(
					function(registeredMode)
						if UserInputService.TouchEnabled then
							updateCameraMovementModes()
						end
					end
				)

				PlayerScripts.ComputerCameraMovementModeRegistered:connect(
					function(registeredMode)
						if UserInputService.MouseEnabled then
							updateCameraMovementModes()
						end
					end
				)
			end

			local hasInitialized = false
			this.CameraMode.IndexChanged:connect(
				function(newIndex)
					if updateCurrentCameraMovementIndex(newIndex) then
						if hasInitialized then
							reportSettingsForAnalytics()
						end
						hasInitialized = true
					end
				end
			)

			updateCameraMovementModes()
		end

		------------------------------------------------------
		------------------
		------------------ VR Mode -----------------------
		local createdVROption = false
		local function createVROption()
			if not createdVROption then
				createdVROption = true

				local optionNames
				if GameSettings.VREnabled then
					optionNames = {"On", "Off (restart pending)"}
				else
					optionNames = {"On (restart pending)", "Off"}
				end

				this.VREnabledFrame, this.VREnabledLabel, this.VREnabledSelector =
					utility:AddNewRow(this, "VR", "Selector", optionNames, GameSettings.VREnabled and 1 or 2)
				this.VREnabledFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["VREnabledFrame"]

				this.VREnabledSelector.IndexChanged:connect(
					function(newIndex)
						local vrEnabledSetting = (newIndex == 1)
						if GameSettings.VREnabled ~= vrEnabledSetting then
							GameSettings.VREnabled = vrEnabledSetting
						end
					end
				)
			end
		end

		local function onVREnabledChanged()
			if VRService.VREnabled then
				GameSettings.HasEverUsedVR = true
				createVROption()
			else
				if GameSettings.HasEverUsedVR then
					createVROption()
				end
			end
		end
		if GetFFlagAlwaysShowVRToggle() and getAppFeaturePolicies().getIsLinkedVRModeAvailable() then
			createVROption()
		else
			onVREnabledChanged()
			VRService:GetPropertyChangedSignal("VREnabled"):connect(onVREnabledChanged)
		end

		------------------------------------------------------
		------------------
		------------------------- Chat Translation -----------
		-- The below chat translation option is for the dropdown without the chat language switcher
		-- Only can be removed once EnableTCSChatTranslation and EnableTCSChatTranslationLanguageSwitcher engine features have both been true for all platforms
		local function createChatTranslationOption()
			local chatTranslationEnabled = if TextChatService.ChatTranslationEnabled then 1 else 2

			this.ChatTranslationFrame, this.ChatTranslationLabel, this.ChatTranslationEnabler =
				utility:AddNewRow(this, "Automatic Chat Translation", "Selector", {"On", "Off"}, chatTranslationEnabled)
			this.ChatTranslationFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["ChatTranslationFrame"]

			this.ChatTranslationEnabler.IndexChanged:connect(
				function(newIndex)
					local newSettingsValue = if newIndex == 1 then true else false
					local oldSettingsValue = TextChatService.ChatTranslationEnabled

					if newSettingsValue ~= oldSettingsValue then
						if ChatTranslationSettingsMoved then
							GameSettings.ChatTranslationEnabled = newSettingsValue
						else
							TextChatService.ChatTranslationEnabled = newSettingsValue
						end

						reportSettingsChangeForAnalytics("chat_translation", oldSettingsValue, newSettingsValue, {
							locale_id = LocalPlayer.LocaleId
						})
					end
				end
			)

			local chatTranslationToggleEnabled = if TextChatService.ChatTranslationToggleEnabled then 1 else 2

			this.ChatTranslationToggleFrame, this.ChatTranslationToggleLabel, this.ChatTranslationToggleEnabler =
				utility:AddNewRow(this, "Option to View Untranslated Message", "Selector", {"On", "Off"}, chatTranslationToggleEnabled)
			this.ChatTranslationToggleFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["ChatTranslationToggleFrame"]

			this.ChatTranslationToggleEnabler.IndexChanged:connect(
				function(newIndex)
					local newSettingsValue = if newIndex == 1 then true else false
					local oldSettingsValue = TextChatService.ChatTranslationToggleEnabled

					if newSettingsValue ~= oldSettingsValue then
						if ChatTranslationSettingsMoved then
							GameSettings.ChatTranslationToggleEnabled = newSettingsValue
						else
							TextChatService.ChatTranslationToggleEnabled = newSettingsValue
						end

						reportSettingsChangeForAnalytics("chat_translation_toggle", oldSettingsValue, newSettingsValue, {
							locale_id = LocalPlayer.LocaleId
						})
					end
				end
			)
		end

		local function getChatTranslationLayerData(layerName)
			local chatTranslationLayerData = {
				ChatTranslationEnabled = false,
				ChatTranslationToggleEnabled = false,
			}

			if not layerName or layerName == "" then
				return chatTranslationLayerData
			end

			-- Override layer name for channel testing
			if (layerName == "override") then
				chatTranslationLayerData.ChatTranslationEnabled = true
				return chatTranslationLayerData
			end

			-- Wait for IXP to initialize to avoid checking layer data before it's ready
			-- Can potentially block up to the timeout set for IXPController (default 5000 ms)
			if (GetFFlagChatTranslationWaitForIXP()) then
				IXPServiceWrapper:WaitForInitialization()
			end

			local layerSuccess, layerData = pcall(function()
				return IXPServiceWrapper:GetLayerData(layerName)
			end)

			if layerSuccess then
				-- After launching Chat Translation, should be On by default
				if GetFFlagChatTranslationNewDefaults() then
					chatTranslationLayerData.ChatTranslationEnabled = layerData.ChatTranslationEnabled or true
					chatTranslationLayerData.ChatTranslationToggleEnabled = layerData.ChatTranslationToggleEnabled or false
				else
					chatTranslationLayerData.ChatTranslationEnabled = layerData.chatTranslationEnabled or false
					chatTranslationLayerData.ChatTranslationToggleEnabled = layerData.chatTranslationToggleEnabled or false
				end
			end

			return chatTranslationLayerData
		end

		local function setUpChatTranslationIxpDefaults(layerData)
			if ChatTranslationSettingsMoved then
				GameSettings.ChatTranslationEnabled = layerData.ChatTranslationEnabled
				GameSettings.ChatTranslationToggleEnabled = layerData.ChatTranslationToggleEnabled

				return true
			else
				local success, _ = pcall(function ()
					TextChatService.ChatTranslationEnabled = layerData.ChatTranslationEnabled
					TextChatService.ChatTranslationToggleEnabled = layerData.ChatTranslationToggleEnabled
				end)

				return success
			end
		end


		if game:GetEngineFeature("EnableTCSChatTranslation") and not game:GetEngineFeature("EnableTCSChatTranslationLanguageSwitcher") then
			if GetFFlagChatTranslationSettingEnabled() then
				if GetFFlagChatTranslationLaunchEnabled() then
					if GetFFlagChatTranslationHoldoutEnabled() then
						local layerName = GetFStringChatTranslationLayerName()
						local layerData = getChatTranslationLayerData(layerName)
	
						if not layerData.ChatTranslationEnabled then
							if ChatTranslationSettingsMoved then
								if GetFFlagChatTranslationNewDefaults() then
									-- If locale is empty this is a first time load, set to Off
									if GameSettings.ChatTranslationLocale == "" then
										GameSettings.ChatTranslationEnabled = false
										GameSettings.ChatTranslationLocale = "en_us"
									end
								else
									GameSettings.ChatTranslationEnabled = false
								end
							else
								pcall(function ()
									TextChatService.ChatTranslationEnabled = false
								end)
							end
						else
							-- Force setting to comply with IXP result
							if GetFFlagChatTranslationForceSetting() then
								GameSettings.ChatTranslationEnabled = true
							end
						end
					end

					createChatTranslationOption()
				else
					local layerName = GetFStringChatTranslationLayerName()
					local layerData = getChatTranslationLayerData(layerName)
		
					local success = setUpChatTranslationIxpDefaults(layerData)
		
					if success and layerData.ChatTranslationEnabled then
						createChatTranslationOption()
					end
				end
			end
		end

		------------------------------------------------------
		------------------
		------------------ Movement Mode ---------------------
		local movementModes = {}

		function setMovementModeVisible(visible)
			if this.MovementMode then
				local shouldBeVisible = visible and (#movementModes > 0)
				this.MovementMode.SelectorFrame.Visible = shouldBeVisible
				this.MovementMode:SetInteractable(shouldBeVisible)
				this.MovementModeOverrideText.Visible = not shouldBeVisible
			end
		end

		if movementModeEnabled then
			local movementEnumNames = {}
			local movementEnumNameToItem = {}

			local PlayerScripts = CoreUtility.waitForChildOfClass(LocalPlayer, "PlayerScripts")

			local function getDisplayName(name)
				local displayName = name

				if name == "Default" then
					displayName = MOVEMENT_MODE_DEFAULT_STRING
				elseif name == "KeyboardMouse" then
					displayName = MOVEMENT_MODE_KEYBOARDMOUSE_STRING
				elseif name == "ClickToMove" then
					displayName = MOVEMENT_MODE_CLICKTOMOVE_STRING
				elseif name == "DynamicThumbstick" then
					displayName = MOVEMENT_MODE_DYNAMICTHUMBSTICK_STRING
				elseif name == "Thumbstick" then
					displayName = MOVEMENT_MODE_THUMBSTICK_STRING
				end

				return displayName
			end

			this.MovementModeFrame, this.MovementModeLabel, this.MovementMode = utility:AddNewRow(this, "Movement Mode", "Selector", movementEnumNames, 1)
			this.MovementModeFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["MovementModeFrame"]

			settingsDisabledInVR[this.MovementMode] = true

			this.MovementModeOverrideText =
				Create "TextLabel" {
				Name = "MovementDevOverrideLabel",
				Text = "Set by Developer",
				TextColor3 = Color3.new(1, 1, 1),
				Font = Theme.font(Enum.Font.SourceSans, "GameSettings"),
				FontSize = Theme.fontSize(Enum.FontSize.Size24, "GameSettings"),
				BackgroundTransparency = 1,
				Size = UDim2.new(0.6, 0, 1, 0),
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, 0, 0.5, 0),
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				Visible = false,
				ZIndex = 2,
				Parent = this.MovementModeFrame
			}

			local function setMovementModeToIndex(index)
				local newEnumSetting = nil
				local success =
					pcall(
					function()
						newEnumSetting = movementEnumNameToItem[movementEnumNames[index]]
					end
				)
				if not success or newEnumSetting == nil then
					return
				end

				local oldValue

				if UserInputService.TouchEnabled then
					if GetFFlagEnableExplicitSettingsChangeAnalytics() then
						oldValue = GameSettings.TouchMovementMode
					end
					GameSettings.TouchMovementMode = newEnumSetting
				else
					if GetFFlagEnableExplicitSettingsChangeAnalytics() then
						oldValue = GameSettings.ComputerMovementMode
					end
					GameSettings.ComputerMovementMode = newEnumSetting
				end

				if GetFFlagEnableExplicitSettingsChangeAnalytics() then
					reportSettingsChangeForAnalytics('movement_mode', oldValue, newEnumSetting)
				end
			end

			local function updateMovementModes()
				if PlayerScripts then
					if UserInputService.TouchEnabled then
						movementModes = PlayerScripts:GetRegisteredTouchMovementModes()
					else
						movementModes = PlayerScripts:GetRegisteredComputerMovementModes()
					end
				end

				movementEnumNames = {}
				movementEnumNameToItem = {}

				if #movementModes <= 0 then
					setMovementModeVisible(false)
					return
				end

				setMovementModeVisible(true)

				for i = 1, #movementModes do
					local movementMode = movementModes[i]

					local displayName = getDisplayName(movementMode.Name)

					movementEnumNames[#movementEnumNames + 1] = displayName
					movementEnumNameToItem[displayName] = movementMode
				end

				if this.MovementMode then
					this.MovementMode:UpdateOptions(movementEnumNames)
				end

				local currentSavedMode = -1

				if UserInputService.TouchEnabled then
					currentSavedMode = GameSettings.TouchMovementMode.Value
				else
					currentSavedMode = GameSettings.ComputerMovementMode.Value
				end

				if currentSavedMode > -1 then
					currentSavedMode = currentSavedMode + 1
					local savedEnum = nil
					local exists = pcall(function() savedEnum = movementEnumNameToItem[movementEnumNames[currentSavedMode]] end)
					if exists and savedEnum then
						setMovementModeToIndex(savedEnum.Value + 1)
						this.MovementMode:SetSelectionIndex(savedEnum.Value + 1)
					end
				end
			end

			updateMovementModes()

			if PlayerScripts then
				PlayerScripts.TouchMovementModeRegistered:connect(
					function(registeredMode)
						if UserInputService.TouchEnabled then
							updateMovementModes()
						end
					end
				)

				PlayerScripts.ComputerMovementModeRegistered:connect(
					function(registeredMode)
						if UserInputService.MouseEnabled then
							updateMovementModes()
						end
					end
				)
			end

			this.MovementMode.IndexChanged:connect(
				function(newIndex)
					setMovementModeToIndex(newIndex)
					reportSettingsForAnalytics()
				end
			)
		end

		------------------------------------------------------
		------------------
		------------------------- Connection Setup -----------
		function setShiftLockVisible(visible)
			if this.ShiftLockMode then
				this.ShiftLockMode.SelectorFrame.Visible = visible
				this.ShiftLockMode:SetInteractable(visible)
			end
		end

		do -- initial set of dev vs user choice for guis
			local isUserChoiceCamera = false
			if UserInputService.TouchEnabled then
				isUserChoiceCamera = LocalPlayer.DevTouchCameraMode == Enum.DevTouchCameraMovementMode.UserChoice
			else
				isUserChoiceCamera = LocalPlayer.DevComputerCameraMode == Enum.DevComputerCameraMovementMode.UserChoice
			end

			if not isUserChoiceCamera then
				this.CameraModeOverrideText.Visible = true
				setCameraModeVisible(false)
			else
				this.CameraModeOverrideText.Visible = false
				setCameraModeVisible(true)
			end

			local isUserChoiceMovement = false
			if UserInputService.TouchEnabled then
				isUserChoiceMovement = LocalPlayer.DevTouchMovementMode == Enum.DevTouchMovementMode.UserChoice
			else
				isUserChoiceMovement = LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.UserChoice
			end

			if this.MovementModeOverrideText then
				if not isUserChoiceMovement then
					this.MovementModeOverrideText.Visible = true
					setMovementModeVisible(false)
				else
					this.MovementModeOverrideText.Visible = false
					setMovementModeVisible(true)
				end
			end

			if this.ShiftLockOverrideText then
				this.ShiftLockOverrideText.Visible = not LocalPlayer.DevEnableMouseLock
				setShiftLockVisible(LocalPlayer.DevEnableMouseLock)
			end
		end

		local function updateUserSettingsMenu(property)
			if this.ShiftLockOverrideText and property == "DevEnableMouseLock" then
				this.ShiftLockOverrideText.Visible = not LocalPlayer.DevEnableMouseLock
				setShiftLockVisible(LocalPlayer.DevEnableMouseLock)
			elseif property == "DevComputerCameraMode" then
				local isUserChoice = LocalPlayer.DevComputerCameraMode == Enum.DevComputerCameraMovementMode.UserChoice
				setCameraModeVisible(isUserChoice)
				this.CameraModeOverrideText.Visible = not isUserChoice
			elseif property == "DevComputerMovementMode" then
				-- TOUCH
				local isUserChoice = LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.UserChoice
				setMovementModeVisible(isUserChoice)
				if this.MovementModeOverrideText then
					this.MovementModeOverrideText.Visible = not isUserChoice
				end
			elseif property == "DevTouchMovementMode" then
				local isUserChoice = LocalPlayer.DevTouchMovementMode == Enum.DevTouchMovementMode.UserChoice
				setMovementModeVisible(isUserChoice)
				if this.MovementModeOverrideText then
					this.MovementModeOverrideText.Visible = not isUserChoice
				end
			elseif property == "DevTouchCameraMode" then
				local isUserChoice = LocalPlayer.DevTouchCameraMode == Enum.DevTouchCameraMovementMode.UserChoice
				setCameraModeVisible(isUserChoice)
				this.CameraModeOverrideText.Visible = not isUserChoice
			end
		end

		LocalPlayer.Changed:connect(
			function(property)
				if UserInputService.TouchEnabled then
					if TOUCH_CHANGED_PROPS[property] then
						updateUserSettingsMenu(property)
					end
				end
				if UserInputService.KeyboardEnabled then
					if PC_CHANGED_PROPS[property] then
						updateUserSettingsMenu(property)
					end
				end
			end
		)
	end

	local function createFeedbackModeOptions()
		local rolesCheckUrl = Url.ROLES_URL .. "v1/users/authenticated/roles"
		local rolesCheckRequest = HttpService:RequestInternal({
			Url = rolesCheckUrl,
			Method = "GET"
		})

		local function rolesCheckCallback(enableFeedbackUI)
			if enableFeedbackUI then
				-- Either the engine feature is off and so we do the default behavior of always executing the below code, or feedback entry point is enabled and we want to enter it on click
				if not FFlagFeedbackEntryPointImprovedStrictnessCheck then
					if game:GetEngineFeature("ExperienceStateCaptureMinMemEnabled") and not this.FeedbackEntryPointEnabled then
						return
					end
				end

				local function onToggleFeedbackMode()
					if FFlagFeedbackEntryPointImprovedStrictnessCheck then
						-- Perform this check in the on toggle function itself instead of when setting it up to have it execute in all expected scenarios
						if game:GetEngineFeature("ExperienceStateCaptureMinMemEnabled") and not this.FeedbackEntryPointEnabled then
							return
						end
					end
					this.HubRef:PopMenu(false, true);
					if game:GetEngineFeature("SafetyServiceCaptureModeReportProp") then
						-- Explicit false set for Safety Service capture mode before entering Feedback mode
						SafetyService.IsCaptureModeForReport = false
					end
					if ExperienceStateCaptureService ~= nil then
						-- In this function ExperienceStateCaptureService should always exist, but just in case we do a nil check before we attempt a toggle
						ExperienceStateCaptureService:ToggleCaptureMode()
					end
				end

				local toggleFeedbackModeButton, toggleFeedbackModeText = nil, nil
				if FFlagFeedbackEntryPointButtonSizeAdjustment then
					toggleFeedbackModeButton, toggleFeedbackModeText = utility:MakeStyledButton("toggleFeedbackModeButton", "Give Feedback", UDim2.new(1, 0, 1, -20), onToggleFeedbackMode, this)
					-- Adjust size and position of button relative to frame for use in utility:AddNewRowObject
					if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then 
						toggleFeedbackModeButton.Size = UDim2.new(0.6, 0, 0, 40)
						toggleFeedbackModeButton.Position = UDim2.new(0.4, 0, 0.5, 0)
						toggleFeedbackModeButton.AnchorPoint = Vector2.new(0, 0.5)
					else 
						toggleFeedbackModeButton.Size = UDim2.new(0.6, 0, 1, -20)
						toggleFeedbackModeButton.Position = UDim2.new(0.4, 0, 0, 12)
					end 
				else
					toggleFeedbackModeButton, toggleFeedbackModeText = utility:MakeStyledButton("toggleFeedbackModeButton", "Give Feedback", UDim2.new(0, 300, 1, -20), onToggleFeedbackMode, this)
					if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then 
						toggleFeedbackModeButton.Size = UDim2.new(0, 300, 0, 30)
						toggleFeedbackModeButton.Position = UDim2.new(0.4, 0, 0.5, 0)
						toggleFeedbackModeButton.AnchorPoint = Vector2.new(0, 0.5)
					else 	
						toggleFeedbackModeButton.Position = UDim2.new(1, -400, 0, 12)
					end
				end
				
				toggleFeedbackModeButton.ZIndex = 2
				toggleFeedbackModeButton.Selectable = true
				toggleFeedbackModeText.ZIndex = 2

				-- other rows are set to "this", update alongside engine feature so that we can update the row from openSettingsPage
				if game:GetEngineFeature("ExperienceStateCaptureMinMemEnabled") then
					this.toggleFeedbackModeButton = toggleFeedbackModeButton
					this.toggleFeedbackModeText = toggleFeedbackModeText
				end

				if FFlagFeedbackEntryPointButtonSizeAdjustment then
					-- Nil for spacing param, and true for final param enables automatic sizing of the label, see Utility.lua for implementation
					local row = utility:AddNewRowObject(this, "Give Translation Feedback", toggleFeedbackModeButton, nil, true)
					row.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["FeedbackModeButton"]
				else
					local row = utility:AddNewRowObject(this, "Give Translation Feedback", toggleFeedbackModeButton)
					row.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["FeedbackModeButton"]
				end
			end
		end

		if FFlagDisableFeedbackSoothsayerCheck then
			-- Skip the roles check and immediate hit the callback as if we passed the soothsayer check
			rolesCheckCallback(true)

		else
			rolesCheckRequest:Start(function(reqSuccess, reqResponse)
				local enableFeedbackUI = false
				local success = false
				local err = nil
				if not reqSuccess then
					err = "Roles Api Request: Connection error"
				elseif reqResponse.StatusCode == 401 then
					err = "Roles Api Request: Unauthorized"
				elseif reqResponse.StatusCode < 200 or reqResponse.StatusCode >= 400 then
					err = "Roles Api Status code: " .. reqResponse.StatusCode
				else
					-- reqSuccess == true and StatusCode >= 200 and StatusCode < 400
					success, err = pcall(function()
						local json = HttpService:JSONDecode(reqResponse.Body)
						-- Check roles result for soothsayer
						for _, role in pairs(json.roles) do
							if role == "Soothsayer" then
								enableFeedbackUI = true
							end
						end
					end)
				end
				if not success then
					log:warning("Feedback Mode initialization api call failed with url: " .. rolesCheckUrl .. " and with error message: " .. err)
				end

				rolesCheckCallback(enableFeedbackUI)
			end)
		end
	end

	-- This function is called in SetHub override only if engine flag is enabled
	local function createTranslationOptions()
		------------------------------------------------------
		------------------
		------------------ Language Selection -----------------
		local startIndex = 1 -- Default to "Original" index
		local prevIndex = 1 -- Remember the last succeeded set index so that in event of failed POST on toggle the dropdown selection can be reset easily
		local isResettingIndex = false -- Keep track of if an index toggle is a result of handling a failed POST; this should only be set to true when beginning handling and should be set back to false after handling

		-- Check experience settings
		local sourceLanguageCode = nil -- source language code of the game, example: "en"
		local sourceLocaleCode = nil -- corresponding locale code of the game, example: "en_us"
		local playerLocaleCode = Players.LocalPlayer.LocaleId -- player's locale code is already known: Players.LocalPlayer.LocaleId, save the starting ID into a variable
		local playerLanguageCode = nil -- language code for the player, example: "es"

		-- All helper mappings here take very minimal memory
		local playerPreferredLanguageCode = nil -- Player preferred language code, calculated by checking result of user-localization-settings API call
		local supportedLanguageCodes = {} -- List of supported language codes for the experience, from the supported-languages API call
		local languageNameToLanguageCodeMapping = {} -- Maps language names to language codes, functions as a reverse lookup for dropdown options to language codes
		local languageCodeMetadataMappings = {} -- Maps language codes to locale code, language name, and language ID, all of which are used for option display, calculating locales to set when toggling, and initial state
		local languageIdToLanguageCodeMapping = {} -- Maps language IDs to language codes from the results returned by locale API

		-- Holds the dropdown option strings for the language selection dropdown
		local languageOptions = {}

		-- Requests will be sent sequentially, and the final callback will
		-- perform an evaluation of API results to determine initial state of
		-- the toggle.
		-- Request to get overall locale information. This provides a mapping of
		-- locales to language codes, and also the supported translations for
		-- the language strings
		local localeCodeToLanguageCodeMappingUrl = Url.LOCALE_URL .. string.format("v1/locales?displayValueLocale=%s", Players.LocalPlayer.LocaleId:gsub('-', '_'))
		local localeCodeToLanguageCodeMappingRequest = HttpService:RequestInternal({
			Url = localeCodeToLanguageCodeMappingUrl,
			Method = "GET"
		})

		-- Request to get the source language code of the game the user is in
		local experienceSourceLanguageUrl = Url.GAME_INTERNATIONALIZATION_URL .. string.format("v1/source-language/games/%d", game.GameId)
		local experienceSourceLanguageRequest = HttpService:RequestInternal({
			Url = experienceSourceLanguageUrl,
			Method = "GET"
		})

		-- Request to get the supported language codes for the experience
		local experienceSupportedLanguagesUrl = Url.GAME_INTERNATIONALIZATION_URL .. string.format("v1/supported-languages/games/%d", game.GameId)
		local experienceSupportedLanguagesRequest = HttpService:RequestInternal({
			Url = experienceSupportedLanguagesUrl,
			Method = "GET"
		})

		-- Request to get the langauage code the user prefers for the game they
		-- are in
		local userExperienceLanguageSettingsUrl = Url.GAME_INTERNATIONALIZATION_URL .. string.format("v1/user-localization-settings/universe/%d", game.GameId)
		local userExperienceLanguageSettingRequest = HttpService:RequestInternal({
			Url = userExperienceLanguageSettingsUrl,
			Method = "GET"
		})

		-- Callback functions (These are defined in reverse order of calling)
		-- If one callback in the chain fails, then other calls are not made and
		-- failure is propogated to the final executed callback to handle appropriately
		local function userExperienceLanguageSettingsCallback(previousCallsSuccess, earliestErr)
			if not previousCallsSuccess then
				if earliestErr == nil then
					earliestErr = "Execution path did not set earliest error to non-nil value."
					-- This should never happen, but keep this as a catch all
					-- during final evaluation so the log will show it
				end
				log:warning("GameSettings language selector initialization failed to get all required information; defaulting to player locale and disabling language selection toggle. Earliest error message: " .. earliestErr)
				-- The feature should remain unavailable and user remains in
				-- their locale if required start state info isn't captured
				this.LanguageSelectorFrame, this.LanguageSelectorLabel, this.LanguageSelectorMode =
					utility:AddNewRow(this, "Experience Language", "DropDown", {"Unavailable"}, 1)
				this.LanguageSelectorMode:SetInteractable(false)
				this.LanguageSelectorFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["LanguageSelectorFrame"]
			else
				-- All GET API calls succeeded, so the feature should be enabled
				-- and starting state calculated
				local playerPreferenceSupported = false

				-- Reserve index 1 for the source language
				table.insert(languageOptions, languageCodeMetadataMappings[sourceLanguageCode].languageName .. " (Original)")

				-- Add an option for each supported language code and check if
				-- the playered preferred language code is among the supported languages
				for i, code in pairs(supportedLanguageCodes) do
					if code == playerPreferredLanguageCode then
						playerPreferenceSupported = true
					end

					if code ~= sourceLanguageCode then
						table.insert(languageOptions, languageCodeMetadataMappings[code].languageName)
					end
				end

				-- If the player preference is supported, then we should set the
				-- initial state to the corresponding dropdown option
				if playerPreferenceSupported == true then
					for i, name in pairs(languageOptions) do
						if i ~= 1 and languageNameToLanguageCodeMapping[name] == playerPreferredLanguageCode then
							startIndex = i
							prevIndex = i
						end
					end
				end

				this.LanguageSelectorFrame, this.LanguageSelectorLabel, this.LanguageSelectorMode =
					utility:AddNewRow(this, "Experience Language", "DropDown", languageOptions, startIndex)
				this.LanguageSelectorFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["LanguageSelectorFrame"]
				-- Perform call to game engine to set the locale to match the
				-- dropdown selection in the UI
				if startIndex == 1 then
					LocalPlayer:SetExperienceSettingsLocaleId(sourceLocaleCode)
				else
					local newLanguageCode = languageNameToLanguageCodeMapping[languageOptions[startIndex]]
					LocalPlayer:SetExperienceSettingsLocaleId(languageCodeMetadataMappings[newLanguageCode].localeCode)
				end

				-- Create on toggle change function
				local function toggleTranslation(newIndex)
					-- Disable interactability of the setting until API call is
					-- completed and response processed
					this.LanguageSelectorMode:SetInteractable(false)

					-- Calculate payload to POST to GI API to remember the
					-- user's preference for the experience
					local newTargetId = nil

					if newIndex == 1 then
						newTargetId = languageCodeMetadataMappings[sourceLanguageCode].id
					else
						newTargetId = languageCodeMetadataMappings[languageNameToLanguageCodeMapping[languageOptions[newIndex]]].id
					end

					local payload =
						{
							settingValue = {
								settingType = "LanguageFamily",
								settingTargetId = newTargetId
							}
						}

					local userExperienceLanguageSettingsUpdateUrl = Url.GAME_INTERNATIONALIZATION_URL .. string.format("v1/user-localization-settings/universe/%d", game.GameId)
					local userExperienceLanguageSettingsUpdateRequest = HttpService:RequestInternal({
						Url = userExperienceLanguageSettingsUpdateUrl,
						Method = "POST",
						Headers = {
							["Content-Type"] = "application/json",
						},
						Body = HttpService:JSONEncode(payload)
					})

					-- Callback for API call to make upon completion
					-- If the POST succeeded then we should perform the call to
					-- game engine to update the locale
					-- This callback can be invoked simply with "true" to set
					-- the locale without needing to wait for a POST request to succeed
					local function callback(success, errorMsg)
						if success then
							-- Status updated succeeded, update the game locale
							-- to reflect the changes
							prevIndex = newIndex
							if newIndex == 1 then
								LocalPlayer:SetExperienceSettingsLocaleId(sourceLocaleCode)
							else
								local newLanguageCode = languageNameToLanguageCodeMapping[languageOptions[newIndex]]
								LocalPlayer:SetExperienceSettingsLocaleId(languageCodeMetadataMappings[newLanguageCode].localeCode)
							end
						else
							log:warning("Request to update user experience language status failed, keeping language toggle disabled for the remainder of the session. Error: " .. errorMsg)
							-- Reset dropdown selection to the remembered
							-- selection before the index change since the POST failed
							isResettingIndex = true
							this.LanguageSelectorMode:SetSelectionIndex(prevIndex)
						end

						-- Reset interactability to true since we are done
						-- processing a dropdown change
						this.LanguageSelectorMode:SetInteractable(true)
					end

					if RunService:IsStudio() then
						-- Don't bother performing the POST request if running from
						-- Studio and just flip the toggle
						-- Feature will thus still be emulated in Studio, but have
						-- no effect on the setting from the Roblox Player
						callback(true, nil)
					elseif isResettingIndex then
						-- The index change is a result of an index reset from
						-- a POST failure, so we don't want to fire another POST request
						isResettingIndex = false
						callback(true, nil)
					else
						-- Call is made from client and is not from handling an
						-- index reset, so POST to remember the preference update
						userExperienceLanguageSettingsUpdateRequest:Start(function(reqSuccess, reqResponse)
							local success = false
							local err = nil
							if not reqSuccess then
								err = "User Experience Language Settings Update Request: Connection error"
							elseif reqResponse.StatusCode == 401 then
								err = "User Experience Language Settings Update Request: Unauthorized"
							elseif reqResponse.StatusCode < 200 or reqResponse.StatusCode >= 400 then
								err = "User Experience Language Settings Update Request Status Code: " .. reqResponse.StatusCode
							else
								-- reqSuccess == true and StatusCode >= 200 and StatusCode < 400
								log:info("User Experience Language Settings Update Request succeeded with code: " .. reqResponse.StatusCode)
								success = true
							end
							if not success then
								log:warning("GameSettings language selector toggle: Failed to update user experience language status from GameInternationalization API for " .. userExperienceLanguageSettingsUpdateUrl .. " with error message: " .. err)
							end
							callback(success, err)
						end)
					end
				end

				this.LanguageSelectorMode.IndexChanged:connect(
					toggleTranslation
				)
			end
		end

		local function experienceSupportedLanguagesCallback(previousCallsSuccess, earliestErr)
			if previousCallsSuccess then
				userExperienceLanguageSettingRequest:Start(function(reqSuccess, reqResponse)
					local success = false
					local err = nil
					if not reqSuccess then
						err = "User Experience Language Setting Request: Connection error"
					elseif reqResponse.StatusCode == 401 then
						err = "User Experience Language Setting Request: Unauthorized"
					elseif reqResponse.StatusCode < 200 or reqResponse.StatusCode >= 400 then
						err = "User Experience Language Setting Request Status code: " .. reqResponse.StatusCode
					else
						-- reqSuccess == true and StatusCode >= 200 and StatusCode < 400
						success, err = pcall(function()
							local json = HttpService:JSONDecode(reqResponse.Body)
							local localizationSettingValue = json.userUniverseLocalizationSettingValue
							if localizationSettingValue == nil then
								-- A proper status code without an actual setting value was returned
								-- indicates no existing preferred setting, but NOT a
								-- failure.
								playerPreferredLanguageCode = playerLanguageCode
								return
							end

							if localizationSettingValue.settingType == "SourceOrTranslation" then
								-- 1 indicates source is desired, anything else
								-- indicates the player's language is desired
								if localizationSettingValue.settingTargetId == 1 then
									playerPreferredLanguageCode = sourceLanguageCode
								else
									playerPreferredLanguageCode = playerLanguageCode
								end
							end

							if localizationSettingValue.settingType == "LanguageFamily" then
								-- The player has a preferred language target
								-- ID, but only actually set the preferred code
								-- if the ID maps to an existing language code
								if languageIdToLanguageCodeMapping[localizationSettingValue.settingTargetId] == nil then
									playerPreferredLanguageCode = playerLanguageCode
								else
									playerPreferredLanguageCode = languageIdToLanguageCodeMapping[localizationSettingValue.settingTargetId]
								end
							end
						end)
					end
					if not success then
						log:warning("GameSettings language selector initialization: Failed to get response from GameInternationalization API for " .. userExperienceLanguageSettingsUrl .. " with error message: " .. err)
					end
					userExperienceLanguageSettingsCallback(success, err)
				end)
			else
				userExperienceLanguageSettingsCallback(false, earliestErr)
			end
		end

		local function experienceSourceLanguageCallback(previousCallsSuccess, earliestErr)
			if previousCallsSuccess then
				experienceSupportedLanguagesRequest:Start(function(reqSuccess, reqResponse)
					local success = false
					local err = nil
					if not reqSuccess then
						err = "Experience Supported Language Request: Connection error"
					elseif reqResponse.StatusCode == 401 then
						err = "Experience Supported Language Request: Unauthorized"
					elseif reqResponse.StatusCode < 200 or reqResponse.StatusCode >= 400 then
						err = "Experience Supported Language Request Status code: " .. reqResponse.StatusCode
					else
						success, err = pcall(function()
							local json = HttpService:JSONDecode(reqResponse.Body)
							-- Populate table of supported language codes
							for key, obj in pairs(json.data) do
								supportedLanguageCodes[key] = obj.languageCode
							end
						end)
					end

					if not success then
						log:warning("GameSettings language selector initialization: Failed to get response from Localization API for " .. experienceSupportedLanguagesUrl .. " with error message: " .. err)
					end

					if earliestErr == nil then
						earliestErr = err
					end

					experienceSupportedLanguagesCallback(success and previousCallsSuccess, earliestErr)
				end)
			else
				experienceSupportedLanguagesCallback(false, earliestErr)
			end
		end

		local function localeCodeToLanguageCodeMappingCallback(previousCallsSuccess, earliestErr)
			if previousCallsSuccess then
				experienceSourceLanguageRequest:Start(function(reqSuccess, reqResponse)
					local success = false
					local err = nil
					if not reqSuccess then
						err = "Experience Source Language Request: Connection error"
					elseif reqResponse.StatusCode == 401 then
						err = "Experience Source Language Request: Unauthorized"
					elseif reqResponse.StatusCode < 200 or reqResponse.StatusCode >= 400 then
						err = "Experience Source Language Status code: " .. reqResponse.StatusCode
					else
						-- reqSuccess == true and StatusCode >= 200 and StatusCode < 400
						success, err = pcall(function()
							local json = HttpService:JSONDecode(reqResponse.Body)
							-- Get the source language code and use the metadata
							-- available from the previous call to also get
							-- source locale code and source language name
							sourceLanguageCode = json.languageCode
							sourceLocaleCode = languageCodeMetadataMappings[sourceLanguageCode].localeCode
						end)
					end
					if not success then
						log:warning("GameSettings language selector initialization: Failed to get response from GameInternationalization API for " .. experienceSourceLanguageUrl .. " with error message: " .. err)
					end

					-- If we haven't hit an error yet then this is potentially the
					-- earliest error
					if earliestErr == nil then
						earliestErr = err
					end

					experienceSourceLanguageCallback(success and previousCallsSuccess, earliestErr)
				end)
			else
				experienceSourceLanguageCallback(false, earliestErr)
			end
		end

		localeCodeToLanguageCodeMappingRequest:Start(function(reqSuccess, reqResponse)
			local success = false
			local err = nil
			if not reqSuccess then
				err = "Locale Code to Language Code Mapping Request: Connection error"
			elseif reqResponse.StatusCode == 401 then
				err = "Locale Code to Language Code Mapping Request: Unauthorized"
			elseif reqResponse.StatusCode < 200 or reqResponse.StatusCode >= 400 then
				err = "Locale Code to Language Code Mapping Request Status code: " .. reqResponse.StatusCode
			else
				-- reqSuccess == true and StatusCode >= 200 and StatusCode < 400
					success, err = pcall(function()
						local json = HttpService:JSONDecode(reqResponse.Body)
						-- Populate language code metadata structure, language
						-- ID to language code reverse lookup, language ID to
						-- language code lookup, and player language
						-- name/language code
						for key, obj in pairs(json.data) do
							local t_languageCode = obj.locale.language.languageCode
							local t_localeCode = obj.locale.locale
							local t_languageName = obj.locale.language.name
							local t_languageId = obj.locale.language.id
							languageCodeMetadataMappings[t_languageCode] =
							{
								localeCode = t_localeCode,
								languageName = t_languageName,
								id = t_languageId
							}

							languageIdToLanguageCodeMapping[t_languageId] = t_languageCode
							languageNameToLanguageCodeMapping[t_languageName] = t_languageCode

							if obj.locale.locale == playerLocaleCode:gsub('-', '_') then
								playerLanguageCode = obj.locale.language.languageCode
							end
						end
					end)
			end
			if not success then
				log:warning("GameSettings language selector initialization: Failed to get response from Localization API for " .. localeCodeToLanguageCodeMappingUrl .. " with error message: " .. err)
			end

			localeCodeToLanguageCodeMappingCallback(success, err)
		end)
	end

	local function getChatTranslationLayerData(layerName)
		local chatTranslationLayerData = {
			ChatTranslationEnabled = false,
			ChatTranslationToggleEnabled = false,
		}

		if not layerName or layerName == "" then
			return chatTranslationLayerData
		end

		-- Override layer name for channel testing
		if (layerName == "override") then
			chatTranslationLayerData.ChatTranslationEnabled = true
			return chatTranslationLayerData
		end

		local layerSuccess, layerData = pcall(function()
			return IXPServiceWrapper:GetLayerData(layerName)
		end)

		if layerSuccess then
			chatTranslationLayerData.ChatTranslationEnabled = layerData.chatTranslationEnabled or false
			chatTranslationLayerData.ChatTranslationToggleEnabled = layerData.chatTranslationToggleEnabled or false
		end

		return chatTranslationLayerData
	end

	local function setUpChatTranslationIxpDefaults(layerData)
		if ChatTranslationSettingsMoved then
			GameSettings.ChatTranslationEnabled = layerData.ChatTranslationEnabled
			GameSettings.ChatTranslationToggleEnabled = layerData.ChatTranslationToggleEnabled

			return true
		else
			local success, _ = pcall(function ()
				TextChatService.ChatTranslationEnabled = layerData.ChatTranslationEnabled
				TextChatService.ChatTranslationToggleEnabled = layerData.ChatTranslationToggleEnabled
			end)

			return success
		end
	end

	local function createVolumeOptions()
		local startVolumeLevel = math.floor(GameSettings.MasterVolume * 10)
		this.VolumeFrame, this.VolumeLabel, this.VolumeSlider =
			utility:AddNewRow(this, "Volume", "Slider", 10, startVolumeLevel)
		this.VolumeFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["VolumeFrame"]

		-- ROBLOX FIXME: We should express the "Sounds" folder statically in the project config
		local volumeSound = Instance.new("Sound", (game:GetService("CoreGui").RobloxGui :: any).Sounds)
		volumeSound.Name = "VolumeChangeSound"
		volumeSound.SoundId = "rbxasset://sounds/uuhhh.mp3"

		this.VolumeSlider.ValueChanged:connect(
			function(newValue)
				local oldValue
				if GetFFlagEnableExplicitSettingsChangeAnalytics() then
					oldValue = math.floor((GameSettings.MasterVolume * 10) + 0.5)
				end

				local soundPercent = newValue / 10
				volumeSound.Volume = soundPercent
				volumeSound:Play()
				GameSettings.MasterVolume = soundPercent

				if GetFFlagEnableExplicitSettingsChangeAnalytics() then
					reportSettingsChangeForAnalytics('volume', oldValue, math.floor((GameSettings.MasterVolume * 10) + 0.5))
				end
				reportSettingsForAnalytics()
			end
		)
	end

	local function createHapticsToggle()
		local initialIndex = GameSettings.HapticStrength == 0 and 1 or 2
		this.HapticsFrame, _, this.HapticsSelector =
			utility:AddNewRow(this, "Haptics", "Selector", {"Off", "On"}, initialIndex)
		this.HapticsFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["HapticsFrame"]

		this.HapticsSelector.IndexChanged:connect(
			function(newIndex)
				local oldValue = GameSettings.HapticStrength

				if newIndex == 2 then
					GameSettings.HapticStrength = 1
				else
					GameSettings.HapticStrength = 0
				end

				if GetFFlagEnableExplicitSettingsChangeAnalytics() then
					reportSettingsChangeForAnalytics('haptics_toggle', oldValue, GameSettings.HapticStrength)
				end
				reportSettingsForAnalytics()
			end
		)
	end

	local function createCameraInvertedOptions()
		local initialIndex = 1
		local success =
			pcall(
			function()
				if GameSettings.CameraYInverted == true then
					initialIndex = 2
				end
			end
		)

		if success == false then
			return
		end

		this.CameraInvertedFrame, _, this.CameraInvertedSelector =
			utility:AddNewRow(this, "Camera Inverted", "Selector", {"Off", "On"}, initialIndex)
		this.CameraInvertedFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["CameraInvertedFrame"]
		settingsDisabledInVR[this.CameraInvertedFrame] = true

		this.CameraInvertedSelector.IndexChanged:connect(
			function(newIndex)
				local oldValue
				if GetFFlagEnableExplicitSettingsChangeAnalytics() then
					oldValue = GameSettings.CameraYInverted
				end

				if newIndex == 2 then
					GameSettings.CameraYInverted = true
				else
					GameSettings.CameraYInverted = false
				end

				if GetFFlagEnableExplicitSettingsChangeAnalytics() then
					reportSettingsChangeForAnalytics('camera_y_inverted', oldValue, GameSettings.CameraYInverted)
				end
				reportSettingsForAnalytics()
			end
		)
	end

	local function setCameraSensitivity(newValue)
		local sensitivityType
		local oldValue
		if UserInputService.GamepadEnabled and GameSettings.IsUsingGamepadCameraSensitivity then
			if GetFFlagEnableExplicitSettingsChangeAnalytics() then
				sensitivityType = 'gamepad'
				oldValue = GameSettings.GamepadCameraSensitivity
			end
			GameSettings.GamepadCameraSensitivity = newValue
		end
		if UserInputService.MouseEnabled then
			if GetFFlagEnableExplicitSettingsChangeAnalytics() then
				sensitivityType = 'mouse'
				oldValue = GameSettings.MouseSensitivityFirstPerson.X
			end

			local newVectorValue = Vector2.new(newValue, newValue)
			GameSettings.MouseSensitivityFirstPerson = newVectorValue
			GameSettings.MouseSensitivityThirdPerson = newVectorValue
		end

		if GetFFlagEnableExplicitSettingsChangeAnalytics() and typeof(oldValue) == "number" and typeof(newValue) == "number" then
			reportSettingsChangeForAnalytics('camera_sensitivity', tonumber(string.format("%.2f", oldValue)), tonumber(string.format("%.2f", newValue)), {
				sensitivity_type = sensitivityType
			})
		end
		reportSettingsForAnalytics()
	end

	local function createMouseOptions()
		local MinMouseSensitivity = 0.2

		-- equations below map a function to include points (0, 0.2) (5, 1) (10, 4)
		-- where x is the slider position, y is the mouse sensitivity
		local function translateEngineMouseSensitivityToGui(engineSensitivity)
			-- 0 <= y <= 1: x = (y - 0.2) / 0.16
			-- 1 <= y <= 4: x = (y + 2) / 0.6
			local guiSensitivity =
				(engineSensitivity <= 1) and math.floor((engineSensitivity - 0.2) / 0.16 + 0.5) or
				math.floor((engineSensitivity + 2) / 0.6 + 0.5)
			return (engineSensitivity <= MinMouseSensitivity) and 0 or guiSensitivity
		end

		local function translateGuiMouseSensitivityToEngine(guiSensitivity)
			-- 0 <= x <= 5:  y = 0.16 * x + 0.2
			-- 5 <= x <= 10: y = 0.6 * x - 2
			local engineSensitivity = (guiSensitivity <= 5) and (0.16 * guiSensitivity + 0.2) or (0.6 * guiSensitivity - 2)
			return (engineSensitivity <= MinMouseSensitivity) and MinMouseSensitivity or engineSensitivity
		end

		local startMouseLevel = translateEngineMouseSensitivityToGui(GameSettings.MouseSensitivity)


		------------------ 3D Sensitivity ------------------
		-- affects both first and third person.
		local AdvancedMouseSteps = 10
		local textBoxWidth = 60
		local textBoxPadding = 20
		local canSetSensitivity = true
		local _MouseAdvancedStart = tostring(GameSettings.MouseSensitivityFirstPerson.X)

		this.MouseAdvancedFrame, this.MouseAdvancedLabel, this.MouseAdvancedEntry =
			utility:AddNewRow(this, "Camera Sensitivity", "Slider", AdvancedMouseSteps, startMouseLevel)
		this.MouseAdvancedFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["MouseAdvancedFrame"]
		settingsDisabledInVR[this.MouseAdvancedFrame] = true

		this.MouseAdvancedEntry.SliderFrame.Size =
			UDim2.new(
			this.MouseAdvancedEntry.SliderFrame.Size.X.Scale,
			if FFlagCameraSensitivityPadding 
				then this.MouseAdvancedEntry.SliderFrame.Size.X.Offset - textBoxWidth - textBoxPadding
				else this.MouseAdvancedEntry.SliderFrame.Size.X.Offset - textBoxWidth,
			this.MouseAdvancedEntry.SliderFrame.Size.Y.Scale,
			this.MouseAdvancedEntry.SliderFrame.Size.Y.Offset - 6
		)
		this.MouseAdvancedEntry.SliderFrame.Position =
			UDim2.new(
			this.MouseAdvancedEntry.SliderFrame.Position.X.Scale,
			if FFlagCameraSensitivityPadding 
				then this.MouseAdvancedEntry.SliderFrame.Size.X.Offset - textBoxWidth - textBoxPadding
				else this.MouseAdvancedEntry.SliderFrame.Size.X.Offset - textBoxWidth,
			this.MouseAdvancedEntry.SliderFrame.Position.Y.Scale,
			this.MouseAdvancedEntry.SliderFrame.Position.Y.Offset
		)
		this.MouseAdvancedLabel.ZIndex = 2
		this.MouseAdvancedEntry:SetInteractable(true)

		local textBox =
			Create "TextBox" {
			Name = "CameraSensitivityTextBox",
			TextColor3 = Color3.new(1, 1, 1),
			BorderColor3 = Color3.new(0.8, 0.8, 0.8),
			BackgroundColor3 = Color3.new(0.2, 0.2, 0.2),
			Font = Theme.font(Enum.Font.SourceSans),
			TextSize = Theme.textSize(18),
			Size = UDim2.new(0, textBoxWidth, 0.8, 0),
			Position = UDim2.new(1, if FFlagCameraSensitivityPadding then textBoxPadding / 2 else -2, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			ZIndex = 3,
			Selectable = false,
			Parent = this.MouseAdvancedEntry.SliderFrame,
			BorderSizePixel = if Theme.UIBloxThemeEnabled then 0 else 1,
		}

		if Theme.UIBloxThemeEnabled then
			Create'UICorner'
			{
				CornerRadius = Theme.DefaultCornerRadius,
				Parent = textBox,
			}
		end

		local maxTextBoxStringLength = 7
		local function setTextboxText(newText)
			if string.len(newText) > maxTextBoxStringLength then
				newText = string.sub(newText, 1, maxTextBoxStringLength)
			end
			textBox.Text = newText
		end

		local function setMouseSensitivityText(num)
			-- Round the number to 3 decimal places
			num = math.floor(num * 1000 + 0.5) / 1000
			local str = string.format("%.3f", num)

			-- Remove trailing zeros and the decimal point if it's the last character
			textBox.Text = tostring(tonumber(str))
		end

		if FFlagFixSensitivityTextPrecision then
			setMouseSensitivityText(GameSettings.MouseSensitivityFirstPerson.X)
		else
			setTextboxText(tostring(GameSettings.MouseSensitivityFirstPerson.X))
		end
		this.MouseAdvancedEntry:SetValue(translateEngineMouseSensitivityToGui(GameSettings.MouseSensitivityFirstPerson.X))

		function clampMouseSensitivity(value)
			if value < 0.0 then
				value = -value
			end

			-- * assume a minimum that allows a 16000 dpi mouse a full 800mm travel for 360deg
			--   ~0.0029: min of 0.001 seems ok.
			-- * assume a max that allows a 400 dpi mouse a 360deg travel in 10mm
			--   ~9.2: max of 10 seems ok, but users will want to have a bit of fun with crazy settings.
			if value > 100.0 then
				value = 100.0
			elseif value < 0.001 then
				value = 0.001
			end

			return value
		end

		function setMouseSensitivity(newValue, widgetOrigin)
			if not canSetSensitivity then
				return
			end

			setCameraSensitivity(newValue)

			canSetSensitivity = false
			do
				if widgetOrigin ~= this.MouseAdvancedEntry then
					this.MouseAdvancedEntry:SetValue(translateEngineMouseSensitivityToGui(newValue))
				end

				if FFlagFixSensitivityTextPrecision then
					setMouseSensitivityText(newValue)
				else
					setTextboxText(tostring(newValue))
				end
			end
			canSetSensitivity = true
		end

		textBox.FocusLost:connect(
			function()
				this.MouseAdvancedEntry:SetInteractable(true)

				local num = tonumber((string.match(textBox.Text, "([%d%.]+)")))

				if num then
					setMouseSensitivity(clampMouseSensitivity(num), textBox)
				else
					setMouseSensitivity(GameSettings.MouseSensitivityFirstPerson.X, textBox)
				end
			end
		)

		textBox.Focused:connect(
			function()
				this.MouseAdvancedEntry:SetInteractable(false)
			end
		)

		this.MouseAdvancedEntry.ValueChanged:connect(
			function(newValue)
				newValue = clampMouseSensitivity(newValue)
				newValue = translateGuiMouseSensitivityToEngine(newValue)
				setMouseSensitivity(newValue, this.MouseAdvancedEntry)
			end
		)
	end

	local function createGamepadOptions()
		local GamepadSteps = 10
		local MinGamepadCameraSensitivity = 0.2
		-- equations below map a function to include points (0, 0.2) (5, 1) (10, 4)
		-- where x is the slider position, y is the mouse sensitivity
		local function translateEngineGamepadSensitivityToGui(engineSensitivity)
			-- 0 <= y <= 1: x = (y - 0.2) / 0.16
			-- 1 <= y <= 4: x = (y + 2) / 0.6
			local guiSensitivity =
				(engineSensitivity <= 1) and math.floor((engineSensitivity - 0.2) / 0.16 + 0.5) or
				math.floor((engineSensitivity + 2) / 0.6 + 0.5)
			return (engineSensitivity <= MinGamepadCameraSensitivity) and 0 or guiSensitivity
		end
		local function translateGuiGamepadSensitivityToEngine(guiSensitivity)
			-- 0 <= x <= 5:  y = 0.16 * x + 0.2
			-- 5 <= x <= 10: y = 0.6 * x - 2
			local engineSensitivity = (guiSensitivity <= 5) and (0.16 * guiSensitivity + 0.2) or (0.6 * guiSensitivity - 2)
			return (engineSensitivity <= MinGamepadCameraSensitivity) and MinGamepadCameraSensitivity or engineSensitivity
		end
		local startGamepadLevel = translateEngineGamepadSensitivityToGui(GameSettings.GamepadCameraSensitivity)
		------------------ Basic Gamepad Sensitivity Slider ------------------
		-- basic quantized sensitivity with a weird number of settings.
		local SliderLabel = "Camera Sensitivity"
		this.GamepadSensitivityFrame, this.GamepadSensitivityLabel, this.GamepadSensitivitySlider =
			utility:AddNewRow(this, SliderLabel, "Slider", GamepadSteps, startGamepadLevel)
		this.GamepadSensitivityFrame.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["GamepadSensitivityFrame"]
		this.GamepadSensitivitySlider.ValueChanged:connect(
			function(newValue)
				setCameraSensitivity(translateGuiGamepadSensitivityToEngine(newValue))
			end
		)
	end

	local function createOverscanOption()
		local showOverscanScreen = function()
			-- FIXME: Cyclic module dependency, cast to any to appease typechecker
			local MenuModule = require(RobloxGui.Modules.Settings.SettingsHub) :: any
			local overscan
			overscan = require(RobloxGui.Modules.Shell.Components.Overscan10ft.Overscan)
			overscan = require(RobloxGui.Modules.Settings.Components.OverscanWrapper)(overscan)

			local roact = require(RobloxGui.Modules.Common.Roact)
			local overscanComponent = nil

			local props = {}
			props.onUnmount = function()
				if overscanComponent then
					roact.unmount(overscanComponent)

					-- show settings menu and give back movement
					ContextActionService:UnbindCoreAction("RbxStopOverscanMovement")
					MenuModule:SetVisibility(true, true)
				end
			end
			props.ImageVisible = false
			props.BackgroundTransparency = 0.2

			-- hide settings menu
			MenuModule:SetVisibility(false, true)

			-- override all bindings for movement
			local noOpFunc = function()
			end
			ContextActionService:BindCoreAction(
				"RbxStopOverscanMovement",
				noOpFunc,
				false,
				Enum.UserInputType.Gamepad1,
				Enum.UserInputType.Gamepad2,
				Enum.UserInputType.Gamepad3,
				Enum.UserInputType.Gamepad4
			)

			local overscanElement
			overscanElement = roact.createElement(overscan, props)
			overscanComponent = roact.mount(overscanElement, RobloxGui, tostring(overscan))
		end

		local adjustButton, adjustText, setButtonRowRef =
			utility:MakeStyledButton("AdjustButton", "Adjust", UDim2.new(0, 300, 1, -20), showOverscanScreen, this)
		adjustText.Font = Theme.font(Enum.Font.SourceSans)
		adjustButton.Position = UDim2.new(1, -400, 0, 12)
		if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then 
			adjustButton.Size = UDim2.new(0, 300, 0, 40)
			adjustButton.Position = UDim2.new(1, -400, 0.5, 0)
			adjustButton.AnchorPoint = Vector2.new(0, 0.5)
		end 
		if RunService:IsStudio() then
			adjustButton.Selectable = false
			adjustButton.Active = false
			adjustButton.Enabled.Value = false
			adjustText.TextColor3 = Color3.fromRGB(100, 100, 100)
		end

		local row = utility:AddNewRowObject(this, "Safe Zone", adjustButton)
		row.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["OverscanAdjustButton"]
		setButtonRowRef(row)

	end

	local function createDeveloperConsoleOption()
		-- makes button in settings menu to open dev console
		local function makeDevConsoleOption()
			local function onOpenDevConsole()
				local devConsoleMaster = require(script.Parent.Parent.Parent.DevConsoleMaster)
				if devConsoleMaster then
					devConsoleMaster:SetVisibility(true)
					-- FIXME: Cyclic module dependency, cast to any to appease typechecker
					local MenuModule = require(script.Parent.Parent.SettingsHub) :: any
					if MenuModule then
						MenuModule:SetVisibility(false)
					end
				end
			end

			if FFlagFixDeveloperConsoleButtonSizeAndPositioning then
				local devConsoleButton, devConsoleText, setButtonRowRef =
					utility:MakeStyledButton("DevConsoleButton", "Open", UDim2.new(1, 0, 1, -20), onOpenDevConsole, this)
				devConsoleText.Font = Theme.font(Enum.Font.SourceSans)
				if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then
					devConsoleButton.Size = UDim2.new(0.6, -10, 0, 35)
					devConsoleButton.Position = UDim2.new(0.4, 10, 0.5, 0)
					devConsoleButton.AnchorPoint = Vector2.new(0, 0.5)
				else 
					devConsoleButton.Size = UDim2.new(0.6, -10, 1, -20)
					devConsoleButton.Position = UDim2.new(0.4, 10, 0, 12)
				end
				-- Nil for spacing parameter, true for auto spacing the left hand label
				local row = utility:AddNewRowObject(this, "Developer Console", devConsoleButton, nil, true)
				row.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["DeveloperConsoleButton"]
				setButtonRowRef(row)
			else
				local devConsoleButton, devConsoleText, setButtonRowRef =
					utility:MakeStyledButton("DevConsoleButton", "Open", UDim2.new(0, 300, 1, -20), onOpenDevConsole, this)
				devConsoleText.Font = Theme.font(Enum.Font.SourceSans)
				if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then 
					devConsoleButton.Size = UDim2.new(0.6, -10, 0, 35)
					devConsoleButton.Position = UDim2.new(1, -400, 0.5, 0)
					devConsoleButton.AnchorPoint = Vector2.new(0, 0.5)
				else
					devConsoleButton.Position = UDim2.new(1, -400, 0, 12)
				end
				local row = utility:AddNewRowObject(this, "Developer Console", devConsoleButton)
				row.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["DeveloperConsoleButton"]
				setButtonRowRef(row)
			end
		end

		if RunService:IsStudio() then
			makeDevConsoleOption()
		else
			spawn(function()
				--only show option if player has edit access
				if PlayerPermissionsModule.CanPlayerManagePlaceAsync(Players.LocalPlayer) then
					makeDevConsoleOption()
				end
			end)
		end
	end
	
	local function createUiToggleOptions()
		if FFlagUserShowGuiHideToggles then
			local selectorTypes = {
				{ label = "Custom", type = Enum.GuiType.Custom, layoutOrderKey = "UiToggleRowCustom" },
				{ label = "CustomBillboards", type = Enum.GuiType.CustomBillboards, layoutOrderKey = "UiToggleRowBillboards" },
				{ label = "PlayerNameplates", type = Enum.GuiType.PlayerNameplates, layoutOrderKey = "UiToggleRowNameplates" },
			}
			local onLabel = RobloxTranslator:FormatByKey("InGame.CommonUI.Label.On")
			local offLabel = RobloxTranslator:FormatByKey("InGame.CommonUI.Label.Off")

			this.uiToggleSelectors = {}

			for idx, selectorType in selectorTypes do
				local label = RobloxTranslator:FormatByKey("Feature.SettingsHub.GameSettings.GuiVisibility.ShowGuiType", {
					GuiType = selectorType.label,
				})
				local row, frame, selector = utility:AddNewRow(this, label, "Selector", { onLabel, offLabel }, 1)
				row.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER[selectorType.layoutOrderKey]

				selector.IndexChanged:Connect(function(newIndex)
					local prevIndex = if GuiService:GetGuiIsVisible(selectorType.type) then 1 else 2

					if prevIndex ~= newIndex then
						GuiService:ToggleGuiIsVisibleIfAllowed(selectorType.type)
					end
				end)

				this.uiToggleSelectors[selectorType.label] = {
					label = label,
					type = selectorType.type,
					row = row,
					frame = frame,
					selector = selector,
				}
			end

			local freecamLabel = RobloxTranslator:FormatByKey("Feature.SettingsHub.GameSettings.GuiVisibility.Freecam")
			this.freecamRow, this.freecamFrame, this.freecamSelector = utility:AddNewRow(this, freecamLabel, "Selector", { offLabel, onLabel }, 1)
			this.freecamRow.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["FreecamToggleRow"]

			this.freecamSelector.IndexChanged:Connect(function(newIndex)
				local enabled = newIndex == 2
				local freecamScript = LocalPlayer:FindFirstChild("FreecamScript", true)
				if not freecamScript then
					warn("Freecam not present")
					return
				end

				freecamScript:SetAttribute("FreecamEnabled", enabled)
			end)
		else
			local uiToggleOptions = {
				"All visible",
				"Hide nameplates/bubble chat",
			}
			this.uiToggleRow, this.uiToggleFrame, this.uiToggleSelector =
				utility:AddNewRow(this, "BillboardGui Visibility", "Selector", uiToggleOptions, 1)
			this.uiToggleRow.LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER["UiToggleRow"]

			this.uiToggleSelector.IndexChanged:connect(
				function(newIndex)
					GuiService:ToggleGuiIsVisibleIfAllowed(Enum.GuiType.PlayerNameplates)
				end
			)
		end
	end

	local function updateUiToggleSelection()
		if FFlagUserShowGuiHideToggles then
			-- If the toggle doesn't exist, we probably don't have permission to change this
			if not this.uiToggleSelectors then
				return
			end

			for _, selector in this.uiToggleSelectors do
				local newIndex = if GuiService:GetGuiIsVisible(selector.type) then 1 else 2

				if newIndex ~= selector.selector:GetSelectedIndex() then
					selector.selector:SetSelectionIndex(newIndex)
				end
			end

			local freecamScript = LocalPlayer:FindFirstChild("FreecamScript", true)
			if freecamScript then
				local enabled = freecamScript:GetAttribute("FreecamEnabled")
				local index = if enabled then 2 else 1
				this.freecamSelector:SetSelectionIndex(index)
			end
		else
			-- If the toggle doesn't exist, we probably don't have permission to change this
			if not this.uiToggleSelector then
				return
			end

			local newIndex
			if GuiService:GetGuiIsVisible(Enum.GuiType.PlayerNameplates) then
				newIndex = 1
			else
				newIndex = 2
			end

			if newIndex == this.uiToggleSelector:GetSelectedIndex() then
				return
			end

			this.uiToggleSelector:SetSelectionIndex(newIndex)
		end
	end

	local function isValidDeviceList(deviceNames, deviceGuids, index)
		return deviceNames and deviceGuids and index and #deviceNames > 0 and index > 0
			and index <= #deviceNames and #deviceNames == #deviceGuids
	end

	local function setVCSOutput(soundServiceOutputName)
		local VCSSuccess, VCSDeviceNames, VCSDeviceGuids, VCSIndex = pcall(function ()
			return VoiceChatService:GetSpeakerDevices()
		end)

		if VCSSuccess
			and isValidDeviceList(VCSDeviceNames, VCSDeviceGuids, VCSIndex) then

			-- Find the matching VCS Device
			local VCSDeviceIndex = 0
			for deviceIndex, deviceName in ipairs(VCSDeviceNames) do
				if deviceName == soundServiceOutputName then
					VCSDeviceIndex = deviceIndex
				end
			end

			if VCSDeviceIndex > 0 then
				if GetFFlagVoiceChatUILogging() then
					log:debug("[OutputDeviceSelection] Setting VCS Speaker Device To {} {} ",
						VCSDeviceNames[VCSDeviceIndex],
						VCSDeviceGuids[VCSDeviceIndex]
					)
				end
				VoiceChatService:SetSpeakerDevice(
					VCSDeviceNames[VCSDeviceIndex],
					VCSDeviceGuids[VCSDeviceIndex]
				)
			else
				if GetFFlagVoiceChatUILogging() then
					log:warning("Could not find equivalent VoiceChatService Device")
				end
			end
		else
			if GetFFlagVoiceChatUILogging() then
				log:warning("Could not connect to Voice Chat Service to change Output Device")
			end
		end
	end

	-- TODO: Remove this when voice chat is unified with sound service.
	local function syncSoundOutputs()
		local success, deviceNames, deviceGuids, selectedIndex = pcall(function()
			return SoundService:GetOutputDevices()
		end)
		if success and isValidDeviceList(deviceNames, deviceGuids, selectedIndex) then
			setVCSOutput(deviceNames[selectedIndex])
		else
			if GetFFlagVoiceChatUILogging() then
				log:warning("Could not connect to Voice Chat Service to change Output Device")
			end
		end
	end

	local function SwitchOutputDevice(deviceName, deviceGuid)
		SoundService:SetOutputDevice(deviceName, deviceGuid)
		log:info("[SwitchOutputDevice] Setting SS Speaker Device To {} {}", deviceName, deviceGuid)
	end

	local function createDeviceOptions(deviceType)
		local selectedIndex = this[deviceType.."DeviceIndex"] or 0
		local options = this[deviceType.."DeviceNames"] or {}
		local guids = this[deviceType.."DeviceGuids"] or {}

		local deviceLabel = (deviceType == VOICE_CHAT_DEVICE_TYPE.Input) and RobloxTranslator:FormatByKey("Feature.SettingsHub.GameSettings.InputDevice") or RobloxTranslator:FormatByKey("Feature.SettingsHub.GameSettings.OutputDevice")
		this[deviceType.."DeviceFrame"], _, this[deviceType.."DeviceSelector"] =
			utility:AddNewRow(this, deviceLabel, "Selector", options, selectedIndex)
		this[deviceType.."DeviceFrame"].LayoutOrder = (deviceType == VOICE_CHAT_DEVICE_TYPE.Input) and SETTINGS_MENU_LAYOUT_ORDER["DeviceFrameInput"] or SETTINGS_MENU_LAYOUT_ORDER["DeviceFrameOutput"]

		this[deviceType.."DeviceInfo"] = {
			Name = selectedIndex > 0 and options[selectedIndex] or nil,
			Guid = selectedIndex > 0 and guids[selectedIndex] or nil,
		}

		local indexChangedInvocations = 0
		local indexChangedDelay = GetFIntVoiceChatDeviceChangeDebounceDelay()
		this[deviceType.."DeviceSelector"].IndexChanged:connect(
			function(newIndex)
				if this[deviceType.."DeviceInfo"].Name == this[deviceType.."DeviceNames"][newIndex] and
					this[deviceType.."DeviceInfo"].Guid == this[deviceType.."DeviceGuids"][newIndex] then
					return
				end

				local currentInvocation = indexChangedInvocations + 1
				indexChangedInvocations = currentInvocation
				wait(indexChangedDelay)
				local changeDevice = currentInvocation == indexChangedInvocations

				if changeDevice then
					indexChangedInvocations = 0
					this[deviceType.."DeviceInfo"] = {
						Name = this[deviceType.."DeviceNames"][newIndex],
						Guid = this[deviceType.."DeviceGuids"][newIndex],
					}

					local deviceName = this[deviceType.."DeviceInfo"].Name
					local deviceGuid = this[deviceType.."DeviceInfo"].Guid

					if this.VoiceChatOptionsEnabled then
						VoiceChatServiceManager:SwitchDevice(deviceType, deviceName, deviceGuid)
					else
						SwitchOutputDevice(deviceName, deviceGuid)
					end
				end
			end
		)
	end

	local function createCameraDeviceOptions()
		local selectedIndex = this[CAMERA_DEVICE_INDEX_KEY] or 1
		local options = this[CAMERA_DEVICE_NAMES_KEY] or {}
		local guids = this[CAMERA_DEVICE_GUID_KEY] or {}

		local deviceLabel = VideoPromptVideoCamera
		this[CAMERA_DEVICE_FRAME_KEY], _, this[CAMERA_DEVICE_SELECTOR_KEY] =
			utility:AddNewRow(this, deviceLabel, "Selector", options, selectedIndex)
		this[CAMERA_DEVICE_FRAME_KEY].LayoutOrder = SETTINGS_MENU_LAYOUT_ORDER[CAMERA_DEVICE_FRAME_KEY]

		this[CAMERA_DEVICE_INFO_KEY] = {
			Name = selectedIndex > 0 and options[selectedIndex] or nil,
			Guid = selectedIndex > 0 and guids[selectedIndex] or nil,
		}

		this[CAMERA_DEVICE_SELECTOR_KEY].IndexChanged:connect(
			function(newIndex)
				if this[CAMERA_DEVICE_INFO_KEY].Name == this[CAMERA_DEVICE_NAMES_KEY][newIndex] and
					this[CAMERA_DEVICE_INFO_KEY].Guid == this[CAMERA_DEVICE_GUID_KEY][newIndex] then
					return
				end

				this[CAMERA_DEVICE_INFO_KEY] = {
					Name = this[CAMERA_DEVICE_NAMES_KEY][newIndex],
					Guid = this[CAMERA_DEVICE_GUID_KEY][newIndex],
				}

				local deviceGuid = this[CAMERA_DEVICE_INFO_KEY].Guid
				log:info("Changed webcam to: {}", deviceGuid)
				UserGameSettings.DefaultCameraID = deviceGuid
			end
		)
	end

	local function updateAudioOutputDevices()
		local success, deviceNames, deviceGuids, selectedIndex = pcall(function()
			return SoundService:GetOutputDevices()
		end)

		local deviceType = VOICE_CHAT_DEVICE_TYPE.Output

		if success and isValidDeviceList(deviceNames, deviceGuids, selectedIndex) then
			this[deviceType.."DeviceNames"] = deviceNames
			this[deviceType.."VCSDeviceNames"] = deviceNames
			this[deviceType.."VCSDeviceGuids"] = deviceGuids
			this[deviceType.."DeviceGuids"] = deviceGuids
			this[deviceType.."DeviceIndex"] = selectedIndex
		else

			if GetFFlagVoiceChatUILogging() then
				log:warning("Errors in get {} device info", deviceType)
			end
			this[deviceType.."DeviceNames"] = {}
			this[deviceType.."DeviceGuids"] = {}
			this[deviceType.."VCSDeviceNames"] = {}
			this[deviceType.."VCSDeviceGuids"] = {}
			this[deviceType.."DeviceIndex"] = 0
		end

		if not this[deviceType.."DeviceSelector"] then
			createDeviceOptions(deviceType)
		else
			this[deviceType.."DeviceSelector"]:UpdateOptions(deviceNames)
			this[deviceType.."DeviceSelector"]:SetSelectionIndex(selectedIndex)
		end
	end

	local function updateVoiceChatDevices(deviceType)
		if deviceType ~= VOICE_CHAT_DEVICE_TYPE.Input and deviceType ~= VOICE_CHAT_DEVICE_TYPE.Output then
			if GetFFlagVoiceChatUILogging() then
				log:warning("{} is not supported in VoiceChat devices", deviceType)
			end
		end

		local success, deviceNames, deviceGuids, selectedIndex = pcall(function()
			if deviceType == VOICE_CHAT_DEVICE_TYPE.Input then
				if game:GetEngineFeature("UseFmodForInputDevices") then
					return SoundService:GetInputDevices()
				else
					return VoiceChatService:GetMicDevices()
				end
			else
				return SoundService:GetOutputDevices()
			end
		end)

		local VCSSuccess, VCSDeviceNames, VCSDeviceGuids, VCSIndex = pcall(function ()
			return VoiceChatService:GetSpeakerDevices()
		end)

		if success and VCSSuccess and isValidDeviceList(deviceNames, deviceGuids, selectedIndex)
			and isValidDeviceList(VCSDeviceNames, VCSDeviceGuids, VCSIndex) then
			this[deviceType.."DeviceNames"] = deviceNames
			this[deviceType.."VCSDeviceNames"] = VCSDeviceNames
			this[deviceType.."VCSDeviceGuids"] = VCSDeviceGuids
			this[deviceType.."DeviceGuids"] = deviceGuids
			this[deviceType.."DeviceIndex"] = selectedIndex
		else

			if GetFFlagVoiceChatUILogging() then
				if #deviceNames > 0 then
					log:warning("Errors in get {} device info success: {} VCSSuccess: {}", deviceType, success, VCSSuccess)
				else
					log:warning("Empty deviceNames list for {}", deviceType)
				end
			end
			this[deviceType.."DeviceNames"] = {}
			this[deviceType.."DeviceGuids"] = {}
			this[deviceType.."VCSDeviceNames"] = {}
			this[deviceType.."VCSDeviceGuids"] = {}
			this[deviceType.."DeviceIndex"] = 0
		end

		if not this[deviceType.."DeviceSelector"] then
			createDeviceOptions(deviceType)
		else
			this[deviceType.."DeviceSelector"]:UpdateOptions(deviceNames)
			this[deviceType.."DeviceSelector"]:SetSelectionIndex(selectedIndex)
		end

		if this[deviceType.."DeviceFrame"] then
			if #deviceNames > 0 then
				this[deviceType.."DeviceFrame"].Visible = true
			else
				this[deviceType.."DeviceFrame"].Visible = false
			end
		end
	end

	local function updateCameraDevices()
		local devs = VideoCaptureService:GetCameraDevices()
		local deviceNames = {}
		local deviceGuids = {}
		local selectedIndex = 1
		table.insert(deviceNames, VideoPromptSystemDefault)
		table.insert(deviceGuids, "{DefaultDeviceGuid}")
		for guid, name in pairs(devs) do
			if guid == UserGameSettings.DefaultCameraID then
				selectedIndex = #deviceNames+1
			end
			table.insert(deviceNames, name)
			table.insert(deviceGuids, guid)
		end

		this[CAMERA_DEVICE_NAMES_KEY] = deviceNames
		this[CAMERA_DEVICE_GUID_KEY] = deviceGuids
		this[CAMERA_DEVICE_INDEX_KEY] = 0

		if not this[CAMERA_DEVICE_SELECTOR_KEY] then
			createCameraDeviceOptions()
		else
			this[CAMERA_DEVICE_SELECTOR_KEY]:UpdateOptions(deviceNames)
		end
		this[CAMERA_DEVICE_SELECTOR_KEY]:SetSelectionIndex(selectedIndex)
	end

	local deviceChangedConnection = nil
	local videoCameraDeviceChangedConnection = nil

	local function updateAudioOptions()
		if this.VoiceChatOptionsEnabled then
			updateVoiceChatDevices(VOICE_CHAT_DEVICE_TYPE.Input)
			updateVoiceChatDevices(VOICE_CHAT_DEVICE_TYPE.Output)
		else
			updateAudioOutputDevices()
		end
	end

	local function setupDeviceChangedListener()
		if SoundService.DeviceListChanged then
			deviceChangedConnection = SoundService.DeviceListChanged:Connect(function()
				if this.PageOpen then
					updateAudioOptions()
				end
			end)
		end
	end

	local function setupVideoCameraDeviceChangedListener()
		if VideoCaptureService.DevicesChanged then
			videoCameraDeviceChangedConnection = VideoCaptureService.DevicesChanged:Connect(function()
				if this.PageOpen then
					updateCameraDevices()
				end
			end)
		end
	end

	local function teardownDeviceChangedListener()
		if SoundService.DeviceListChanged and deviceChangedConnection then
			deviceChangedConnection:Disconnect()
		end
	end

	local function teardownVideoCameraDeviceChangedListener()
		if VideoCaptureService.DevicesChanged and videoCameraDeviceChangedConnection then
			videoCameraDeviceChangedConnection:Disconnect()
			videoCameraDeviceChangedConnection = nil
		end
	end

	-- Check if voice chat is enabled
	local function checkVoiceChatOptions()
		if VoiceChatServiceManager:VoiceChatAvailable() then
			this.VoiceChatOptionsEnabled = true
			syncSoundOutputs()
		end
	end

	this.VoiceChatOptionsEnabled = false
	if game:GetEngineFeature("VoiceChatSupported") then
		spawn(function()
			VoiceChatServiceManager:asyncInit():andThen(function()
				VoiceChatService = VoiceChatServiceManager:getService()
				checkVoiceChatOptions()

				-- Check volume settings. Show prompt if volume is 0
				if not GetFFlagEnableUniveralVoiceToasts() then
					VoiceChatServiceManager:CheckAndShowNotAudiblePrompt()
				end
			end):catch(function()
				if GetFFlagVoiceChatUILogging() then
					log:warning("Failed to init VoiceChatServiceManager")
				end

				-- Check mic permission settings. Show prompt if no permission
				if not GetFFlagEnableUniveralVoiceToasts() then
					VoiceChatServiceManager:CheckAndShowPermissionPrompt()
				end
			end)
		end)
	end

	this.VideoOptionsEnabled = false
	local cameraPermissionGrantedListener = nil
	local teardownCameraPermissionGrantedListener = function()
		-- Garbage collection
		if cameraPermissionGrantedListener then
			cameraPermissionGrantedListener:disconnect()
			cameraPermissionGrantedListener = nil
		end
	end
	if FFlagAvatarChatCoreScriptSupport or GetFFlagSelfViewCameraSettings() then
		local callback = function(response)
			this.VideoOptionsEnabled = response.hasCameraPermissions
		end

		if getFFlagDoNotPromptCameraPermissionsOnMount() then
			if isCamEnabledForUserAndPlace() then
				-- Only render video options setting if it's enabled + eligible for user and enabled for place
				local shouldNotRequestPerms = true
				getCamMicPermissions(callback, { PermissionsProtocol.Permissions.CAMERA_ACCESS :: string }, shouldNotRequestPerms)

				if cameraPermissionGrantedListener then
					cameraPermissionGrantedListener:disconnect()
				end
				cameraPermissionGrantedListener = cameraDevicePermissionGrantedSignal:connect(function()
					-- Once we hear the granted signal, we'll show the Camera Device Game setting
					this.VideoOptionsEnabled = true
					updateCameraDevices()
					setupVideoCameraDeviceChangedListener()
				end)
			end
		else
			getCamMicPermissions(callback, nil, nil, "GameSettings.createDeviceOptions")
		end
	end


	createCameraModeOptions(
		not isTenFootInterface and
			(UserInputService.TouchEnabled or UserInputService.MouseEnabled or UserInputService.KeyboardEnabled)
	)

	local checkGamepadOptions = function()
		if GameSettings.IsUsingGamepadCameraSensitivity then
			createGamepadOptions()
		else
			local camerasettingsConn = nil
			camerasettingsConn =
				GameSettings:GetPropertyChangedSignal("IsUsingGamepadCameraSensitivity"):connect(
				function()
					if GameSettings.IsUsingGamepadCameraSensitivity then
						if camerasettingsConn then
							camerasettingsConn:disconnect()
						end
						createGamepadOptions()
					end
				end
			)
		end
	end

	if UserInputService.MouseEnabled then
		createMouseOptions()
	else
		if UserInputService.GamepadEnabled then
			checkGamepadOptions()
		else
			local gamepadConnectedConn = nil
			gamepadConnectedConn =
				UserInputService.GamepadConnected:connect(
				function()
					if gamepadConnectedConn then
						gamepadConnectedConn:disconnect()
					end
					checkGamepadOptions()
				end
			)
		end
	end

	if GameSettings.IsUsingCameraYInverted then
		createCameraInvertedOptions()
	else
		local gamesettingsConn = nil
		gamesettingsConn =
			GameSettings.Changed:connect(
			function(prop)
				if prop == "IsUsingCameraYInverted" then
					if GameSettings.IsUsingCameraYInverted then
						gamesettingsConn:disconnect()
						createCameraInvertedOptions()
					end
				end
			end
		)
	end

	createVolumeOptions()
	if GetFFlagAddHapticsToggle() then
		createHapticsToggle()
	end
	createGraphicsOptions()

	createReducedMotionOptions()
	createPreferredTransparencyOptions()

	if GetFFlagEnablePreferredTextSizeSettingInMenus() then
		createPreferredTextSizeOptions()
	end

	if UserInputService.KeyboardEnabled then
		createUiNavigationKeyBindOptions()
	end

	local canShowPerfStats =  not PolicyService:IsSubjectToChinaPolicies()

	if canShowPerfStats then
		createPerformanceStatsOptions()
	end

	-- create micro profiler option in the end, so the ip and port can be shown next to the row
	if UseMicroProfiler then
		createMicroProfilerOptions()
	end

	if isTenFootInterface and getAppFeaturePolicies().getSupportsOverscan() then
		createOverscanOption()
	end

	-- dev console option only shows for place/group place owners
	createDeveloperConsoleOption()

	GetHasGuiHidingPermission(RunService:IsStudio(), LocalPlayer, PlayerPermissionsModule):andThen(function(hasPermission)
		if hasPermission then
			createUiToggleOptions()
		end
	end):catch(function(error)
		warn(error)
	end)

	allSettingsCreated = true
	if VRService.VREnabled then
		onVRSettingsReady()
	end

	------ TAB CUSTOMIZATION -------
	this.TabHeader.Name = "GameSettingsTab"

	if Theme.UIBloxThemeEnabled then

		local icon = Theme.Images["icons/common/settings"]
		this.TabHeader.TabLabel.Icon.ImageRectOffset = icon.ImageRectOffset
		this.TabHeader.TabLabel.Icon.ImageRectSize = icon.ImageRectSize
		this.TabHeader.TabLabel.Icon.Image = icon.Image

		this.TabHeader.TabLabel.Title.Text = "Settings"
	else
		this.TabHeader.Icon.Image =
		isTenFootInterface and "rbxasset://textures/ui/Settings/MenuBarIcons/GameSettingsTab@2x.png" or
		"rbxasset://textures/ui/Settings/MenuBarIcons/GameSettingsTab.png"

		if FFlagUseNotificationsLocalization then
			this.TabHeader.Title.Text = "Settings"
		else
			this.TabHeader.Icon.Title.Text = "Settings"
		end
	end

	------ PAGE CUSTOMIZATION -------
	this.Page.ZIndex = 5

	if this.PageListLayout then
		this.PageListLayout.Padding = UDim.new(0, 0)
	end

	this.PageOpen = false

	if game:GetEngineFeature("ExperienceStateCaptureMinMemEnabled") then
		-- Dynamic tracker for status of whether feedback entry point is available or not
		-- Since this is dynamic, not passing this check is expected to show an "unavailable" status for feedback mode, since it may become available later on in the session
		this.FeedbackEntryPointEnabled = true
	end

	-- Static checks for if feedback entry point is available, not passing this check will completely hide the entry point setting
	local function staticFeedbackEntryPointChecksPassed()
		if RunService:IsStudio() then
			return false
		end

		if game:GetEngineFeature("CaptureModeEnabled") == false then
			return false
		end

		if FFlagEnableTFFeedbackModeEntryCheck and isTenFootInterface then
			return false
		end

		return true
	end

	this.OpenSettingsPage = function()
		this.PageOpen = true
		
		-- Update device info each time user opens the menu
		-- TODO: This should be simplified by new API
		updateAudioOptions()
		setupDeviceChangedListener()
		this.startVolume = GameSettings.MasterVolume

		if (FFlagAvatarChatCoreScriptSupport or GetFFlagSelfViewCameraSettings()) and this.VideoOptionsEnabled then
			if game:GetEngineFeature("VideoCaptureService") then
				updateCameraDevices()
				setupVideoCameraDeviceChangedListener()
			end
		end

		updateUiToggleSelection()

		-- On settings page open, double check the capture service to see if feedback mode should be enterable
		-- Only do this if static checks passed and we are expecting to see options at all
		if game:GetEngineFeature("ExperienceStateCaptureMinMemEnabled") and this.toggleFeedbackModeButton and this.toggleFeedbackModeText then
			this.FeedbackEntryPointEnabled = ExperienceStateCaptureService ~= nil and ExperienceStateCaptureService:CanEnterCaptureMode()
			if this.FeedbackEntryPointEnabled then
				-- Matches with adjustbutton in settings menu for consistency
				this.toggleFeedbackModeButton.Active = true
				this.toggleFeedbackModeButton.Enabled.Value = true
				this.toggleFeedbackModeText.Text = "Give Feedback"
			else
				this.toggleFeedbackModeButton.Active = false
				this.toggleFeedbackModeButton.Enabled.Value = false
				this.toggleFeedbackModeText.TextColor3 = Theme.color("ButtonNonInteractable", Color3.fromRGB(100, 100, 100))
				this.toggleFeedbackModeText.Text = "Unavailable"
			end
		end
	end

	this.CloseSettingsPage = function()
		this.PageOpen = false
		teardownDeviceChangedListener()
		if FFlagAvatarChatCoreScriptSupport or GetFFlagSelfViewCameraSettings() then
			if game:GetEngineFeature("VideoCaptureService") then
				teardownVideoCameraDeviceChangedListener()
			end

			if getFFlagDoNotPromptCameraPermissionsOnMount() then
				teardownCameraPermissionGrantedListener()
			end
		end

		-- Check volume settings.
		-- If player has decreased volume from >0 to 0, show prompt
		if game:GetEngineFeature("VoiceChatSupported")
			and this.VoiceChatOptionsEnabled and this.startVolume ~= nil and this.startVolume > 0
		then
			VoiceChatServiceManager:CheckAndShowNotAudiblePrompt()
		end
	end

	function isLangaugeSelectionDropdownEnabled()
		-- If the engine feature is not enabled, then no matter what we should
		-- return false, no need to consider the finer granularity flags
		if game:GetEngineFeature("EnableSetExperienceSettingsLocaleIdApi") ~= true then
			return false
		end

		-- Check if the user should get the dropdown via per millage
		if (LocalPlayer.UserId % 1000) + 1 <= game:GetFastInt("V1MenuLanguageSelectionFeaturePerMillageRollout") then
			return true
		end

		-- Check if the user is in the forced list of users
		local forcedUserIds = game:GetFastString("V1MenuLanguageSelectionFeatureForcedUserIds")
		for forcedUserIdString in forcedUserIds:gmatch("%d+") do
			if tonumber(forcedUserIdString) == LocalPlayer.UserId then
				return true
			end
		end

		return false
	end

	function this:SetHub(newHubRef)
		this.HubRef = newHubRef

		if isLangaugeSelectionDropdownEnabled() then
			createTranslationOptions()
		end

		-- Chat translation setting uses dropdowns, which require the hub reference to exist
		if game:GetEngineFeature("EnableTCSChatTranslation") and game:GetEngineFeature("EnableTCSChatTranslationLanguageSwitcher") then
			if GetFFlagChatTranslationSettingEnabled() then
				if GetFFlagChatTranslationLaunchEnabled() then
					if GetFFlagChatTranslationHoldoutEnabled() then
						local layerName = GetFStringChatTranslationLayerName()
						local layerData = getChatTranslationLayerData(layerName)

						if not layerData.ChatTranslationEnabled then
							if ChatTranslationSettingsMoved then
								if GetFFlagChatTranslationNewDefaults() then
									-- If locale is empty, this is a first time load, set to Off
									if GameSettings.ChatTranslationLocale == "" then
										GameSettings.ChatTranslationEnabled = false
										GameSettings.ChatTranslationLocale = "en_us"
									end
								else
									GameSettings.ChatTranslationEnabled = false
								end
							else
								pcall(function ()
									TextChatService.ChatTranslationEnabled = false
								end)
							end
						else
							-- Force setting to comply with IXP result
							if GetFFlagChatTranslationForceSetting() then
								GameSettings.ChatTranslationEnabled = true
							end
						end
					end
					CreateChatTranslationOptionsWithChatLanguageSwitcher(this, SETTINGS_MENU_LAYOUT_ORDER, reportSettingsChangeForAnalytics)
				else
					local layerName = GetFStringChatTranslationLayerName()
					local layerData = getChatTranslationLayerData(layerName)

					local success = setUpChatTranslationIxpDefaults(layerData)

					if success and layerData.ChatTranslationEnabled then
						CreateChatTranslationOptionsWithChatLanguageSwitcher(this, SETTINGS_MENU_LAYOUT_ORDER, reportSettingsChangeForAnalytics)
					end
				end
			end
		end

		if staticFeedbackEntryPointChecksPassed() then
			createFeedbackModeOptions()
		end
	end
	return this
end

----------- Page Instantiation --------------

PageInstance = Initialize()

return PageInstance
