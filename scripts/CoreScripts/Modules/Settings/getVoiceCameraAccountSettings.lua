--[[
	This function checks the voice endpoints for if a universe & place has voice and camera enabled.
	As well as a user's settings to check if they have enabled voice and camera on their account.

	All of these are prerequisites for Avatar Chat.
]]
local FacialAnimationStreamingService = game:GetService("FacialAnimationStreamingServiceV2")
local Players = game:GetService("Players")

local cachedResults

return function()
	if cachedResults then
		return cachedResults
	end

	if not game:IsLoaded() then
		game.Loaded:Wait()
	end

	if not Players.LocalPlayer then
		return {
			isVoiceEnabledUserSettings = false,
			isCameraEnabledUserSettings = false,
		}
	end
	local player = Players.LocalPlayer
	assert(player, "")

	local ok, playerState =
		pcall(FacialAnimationStreamingService.ResolveStateForUser, FacialAnimationStreamingService, player.UserId)

	if not ok then
		return {
			isVoiceEnabledUserSettings = false,
			isCameraEnabledUserSettings = false,
		}
	end

	local serviceState = FacialAnimationStreamingService.ServiceState
	local isCameraEnabled = FacialAnimationStreamingService:IsVideoEnabled(playerState) and FacialAnimationStreamingService:IsVideoEnabled(serviceState)
	local isVoiceEnabled = FacialAnimationStreamingService:IsAudioEnabled(playerState) and FacialAnimationStreamingService:IsAudioEnabled(serviceState)

	cachedResults = {
		isVoiceEnabledUserSettings = isVoiceEnabled,
		isCameraEnabledUserSettings = isCameraEnabled,
	}

	return cachedResults
end
