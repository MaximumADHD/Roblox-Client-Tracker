local AvatarChatService = game:GetService("AvatarChatService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local VideoCaptureService = game:GetService("VideoCaptureService")
local Cryo = require(CorePackages.Cryo)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local GetFFlagAvatarChatServiceEnabled = require(RobloxGui.Modules.Flags.GetFFlagAvatarChatServiceEnabled)
local getFFlagEnableAlwaysAvailableCamera = require(RobloxGui.Modules.Flags.getFFlagEnableAlwaysAvailableCamera)

local isCamEnabledForUserAndPlace = function(): boolean
	if not GetFFlagAvatarChatServiceEnabled() then
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
		local cameraDevices = VideoCaptureService:GetCameraDevices()
		local eligibleCameraDeviceConnected = not Cryo.isEmpty(cameraDevices)
		return placeCamEnabled and userCamEligible and userCamEnabled and eligibleCameraDeviceConnected
	end

	return placeCamEnabled and userCamEligible and userCamEnabled
end

return isCamEnabledForUserAndPlace
