local Modules = game:GetService("CoreGui").RobloxGui.Modules
local VRService = game:GetService("VRService")

game:DefineFastFlag("NewInGameMenuController2", false)

local FFlagEnableNewVrSystem = require(Modules.Flags.FFlagEnableNewVrSystem)

return function()
	if FFlagEnableNewVrSystem and VRService.VREnabled then
		-- in VR, gamepad controls is the only way to interact with the IGM
		return true
	end

	return game:GetFastFlag("NewInGameMenuController2")
		and game:GetEngineFeature("VirtualInputEventsProcessed")
end
