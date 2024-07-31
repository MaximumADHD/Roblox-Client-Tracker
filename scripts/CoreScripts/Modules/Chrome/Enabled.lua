local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.Parent.ExperienceMenuABTestManager)

game:DefineFastFlag("EnableInGameMenuChrome", false)

local VRService = game:GetService("VRService")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()

return function()
	if VRService.VREnabled then
		-- hard disable in VR until we support v2 menu and validated
		return false
	end

	if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:isChromeEnabled() then
		return true
	end

	if isTenFootInterface then
		-- hard disable on Console so it does not show in Studio emulator
		return false
	end

	return game:GetFastFlag("EnableInGameMenuChrome")
end
