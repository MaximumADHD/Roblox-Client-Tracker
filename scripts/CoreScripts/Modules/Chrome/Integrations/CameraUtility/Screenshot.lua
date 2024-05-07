local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ScreenshotsApp = require(RobloxGui.Modules.Screenshots.ScreenshotsApp)
local ChromeService = require(script.Parent.Parent.Parent.Service)
local ChromeAnalytics = require(script.Parent.Parent.Parent.Analytics.ChromeAnalytics)
local CommonIcon = require(script.Parent.Parent.CommonIcon)
local GetFFlagEnableScreenshotUtility =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableScreenshotUtility

local TARGET = "mobile"
local EVENT_TYPE = "buttonClick"
local CONTEXT = "screenshots"

local sound
local hotkeyCodes
if GetFFlagEnableScreenshotUtility() then
	sound = ScreenshotsApp.createShutterSound()

	-- TODO reenable hotkey tooltip: https://roblox.atlassian.net/browse/APPEXP-1549
	hotkeyCodes = nil
	--[[ 
	local isOSX = UserInputService:GetPlatform() == Enum.Platform.OSX
	hotkeyCodes = if isOSX
		then { Enum.KeyCode.LeftSuper, Enum.KeyCode.LeftShift, Enum.KeyCode.S }
		else { Enum.KeyCode.LeftControl, Enum.KeyCode.LeftShift, Enum.KeyCode.S }
	]]
end

return GetFFlagEnableScreenshotUtility()
		and ChromeService:register({
			initialAvailability = ChromeService.AvailabilitySignal.Available,
			id = "screenshot",
			label = "CoreScripts.InGameMenu.Controls.Screenshot",
			hotkeyCodes = hotkeyCodes,
			activated = function(self)
				-- TODO add unit testing: https://roblox.atlassian.net/browse/APPEXP-1519
				ChromeAnalytics.default:onCaptureTaken(TARGET, EVENT_TYPE, CONTEXT)
				if sound then
					sound:Play()
				end
				ScreenshotsApp.takeCapture()
			end,
			components = {
				Icon = function(props)
					return CommonIcon("icons/controls/screenshot")
				end,
			},
		})
	or nil
