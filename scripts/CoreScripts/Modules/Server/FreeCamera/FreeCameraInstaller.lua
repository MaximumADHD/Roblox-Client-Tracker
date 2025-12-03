--!nonstrict
--	// FileName: FreeCameraInstaller.lua
--	// Written by: TheGamer101
--	// Description: Installs Freecam for privileged users.
--  The code is kept on the server and only replicated to the client to minimize security problems.

local FFlagAllowLuobuFreecamGroup = game:DefineFastFlag("AllowLuobuFreecamGroup", false)
local FFlagUseGetCanManageAsync = game:DefineFastFlag("UseGetCanManageAsync", false) and game:GetEngineFeature("LuaGetCanManageAsync")

-- Users in the following groups have global Freecam permissions:
local FREECAM_GROUP_IDS = {
	4358041, -- Freecam
}

local LUOBU_FREECAM_GROUP_IDS = {
	7842878,
}

local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local PolicyService = game:GetService("PolicyService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")

local Url = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Url
local ServerUtil = require(RobloxGui.Modules.Server.ServerUtil)

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
		if ServerUtil.getFFlagServerCoreScriptSourceCode() then
			script.Source = ServerUtil.getSourceForServerScript(originalModule)
		else
			script.Source = originalModule.Source
		end
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

		if FFlagUseGetCanManageAsync then
			local success, result = pcall(player.GetCanManageAsync, player)

			if success and result then
				return true
			end
		else
			local success, result = pcall(function()
				local apiPath = "asset-permissions-api/v1/rcc/assets/check-permissions"
				local url = string.format(Url.APIS_URL..apiPath)

				local request = HttpService:JSONEncode(
					{
						requests = {
							{
								subject = {
									subjectType = "User",
									subjectId = player.UserId
								},
								action = "Edit", -- check to see if this player has edit permissions on this placeId
								assetId = game.PlaceId
							}
						}
					}
				)
				local response = HttpRbxApiService:PostAsyncFullUrl(url, request)
				return HttpService:JSONDecode(response)
			end)

			if success then
				result = result.results[1]
				if result.value and result.value.status == "HasPermission" then
					return true
				end
			end
		end

		for _, groupId in ipairs(FREECAM_GROUP_IDS) do
			local success, inGroup = pcall(player.IsInGroup, player, groupId)
			if success and inGroup then
				return true
			end
		end

		if FFlagAllowLuobuFreecamGroup and game:GetEngineFeature("LuobuModerationStatus") then
			if PolicyService.IsLuobuServer == Enum.TriStateBoolean.True then
				for _, groupId in ipairs(LUOBU_FREECAM_GROUP_IDS) do
					local success, inGroup = pcall(player.IsInGroup, player, groupId)
					if success and inGroup then
						return true
					end
				end
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
