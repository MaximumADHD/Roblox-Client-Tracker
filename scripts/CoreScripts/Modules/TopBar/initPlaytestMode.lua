local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local getPlaytestModeStore = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon.GetPlaytestModeStore)
local PlayerPermissionsModule = require(RobloxGui.Modules.PlayerPermissionsModule)

local function initPlaytestMode()
	local playtestModeStore = getPlaytestModeStore(false)

	task.spawn(function()
		playtestModeStore.setHasEditAccess(PlayerPermissionsModule.CanPlayerManagePlaceAsync(Players.LocalPlayer))
	end)
end

return initPlaytestMode
