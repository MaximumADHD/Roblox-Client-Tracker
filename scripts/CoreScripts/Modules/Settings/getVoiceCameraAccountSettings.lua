--[[
	This function checks the voice endpoints for if a universe & place has voice and camera enabled.
	As well as a user's settings to check if they have enabled voice and camera on their account.

	All of these are prerequisites for Avatar Chat.
]]
local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")

local GetShowAgeVerificationOverlay = require(CorePackages.AppTempCommon.VoiceChat.Requests.GetShowAgeVerificationOverlay)
local FFlagDebugMockCameraEndpoints = game:DefineFastFlag("DebugMockCameraEndpoints", false)

local function getRequest(url, _)
	local success, result = pcall(function()
		local request = HttpRbxApiService:GetAsyncFullUrl(url,
			Enum.ThrottlingPriority.Default, Enum.HttpRequestType.Players)
		return HttpService:JSONDecode(request)
	end)
	return success and result
end

return function()
	-- Call the voice endpoint that contains all the data we need.
	local result = GetShowAgeVerificationOverlay(getRequest, tostring(game.GameId), tostring(game.PlaceId))

	-- If fetching fails, default to disabled.
	if not result then
		return {
			isVoiceEnabledUserSettings = false,
			isCameraEnabledUserSettings = false,
		}
	end

	local userSettings = result.voiceSettings
	local universePlaceSettings = result.universePlaceVoiceEnabledSettings

	local isVoiceEnabled = universePlaceSettings and userSettings
		and userSettings.isVoiceEnabled
		and universePlaceSettings.isPlaceEnabledForVoice
		and universePlaceSettings.isUniverseEnabledForVoice

	local isCameraEnabled = universePlaceSettings and userSettings
		and userSettings.isAvatarVideoEnabled
		and universePlaceSettings.isPlaceEnabledForAvatarVideo
		and universePlaceSettings.isUniverseEnabledForAvatarVideo

	-- Debug flag for testing while endpoints are under construction. Remove when endpoint is
	-- finished on the backend.
	if FFlagDebugMockCameraEndpoints then
		isVoiceEnabled = true
		isCameraEnabled = true
	end

	return {
		isVoiceEnabledUserSettings = isVoiceEnabled,
		isCameraEnabledUserSettings = isCameraEnabled,
	}
end
