local VRService = game:GetService("VRService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local SettingsUtil = require(RobloxGui.Modules.Settings.Utility)

local PlayerList = script.Parent

local FFlagPlayerListPersistVisibility = require(PlayerList.Flags.FFlagPlayerListPersistVisibility)

local function isSmallTouchScreen()
	if _G.__TESTEZ_RUNNING_TEST__ then
		return false
	end
	return SettingsUtil:IsSmallTouchScreen()
end

return function()
	return not isSmallTouchScreen() 
		and not VRService.VREnabled 
		and not TenFootInterface:IsEnabled() 
		and (if FFlagPlayerListPersistVisibility then UserSettings().GameSettings.PlayerListVisible else true)
end
