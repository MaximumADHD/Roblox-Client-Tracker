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
local FFlagPlayerListReskin = PlayerListPackage.Flags.FFlagPlayerListReskin

local function isTouchOrGamepad(): boolean
	return UserInputService.PreferredInput == Enum.PreferredInput.Touch
		or UserInputService.PreferredInput == Enum.PreferredInput.Gamepad
end

-- Reskin console-mobile routing kicks in only when the device would otherwise be a
-- TenFoot user — Large display AND touch/gamepad input. Display size alone can
-- misclassify a desktop on a very large monitor (APPEXP-3482 established this on the
-- Small side; the Large side needs the symmetric check). Uses ViewportDisplaySize
-- rather than TenFootInterface — the latter is being retired across PlayerList (see
-- APPEXP-3354). Also requires FFlagEnableMobilePlayerListOnConsole so a PC user
-- with a gamepad is not treated as console.
local function isReskinConsoleMobileRoute(): boolean
	return FFlagPlayerListReskin
		and FFlagEnableMobilePlayerListOnConsole
		and GuiService.ViewportDisplaySize == Enum.DisplaySize.Large
		and isTouchOrGamepad()
end

local function isSmallTouchScreen()
	if _G.__TESTEZ_RUNNING_TEST__ then
		return false
	end
	if isReskinConsoleMobileRoute() then
		return true
	end
	local isSmallDisplaySize = if FFlagPlayerListUseMobileOnSmallDisplay
		then GuiService.ViewportDisplaySize == Enum.DisplaySize.Small
		else false
	local isLargeDisplaySize = if FFlagEnableMobilePlayerListOnConsole
		then GuiService.ViewportDisplaySize == Enum.DisplaySize.Large
		else false
	local isTouchOrGamepadForFallback = if FFlagEnableMobilePlayerListOnConsole
			or FFlagPlayerListUseMobileOnSmallDisplay
		then isTouchOrGamepad()
		else false
	return SettingsUtil:IsSmallTouchScreen()
		or (FFlagEnableMobilePlayerListOnConsole and isLargeDisplaySize and isTouchOrGamepadForFallback)
		or (FFlagPlayerListUseMobileOnSmallDisplay and isSmallDisplaySize and isTouchOrGamepadForFallback)
		or (FStringPlayerListOverrideType == "mobile")
end

return function()
	return not isSmallTouchScreen()
		and not VRService.VREnabled
		and (isReskinConsoleMobileRoute() or FFlagEnableMobilePlayerListOnConsole or not TenFootInterface:IsEnabled())
		and (if FFlagPlayerListPersistVisibility then UserSettings().GameSettings.PlayerListVisible else true)
end
