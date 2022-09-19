local VRService = game:GetService("VRService")

game:DefineFastFlag("NewInGameMenuController2", false)

return function()
	if VRService.VREnabled then
		-- in VR, gamepad controls is the only way to interact with the IGM
		return true
	end

	return game:GetFastFlag("NewInGameMenuController2")
		and game:GetEngineFeature("VirtualInputEventsProcessed")
end
