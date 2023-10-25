local AvatarChatService = game:GetService("AvatarChatService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetFFlagAvatarChatServiceEnabled = require(RobloxGui.Modules.Flags.GetFFlagAvatarChatServiceEnabled)

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

	return placeCamEnabled and userCamEligible and userCamEnabled
end

return isCamEnabledForUserAndPlace
