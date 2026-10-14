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
local isReskinConsoleMobileRoute = PlayerListPackage.Common.isReskinConsoleMobileRoute
local FFlagPlayerListUseMobileOnSmallDisplay = PlayerListPackage.Flags.FFlagPlayerListUseMobileOnSmallDisplay
local FFlagLuaSupportMicroGamepadPreferredInput =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagLuaSupportMicroGamepadPreferredInput

local function isTouchOrGamepad(preferredInput: Enum.PreferredInput): boolean
	return preferredInput == Enum.PreferredInput.Touch
		or preferredInput == Enum.PreferredInput.Gamepad
		or (
			FFlagLuaSupportMicroGamepadPreferredInput
			and preferredInput == Enum.PreferredInput.MicroGamepad
		)
end

-- Same reskin console route as PlayerListController, including PC gamepad when
-- FFlagEnableMobilePlayerListOnGamepad is on. FFlagPlayerListReskin keeps this
-- off the legacy player list.
local function isCurrentReskinConsoleMobileRoute(preferredInput: Enum.PreferredInput): boolean
	return isReskinConsoleMobileRoute({
		displaySize = GuiService.ViewportDisplaySize,
		preferredInput = preferredInput,
	})
end

local function isSmallTouchScreen(preferredInput: Enum.PreferredInput): boolean
	if isCurrentReskinConsoleMobileRoute(preferredInput) then
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
		then isTouchOrGamepad(preferredInput)
		else false
	return SettingsUtil:IsSmallTouchScreen()
		or (FFlagEnableMobilePlayerListOnConsole and isLargeDisplaySize and isTouchOrGamepadForFallback)
		or (FFlagPlayerListUseMobileOnSmallDisplay and isSmallDisplaySize and isTouchOrGamepadForFallback)
		or (FStringPlayerListOverrideType == "mobile")
end

return function(preferredInput: Enum.PreferredInput?)
	local input = if preferredInput ~= nil then preferredInput else UserInputService.PreferredInput
	return not isSmallTouchScreen(input)
		and not VRService.VREnabled
		and (
			isCurrentReskinConsoleMobileRoute(input)
			or FFlagEnableMobilePlayerListOnConsole
			or not TenFootInterface:IsEnabled()
		)
		and (if FFlagPlayerListPersistVisibility then UserSettings().GameSettings.PlayerListVisible else true)
end
