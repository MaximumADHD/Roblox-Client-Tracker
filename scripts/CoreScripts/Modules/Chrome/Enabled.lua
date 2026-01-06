local CorePackages = game:GetService("CorePackages")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local Chrome = script:FindFirstAncestor("Chrome")

local IsExperienceMenuABTestEnabled = require(Chrome.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(Chrome.Parent.ExperienceMenuABTestManager)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
local FFlagExperienceMenuGamepadExposureEnabled = SharedFlags.FFlagExperienceMenuGamepadExposureEnabled
local FFlagRemoveExperienceMenuABTestManager = SharedFlags.FFlagRemoveExperienceMenuABTestManager

game:DefineFastFlag("EnableInGameMenuChrome", false)
local FFlagDebugEnableChromeOnUnsupportedDevices = game:DefineFastFlag("DebugEnableChromeOnUnsupportedDevices", false)

local VRService = game:GetService("VRService")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled

return function()
	if FFlagDebugEnableChromeOnUnsupportedDevices then
		return true
	end

	if VRService.VREnabled then
		if isInExperienceUIVREnabled then
			return true
		else
			-- hard disable in VR until we support v2 menu and validated
			return false
		end
	end

	if not FFlagRemoveExperienceMenuABTestManager then
		if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:isChromeEnabled() then
			return true
		end
	end

	if FFlagExperienceMenuGamepadExposureEnabled then
		return true
	end

	if isTenFootInterface and not FFlagEnableConsoleExpControls then
		-- hard disable on Console so it does not show in Studio emulator
		return false
	end

	return game:GetFastFlag("EnableInGameMenuChrome")
end
