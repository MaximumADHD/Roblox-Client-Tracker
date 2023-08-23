local AvatarChatService = game:GetService("AvatarChatService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local getCamMicPermissions = require(RobloxGui.Modules.Settings.getCamMicPermissions)

local CorePackages = game:GetService("CorePackages")
local PermissionsProtocol = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol.default

local GetFFlagAvatarChatServiceEnabled = require(RobloxGui.Modules.Flags.GetFFlagAvatarChatServiceEnabled)

local FaceAnimatorService = game:GetService("FaceAnimatorService")

export type Permissions = {
	placeCamEnabled: boolean,
	placeMicEnabled: boolean,
	userCamEnabled: boolean,
	userCamEligible: boolean,
	userMicEnabled: boolean,
	userMicEligible: boolean,
}

local cachedPermissions: Permissions? = nil
local getPermissions = function(): Permissions
	if cachedPermissions ~= nil then
		return cachedPermissions
	end

	if not GetFFlagAvatarChatServiceEnabled() or _G.__TESTEZ_RUNNING_TEST__ then
		return {
			placeCamEnabled = false,
			placeMicEnabled = false,
			userCamEnabled = false,
			userCamEligible = false,
			userMicEnabled = false,
			userMicEligible = false,
		}
	end

	local ok: boolean, clientFeatures: number = pcall(AvatarChatService.GetClientFeaturesAsync, AvatarChatService)

	if not ok then
		warn("Unable to get Client Features from AvatarChatService")
		return {
			placeCamEnabled = false,
			placeMicEnabled = false,
			userCamEnabled = false,
			userCamEligible = false,
			userMicEnabled = false,
			userMicEligible = false,
		}
	end

	local permissions: Permissions = {
		placeMicEnabled = AvatarChatService:IsEnabled(clientFeatures, Enum.AvatarChatServiceFeature.PlaceAudio),
		userMicEnabled = AvatarChatService:IsEnabled(clientFeatures, Enum.AvatarChatServiceFeature.UserAudio),
		userMicEligible = AvatarChatService:IsEnabled(clientFeatures, Enum.AvatarChatServiceFeature.UserAudioEligible),
		placeCamEnabled = AvatarChatService:IsEnabled(clientFeatures, Enum.AvatarChatServiceFeature.PlaceVideo),
		userCamEnabled = AvatarChatService:IsEnabled(clientFeatures, Enum.AvatarChatServiceFeature.UserVideo),
		userCamEligible = AvatarChatService:IsEnabled(clientFeatures, Enum.AvatarChatServiceFeature.UserVideoEligible),
	}
	cachedPermissions = permissions
	return permissions
end

local function toggleVideoAnimation()
	local callback: () -> () = function()
		if not FaceAnimatorService or not FaceAnimatorService:IsStarted() then
			return
		end

		FaceAnimatorService.VideoAnimationEnabled = not FaceAnimatorService.VideoAnimationEnabled
	end

	getCamMicPermissions(callback, { PermissionsProtocol.Permissions.CAMERA_ACCESS :: string })
end

local function getTrackerMode(): Enum.TrackerMode
	if FaceAnimatorService.AudioAnimationEnabled and not FaceAnimatorService.VideoAnimationEnabled then
		return Enum.TrackerMode.Audio
	elseif
		not FaceAnimatorService.AudioAnimationEnabled
		and FaceAnimatorService.VideoAnimationEnabled
		and FaceAnimatorService:IsStarted()
	then
		return Enum.TrackerMode.Video
	elseif
		FaceAnimatorService.AudioAnimationEnabled
		and FaceAnimatorService.VideoAnimationEnabled
		and FaceAnimatorService:IsStarted()
	then
		return Enum.TrackerMode.AudioVideo
	else
		return Enum.TrackerMode.None
	end
end

local function isCameraOn(): boolean
	local trackerMode = getTrackerMode()
	return trackerMode == Enum.TrackerMode.AudioVideo or trackerMode == Enum.TrackerMode.Video
end

return {
	getPermissions = getPermissions,
	toggleVideoAnimation = toggleVideoAnimation,
	getTrackerMode = getTrackerMode,
	isCameraOn = isCameraOn,
}
