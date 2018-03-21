--	// FileName: FreeCameraInstaller.lua
--	// Written by: TheGamer101
--	// Description: Installs the free camera ability for members of the Roblox Admin Group.
--  This is used by the marketing team to record video in game.
--  The code is kept on the server and only replicated to the client of members of the Roblox admin group
--  to minimize security problems.

local FREECAM_GROUP_IDS = {1200769, 3013794} -- Admin Group, Group Requested by RobloxsaurusRex for contractors who need this power.
local PlayerService = game:GetService("Players")
local HttpRbxApiService = game:GetService("HttpRbxApiService")

local freeCameraDevelopersFlagSuccess, freeCameraDevelopersFlagValue = pcall(function() return settings():GetFFlag("FreeCameraForDevelopers") end)
local freeCameraDevelopersFlag = (freeCameraDevelopersFlagSuccess and freeCameraDevelopersFlagValue)

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

	local function ShouldAddFreeCam(player)
		if freeCameraDevelopersFlag then
			local success, result = pcall(function()
				local url = string.format("/users/%d/canmanage/%d", player.UserId, game.PlaceId)
				return HttpRbxApiService:GetAsync(url, Enum.ThrottlingPriority.Default, Enum.HttpRequestType.Default, true)
			end)
			if success and type(result) == "string" then
				-- API returns: {"Success":BOOLEAN,"CanManage":BOOLEAN}
				-- Convert from JSON to a table
				-- pcall in case of invalid JSON
				success, result = pcall(function()
					return game:GetService('HttpService'):JSONDecode(result)
				end)
				if success and result.CanManage == true then
					return true
				end
			end
		end
		for i = 1, #FREECAM_GROUP_IDS do
			local success, inGroup = pcall(function()
				return player:IsInGroup(FREECAM_GROUP_IDS[i])
			end)
			if success and inGroup then
				return true
			end
		end
		return false
	end

	local function PlayerAdded(player)
		if player.UserId > 0 then
			if ShouldAddFreeCam(player) then
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
