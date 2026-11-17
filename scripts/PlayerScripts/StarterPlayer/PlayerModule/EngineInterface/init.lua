--!strict
--[[
	EngineInterface - Owns the connections to engine APIs used by PlayerModule and mirrors engine state into the shared
	data, so other modules read from data instead of connecting to engine signals directly.
-- ]]

local Players = game:GetService("Players")

local CommonUtils = require(script.Parent:WaitForChild("CommonUtils"))

local Types = require(script.Parent.Types)

export type EngineInterfaceType = {
	update: (data: Types.PlayerModuleInternalData) -> (),
	cleanDirty: (data: Types.PlayerModuleInternalData) -> (),
}

local EngineInterface: EngineInterfaceType = {} :: EngineInterfaceType

function EngineInterface.update(data)
	local engineInterfaceData = data.engineInterface

	local player = Players.LocalPlayer
	local character = if player then player.Character else nil
	local humanoid = if character then character:FindFirstChildOfClass("Humanoid") else nil

	if
		player ~= engineInterfaceData.player
		or character ~= engineInterfaceData.character
		or humanoid ~= engineInterfaceData.humanoid
	then
		engineInterfaceData.player = player
		engineInterfaceData.character = character
		engineInterfaceData.humanoid = humanoid
		engineInterfaceData.characterChanged = true
	end
end

function EngineInterface.cleanDirty(data)
	local engineInterfaceData = data.engineInterface
	engineInterfaceData.characterChanged = false
end

return EngineInterface
