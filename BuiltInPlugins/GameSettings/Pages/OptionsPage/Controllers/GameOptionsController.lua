local FFlagStudioTeamCreateStreamingEnabled = game:getFastFlag("StudioTeamCreateStreamingEnabled")
local FFlagCollabEditingWarnBothWays2 = game:GetFastFlag("CollabEditingWarnBothWays2")

local isTeamCreateEnabled

if FFlagCollabEditingWarnBothWays2 then
    local Plugin = script.Parent.Parent.Parent.Parent
    isTeamCreateEnabled = require(Plugin.Src.Util.GameSettingsUtilities).isTeamCreateEnabled
end

local GameOptionsController = {}
GameOptionsController.__index = GameOptionsController

function GameOptionsController.new(networking)
	local self = {}

	self.__networking = networking

	return setmetatable(self, GameOptionsController)
end

function GameOptionsController:universesShutdownV2POST(gameId)
	local networking = self.__networking

	--[[
		An empty body is needed because the endpoint requires a "Content-Length" header,
		but it can't explicitly provide it here because of a blacklist for requestInternal.
		An empty body is used to automatically get a Content-Length header added to the request.
	]]
	return networking:post("develop", "/v2/universes/"..gameId.."/shutdown", {
		Body = {}
	})
end

function GameOptionsController:voiceUniverseSettingsPOST(gameId, optIn)
	local networking = self.__networking

	return networking:post("voice", "/v1/settings/universe/" .. gameId, {
        Body = {
			optIn = optIn,
		},
	})
end

function GameOptionsController:teamCreateEnabledGET(gameId)
    assert(FFlagStudioTeamCreateStreamingEnabled)
    
    local networking = self.__networking
    return networking:get("api", "/universes/" .. gameId .. "/cloudeditenabled")
end

function GameOptionsController:voiceUniverseSettingsGET(gameId)
    local networking = self.__networking
    return networking:get("voice", "/v1/settings/universe/" .. gameId)
end

function GameOptionsController:getScriptCollaborationEnabledOnServer(game)
    assert(FFlagCollabEditingWarnBothWays2)
    
    if not isTeamCreateEnabled() then
        return false
    end
    
    local versionControlService = game:GetService("VersionControlService")

    return versionControlService.ScriptCollabEnabled
end

function GameOptionsController:getScriptCollaborationEnabled(game)
    local StudioData = game:GetService("StudioData")

    return StudioData.EnableScriptCollabByDefaultOnLoad
end

function GameOptionsController:setScriptCollaborationEnabled(game, enabled)
    local StudioData = game:GetService("StudioData")

    StudioData.EnableScriptCollabByDefaultOnLoad = enabled
end

function GameOptionsController:getTeamCreateStreamingEnabled(game)
    assert(FFlagStudioTeamCreateStreamingEnabled)
    
    local StudioData = game:GetService("StudioData")
    return StudioData.EnableTeamCreateStreamingOnLoad
end

function GameOptionsController:setTeamCreateStreamingEnabled(game, enabled)
    assert(FFlagStudioTeamCreateStreamingEnabled)
    
    local StudioData = game:GetService("StudioData")
    StudioData.EnableTeamCreateStreamingOnLoad = enabled
end

function GameOptionsController:getTeamCreateEnabled(gameId)
    assert(FFlagStudioTeamCreateStreamingEnabled)
    
    local response = self:teamCreateEnabledGET(gameId):await()
    return response.responseBody.enabled
end

function GameOptionsController:shutdownAllServers(gameId)
	self:universesShutdownV2POST(gameId):await()
end

function GameOptionsController:getVoiceChatEnabled(gameId)
    local response = self:voiceUniverseSettingsGET(gameId):await()
	return response.responseBody.isUniverseEnabledForVoice
end

function GameOptionsController:setVoiceChatEnabled(gameId, optIn)
    self:voiceUniverseSettingsPOST(gameId, optIn):await()
end

return GameOptionsController