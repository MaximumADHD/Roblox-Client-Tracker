--	// FileName: FreeCameraInstaller.lua
--	// Written by: TheGamer101
--	// Description: Installs the free camera ability for members of the Roblox Admin Group.
--  The code is kept on the server and only replicated to the client of members of the Roblox admin group
--  to minimize security problems.

-- Users in the following groups have global Freecam permissions:
local FREECAM_GROUP_IDS = {
	1200769,
	3013794,
	4358041,
}

local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local freeCameraDevelopersFlagSuccess, freeCameraDevelopersFlagValue = pcall(function() return settings():GetFFlag("FreeCameraForDevelopers") end)
local freeCameraDevelopersFlag = freeCameraDevelopersFlagSuccess and freeCameraDevelopersFlagValue

local function Install()
	local function AddFreeCamera(player)
		local playerGui = player:WaitForChild("PlayerGui")
		local originalModule = script.Parent:WaitForChild("FreeCamera")
		local script = Instance.new("LocalScript")
		script.Name = "FreeCamera"
		script.Source = originalModule.Source
		script.Parent = playerGui
	end

	local function ShouldAddFreeCam(player)
		if player.UserId <= 0 then
			return false
		end

		if freeCameraDevelopersFlag then
			if RunService:IsStudio() then
				return true
			end

			local success, result = pcall(function()
				local url = string.format("/users/%d/canmanage/%d", player.UserId, game.PlaceId)
				-- API returns: {"Success":BOOLEAN,"CanManage":BOOLEAN}
				local response = HttpRbxApiService:GetAsync(url, Enum.ThrottlingPriority.Default, Enum.HttpRequestType.Default, true)
				return HttpService:JSONDecode(response)
			end)

			if success and result.CanManage == true then
				return true
			end
		end

		for _, groupId in ipairs(FREECAM_GROUP_IDS) do
			local success, inGroup = pcall(player.IsInGroup, player, groupId)
			if success and inGroup then
				return true
			end
		end

		return false
	end

	local function PlayerAdded(player)
		if ShouldAddFreeCam(player) then
			AddFreeCamera(player)
		end
	end

	Players.PlayerAdded:Connect(PlayerAdded)
	for _, player in ipairs(Players:GetPlayers()) do
		coroutine.wrap(PlayerAdded)(player) -- PlayerAdded may yield, so wrap it in a coroutine to avoid holding up the thread.
	end
end

return Install
