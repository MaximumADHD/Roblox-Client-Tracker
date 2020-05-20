local FFlagVersionControlServiceScriptCollabEnabledByDefault =
	settings():GetFFlag("VersionControlServiceScriptCollabEnabledByDefault")

local GameOptionsController = {}
GameOptionsController.__index = GameOptionsController

function GameOptionsController.new()
	local self = {}

	return setmetatable(self, GameOptionsController)
end

function GameOptionsController:getScriptCollaborationEnabled(game)
	local StudioData = game:GetService("StudioData")

	if FFlagVersionControlServiceScriptCollabEnabledByDefault then
		return StudioData.EnableScriptCollabByDefaultOnLoad
	else
		return StudioData.EnableScriptCollabOnLoad
	end
end

function GameOptionsController:setScriptCollaborationEnabled(game, enabled)
	local StudioData = game:GetService("StudioData")

	if FFlagVersionControlServiceScriptCollabEnabledByDefault then
		StudioData.EnableScriptCollabByDefaultOnLoad = enabled
	else
		StudioData.EnableScriptCollabOnLoad = enabled
	end
end

function GameOptionsController:getScriptVersionHistoryEnabled(game)
	local StudioData = game:GetService("StudioData")

	return StudioData.EnableScriptCollabVersionHistoryOnLoad
end

function GameOptionsController:setScriptVersionHistoryEnabled(game, enabled)
	local StudioData = game:GetService("StudioData")

	StudioData.EnableScriptCollabVersionHistoryOnLoad = enabled
end

return GameOptionsController