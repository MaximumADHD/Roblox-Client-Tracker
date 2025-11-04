local VRService = game:GetService("VRService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local SettingsUtil = require(RobloxGui.Modules.Settings.Utility)

local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)

local PlayerList = script.Parent

local FFlagPlayerListPersistVisibility = require(PlayerList.Flags.FFlagPlayerListPersistVisibility)
local FStringPlayerListOverrideType = require(PlayerList.Flags.FStringPlayerListOverrideType)
local FFlagEnableMobilePlayerListOnConsole = PlayerListPackage.Flags.FFlagEnableMobilePlayerListOnConsole
local FFlagPlayerListUseMobileOnSmallDisplay = PlayerListPackage.Flags.FFlagPlayerListUseMobileOnSmallDisplay

local function isSmallTouchScreen()
	if _G.__TESTEZ_RUNNING_TEST__ then
		return false
	end
	local isSmallDisplaySize = if FFlagPlayerListUseMobileOnSmallDisplay then GuiService.ViewportDisplaySize == Enum.DisplaySize.Small else false
	local isLargeDisplaySize = if FFlagEnableMobilePlayerListOnConsole then GuiService.ViewportDisplaySize == Enum.DisplaySize.Large else false
	local isTouchOrGamepad = if FFlagEnableMobilePlayerListOnConsole or FFlagPlayerListUseMobileOnSmallDisplay then UserInputService.PreferredInput == Enum.PreferredInput.Touch or UserInputService.PreferredInput == Enum.PreferredInput.Gamepad else false
	return SettingsUtil:IsSmallTouchScreen() 
		or (FFlagEnableMobilePlayerListOnConsole and isLargeDisplaySize and isTouchOrGamepad) 
		or (FFlagPlayerListUseMobileOnSmallDisplay and isSmallDisplaySize and isTouchOrGamepad) 
		or (FStringPlayerListOverrideType == "mobile")
end

return function()
	return not isSmallTouchScreen() 
		and not VRService.VREnabled 
		and (FFlagEnableMobilePlayerListOnConsole or not TenFootInterface:IsEnabled()) 
		and (if FFlagPlayerListPersistVisibility then UserSettings().GameSettings.PlayerListVisible else true)
end
