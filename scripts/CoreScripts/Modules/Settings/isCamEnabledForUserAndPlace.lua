local AvatarChatService = game:GetService("AvatarChatService")
local AppStorageService = game:GetService("AppStorageService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local VideoCaptureService = game:GetService("VideoCaptureService")
local Cryo = require(CorePackages.Cryo)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local IXPService = game:GetService("IXPService")
local MemStorageService = game:GetService("MemStorageService")

local GetFFlagAvatarChatServiceEnabled = require(RobloxGui.Modules.Flags.GetFFlagAvatarChatServiceEnabled)
local getFFlagEnableAlwaysAvailableCamera = require(RobloxGui.Modules.Flags.getFFlagEnableAlwaysAvailableCamera)
local getFFlagUseCameraDevicesListener = require(RobloxGui.Modules.Flags.getFFlagUseCameraDevicesListener)
local cameraDevicesHelper = require(RobloxGui.Modules.Settings.cameraDevicesHelper)

local TrackerMenu = require(RobloxGui.Modules.Tracker.TrackerMenu)
local TrackerPromptType = require(RobloxGui.Modules.Tracker.TrackerPromptType)

local FFlagDisableCameraOnLowSpecDevices = game:DefineFastFlag("DisableCameraOnLowSpecDevices2", false)
local IXPLayer = game:DefineFastString("DisableCameraOnLowSpecDevicesIXPLayer", "AvatarChat.DisableOnLowSpecAndroid")
local IXPField = game:DefineFastString("DisableCameraOnLowSpecDevicesIXPField", "DisableOnAndroid")
local FFlagOnlyShowToastOnce = game:DefineFastFlag("OnlyShowToastOnce2", false)
local FFlagDebugAlwaysShowDisableCameraToast = game:DefineFastFlag("DebugAlwaysShowDisableCameraToast", false)
local FFlagOnlyShowToastOnceInLifetime = game:DefineFastFlag("OnlyShowToastOnceInLifetime2", false)
local hasKeyInGameEngine = game:GetEngineFeature("DisableCameraToastShownStorageKey")
local ShownDisableCameraToastKey = "DisableCameraToastShown"

local function ShouldCheckDeviceSpecs(): boolean
	if FFlagDisableCameraOnLowSpecDevices then
		-- get ixp layer data
		local success, IXPData = pcall(function()
			return IXPService:GetUserLayerVariables(IXPLayer)
		end)

		-- bail if we aren't able to communicate with IXP service
		if not success or not IXPData or IXPData[IXPField] == nil then
			return false
		end

		IXPService:LogUserLayerExposure(IXPLayer)
		return IXPData[IXPField]
	end
	return false
end

local isCamEnabledForUserAndPlace = function(): boolean
	-- Disable the avatar chat feature check if executing in a test environment
	if not GetFFlagAvatarChatServiceEnabled() or _G.__TESTEZ_RUNNING_TEST__ then
		return false
	end
	local ok: boolean, clientFeatures: number = pcall(AvatarChatService.GetClientFeaturesAsync, AvatarChatService)

	if not ok then
		warn("Unable to get Client Features from AvatarChatService")
		return false
	end

	local placeCamEnabled = AvatarChatService:IsEnabled(clientFeatures, Enum.AvatarChatServiceFeature.PlaceVideo)
	local userCamEnabled = AvatarChatService:IsEnabled(clientFeatures, Enum.AvatarChatServiceFeature.UserVideo)
	local userCamEligible = AvatarChatService:IsEnabled(clientFeatures, Enum.AvatarChatServiceFeature.UserVideoEligible)

	if FFlagDisableCameraOnLowSpecDevices and placeCamEnabled and userCamEnabled and userCamEligible then
		local deviceMeetsCameraPerformanceRequirements = AvatarChatService:deviceMeetsRequirementsForFeature(Enum.DeviceFeatureType.DeviceCapture)
	
		if not deviceMeetsCameraPerformanceRequirements and ShouldCheckDeviceSpecs() then
			if FFlagOnlyShowToastOnceInLifetime and hasKeyInGameEngine then
				local success, shownToastOnce = pcall(function()
					return AppStorageService:GetItem(ShownDisableCameraToastKey)
				end)
	
				local NeedsToShowCameraToast = not success or not (shownToastOnce == "true")
					or FFlagDebugAlwaysShowDisableCameraToast
				if NeedsToShowCameraToast then
					TrackerMenu:showPrompt(TrackerPromptType.CameraUnavailable)
					pcall(function()
						AppStorageService:SetItem(ShownDisableCameraToastKey, "true")
						AppStorageService:Flush()
					end)
				end
			elseif FFlagOnlyShowToastOnce then
				local NeedsToShowCameraToast = not (MemStorageService:GetItem(ShownDisableCameraToastKey) == "true")
					or FFlagDebugAlwaysShowDisableCameraToast
				if NeedsToShowCameraToast then
					TrackerMenu:showPrompt(TrackerPromptType.CameraUnavailable)
					MemStorageService:SetItem(ShownDisableCameraToastKey, "true")
				end
			else
				TrackerMenu:showPrompt(TrackerPromptType.CameraUnavailable)
			end
			return false
		end
	end

	if getFFlagEnableAlwaysAvailableCamera() then
		-- If user does not have a eligible camera device, cam cannot be enabled
		local cameraDevices
		if getFFlagUseCameraDevicesListener() then
			cameraDevices = cameraDevicesHelper.GetDevices()
		else
			cameraDevices = VideoCaptureService:GetCameraDevices()
		end
		local eligibleCameraDeviceConnected = not Cryo.isEmpty(cameraDevices)
		return placeCamEnabled and userCamEligible and userCamEnabled and eligibleCameraDeviceConnected
	end

	return placeCamEnabled and userCamEligible and userCamEnabled
end

return isCamEnabledForUserAndPlace
