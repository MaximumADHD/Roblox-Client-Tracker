local Plugin = script.Parent.Parent.Parent.Parent

local CommunicationController = {}
CommunicationController.__index = CommunicationController

function CommunicationController.new(networking)
	local self = {}

	self.__networking = networking

	return setmetatable(self, CommunicationController)
end

function CommunicationController:voiceUniverseSettingsPATCH(gameId, settings)
	local networking = self.__networking
	return networking:patch("voice", "/v1/settings/universe/" .. gameId, { Body = settings })
end

function CommunicationController:voiceUniverseSettingsGET(gameId)
	local networking = self.__networking
	return networking:get("voice", "/v1/settings/universe/" .. gameId)
end

function CommunicationController:voiceUserSettingsGET()
	local networking = self.__networking
	return networking:get("voice", "/v1/settings")
end

function CommunicationController:getAvatarChatEnabled()
	local response = self:voiceUserSettingsGET():await()

	return response.responseBody.isAvatarChatEnabled
end

function CommunicationController:getAvatarChatSettings(gameId)
	local response = self:voiceUniverseSettingsGET(gameId):await()

	return {
		audioEnabled = response.responseBody.isUniverseEnabledForVoice,
		videoEnabled = response.responseBody.isUniverseEnabledForVToC,
	}
end

function CommunicationController:setAvatarChatSettings(gameId, audioEnabled, videoEnabled)
	local settings = {}

	if audioEnabled ~= nil then
		settings["optIn"] = audioEnabled
	end

	if videoEnabled ~= nil then
		settings["optInVToC"] = videoEnabled
	end

	self:voiceUniverseSettingsPATCH(gameId, settings):await()
end

return CommunicationController
