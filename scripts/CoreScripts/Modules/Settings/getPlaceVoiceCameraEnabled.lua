-- Checks if the place supports voice and camera.
-- This is done by waiting until the game is loaded so that all service startup state has been replicated and
-- then checking the properties on them

local VoiceChatService = game:GetService("VoiceChatService")
local FacialAnimationStreamingService = game:GetService("FacialAnimationStreamingServiceV2")

export type PlaceSettings = {
	isVoiceEnabledPlaceSettings: boolean,
	isCameraEnabledPlaceSettings: boolean,
}

local function getPlaceVoiceCameraEnabled() : PlaceSettings
	-- Wait for state initialized on RCC
	if not game:IsLoaded() then
		game.Loaded:Wait()
	end

	return {
		isVoiceEnabledPlaceSettings = VoiceChatService.VoiceChatEnabledForUniverseOnRcc and VoiceChatService.VoiceChatEnabledForPlaceOnRcc,
		isCameraEnabledPlaceSettings = FacialAnimationStreamingService:IsVideoEnabled(FacialAnimationStreamingService.ServiceState),
	}
end

return getPlaceVoiceCameraEnabled
