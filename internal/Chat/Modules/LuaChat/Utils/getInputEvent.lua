local UserInputService = game:GetService("UserInputService")

return function(component)
	if _G.__TESTEZ_RUNNING_TEST__ or UserInputService.LegacyInputEventsEnabled then
		return component.MouseButton1Click
	else
		return component.Activated
	end
end
