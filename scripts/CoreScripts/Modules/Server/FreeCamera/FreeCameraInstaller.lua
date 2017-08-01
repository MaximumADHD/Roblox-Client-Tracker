--	// FileName: FreeCameraInstaller.lua
--	// Written by: TheGamer101
--	// Description: Installs the free camera ability for members of the Roblox Admin Group.
--  This is used by the marketing team to record video in game.
--  The code is kept on the server and only replicated to the client of members of the Roblox admin group
--  to minimize security problems.

local FREECAM_GROUP_IDS = {1200769, 3013794} -- Admin Group, Group Requested by RobloxsaurusRex for contractors who need this power.
local PlayerService = game:GetService("Players")

local function LoadLocalScript(name, parent)
	local originalModule = script.Parent:WaitForChild(name)
	local script = Instance.new("LocalScript")
	script.Name = name
	script.Source = originalModule.Source
	script.Parent = parent
	return script
end

local function LoadModule(name, parent)
	local originalModule = script.Parent:WaitForChild(name)
	local module = Instance.new("ModuleScript")
	module.Name = name
	module.Source = originalModule.Source
	module.Parent = parent
	return module
end

local Install = function ()

	local function AddFreeCamera(player)
		local playerGui = player:WaitForChild("PlayerGui")
		local freeCameraScreenGui = Instance.new("ScreenGui")
		freeCameraScreenGui.Name = "FreeCamera"
		freeCameraScreenGui.ResetOnSpawn = false
		freeCameraScreenGui.DisplayOrder = 10
		freeCameraScreenGui.Enabled = false
		freeCameraScreenGui.Parent = playerGui
		local freeCamera = LoadLocalScript("FreeCamera", freeCameraScreenGui)
		LoadModule("Maid", freeCamera)
		LoadModule("Spring", freeCamera)
	end

	local function PlayerAdded(player)
		if player.UserId > 0 then
			local inGroup = false
			for i = 1, #FREECAM_GROUP_IDS do
				pcall(function()
					inGroup = player:IsInGroup(FREECAM_GROUP_IDS[i])
				end)
				if inGroup then
					break
				end
			end
			if inGroup then
				AddFreeCamera(player)
			end
		end
	end
	PlayerService.PlayerAdded:connect(PlayerAdded)
	local players = PlayerService:GetPlayers()
	for i = 1, #players do
		PlayerAdded(players[i])
	end

end

return Install
