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

function GameOptionsController:getScriptCollaborationEnabled(game)
	local StudioData = game:GetService("StudioData")

	return StudioData.EnableScriptCollabByDefaultOnLoad
end

function GameOptionsController:setScriptCollaborationEnabled(game, enabled)
	local StudioData = game:GetService("StudioData")

	StudioData.EnableScriptCollabByDefaultOnLoad = enabled
end

function GameOptionsController:shutdownAllServers(gameId)
	self:universesShutdownV2POST(gameId):await()
end

return GameOptionsController