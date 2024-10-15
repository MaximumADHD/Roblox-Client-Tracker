local AvatarChatService = game:GetService("AvatarChatService")
local CoreGui = game:GetService("CoreGui")
local VideoCaptureService = game:GetService("VideoCaptureService")
local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetFFlagAvatarChatServiceEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarChatServiceEnabled
local getFFlagUseCameraDevicesListener = require(RobloxGui.Modules.Flags.getFFlagUseCameraDevicesListener)
local cameraDevicesHelper = require(RobloxGui.Modules.Settings.cameraDevicesHelper)

-- A camera only user is one that only has access to camera UI in the experience
local isCameraOnlyUser = function(): boolean
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
	local placeMicEnabled = AvatarChatService:IsEnabled(clientFeatures, Enum.AvatarChatServiceFeature.PlaceAudio)
	local userMicEnabled = AvatarChatService:IsEnabled(clientFeatures, Enum.AvatarChatServiceFeature.UserAudio)
	local userMicEligible = AvatarChatService:IsEnabled(clientFeatures, Enum.AvatarChatServiceFeature.UserAudioEligible)

	local cameraDevices
	if getFFlagUseCameraDevicesListener() then
		cameraDevices = cameraDevicesHelper.GetDevices()
	else
		cameraDevices = VideoCaptureService:GetCameraDevices()
	end

	-- If user has no eligible camera devices, then the user cannot be camera only
	if Cryo.isEmpty(cameraDevices) then
		return false
	end

	-- Couple enabled and eligible
	local userMicGranted = userMicEnabled and userMicEligible
	local userCamGranted = userCamEnabled and userCamEligible

	-- If camera is not enabled for the experience, then the user cannot be camera only
	if not placeCamEnabled then
		return false
	end

	-- If the experience has both camera and microphone enabled, and the user has microphone enabled,
	-- then the user will be seeing microphone UI and is therefore not a camera only user
	if placeMicEnabled and userMicGranted then
		return false
	end

	-- At this point, the user can only be a camera only user if they are camera enabled
	if userCamGranted then
		return true
	end

	-- Default case: return false
	return false
end

return isCameraOnlyUser
