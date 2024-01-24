local AvatarChatService = game:GetService("AvatarChatService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local VideoCaptureService = game:GetService("VideoCaptureService")
local Cryo = require(CorePackages.Cryo)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local GetFFlagAvatarChatServiceEnabled = require(RobloxGui.Modules.Flags.GetFFlagAvatarChatServiceEnabled)
local getFFlagEnableAlwaysAvailableCamera = require(RobloxGui.Modules.Flags.getFFlagEnableAlwaysAvailableCamera)
local getFFlagUseCameraDevicesListener = require(RobloxGui.Modules.Flags.getFFlagUseCameraDevicesListener)
local cameraDevicesHelper = require(RobloxGui.Modules.Settings.cameraDevicesHelper)

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
