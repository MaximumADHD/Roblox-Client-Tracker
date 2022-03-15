local Modules = game:GetService("CoreGui").RobloxGui.Modules
local VRService = game:GetService("VRService")
local GetFFlagFixDevConsoleInitialization = require(Modules.Flags.GetFFlagFixDevConsoleInitialization)

local Flags = script.Parent
local GetFFlagInGameMenuCloseReportAbuseMenuOnEscape = require(Flags.GetFFlagInGameMenuCloseReportAbuseMenuOnEscape)
local GetFFlagFixDisplayOptionsReducer = require(Flags.GetFFlagFixDisplayOptionsReducer)

local CorePackages = game:GetService("CorePackages")
local GetFFlagUIBloxEnableGamepadKeyCodeSupportForKeyLabel =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxEnableGamepadKeyCodeSupportForKeyLabel)

game:DefineFastFlag("NewInGameMenuController2", false)

local FFlagEnableNewVrSystem = require(Modules.Flags.FFlagEnableNewVrSystem)

return function()
	if FFlagEnableNewVrSystem and VRService.VREnabled then
		-- in VR, gamepad controls is the only way to interact with the IGM
		return true
	end 

	return game:GetFastFlag("NewInGameMenuController2")
		and GetFFlagInGameMenuCloseReportAbuseMenuOnEscape()
		and GetFFlagFixDevConsoleInitialization()
		and GetFFlagFixDisplayOptionsReducer()
		and GetFFlagUIBloxEnableGamepadKeyCodeSupportForKeyLabel()
		and game:GetEngineFeature("VirtualInputEventsProcessed")
end
