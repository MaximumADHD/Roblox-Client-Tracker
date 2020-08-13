--	// FileName: FreeCameraInstaller.lua
--	// Written by: TheGamer101
--	// Description: Installs Freecam for privileged users.
--  The code is kept on the server and only replicated to the client to minimize security problems.

-- Users in the following groups have global Freecam permissions:
local FREECAM_GROUP_IDS = {
	1200769, -- Roblox Admins
	4358041, -- Freecam
}

local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local function Install()
	local function WaitForChildOfClass(parent, class)
		local child = parent:FindFirstChildOfClass(class)
		while not child or child.ClassName ~= class do
			child = parent.ChildAdded:Wait()
		end
		return child
	end

	local function AddFreeCamera(player)
		local playerGui = WaitForChildOfClass(player, "PlayerGui")
		local originalModule = script.Parent:WaitForChild("FreeCamera")

		-- Encapsulate the Freecam script in a LayerCollector to prevent destruction on respawn.
		local screenGui = Instance.new("ScreenGui")
		screenGui.Name = "Freecam"
		screenGui.ResetOnSpawn = false

		local script = Instance.new("LocalScript")
		script.Name = "FreecamScript"
		script.Source = originalModule.Source
		script.Parent = screenGui

		screenGui.Parent = playerGui
	end

	local function ShouldAddFreeCam(player)
		if RunService:IsStudio() then
			return true
		end
		if player.UserId <= 0 then
			return false
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
