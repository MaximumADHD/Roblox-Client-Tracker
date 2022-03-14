local GetFFlagInGameMenuControllerDevelopmentOnly = require(script.Parent.GetFFlagInGameMenuControllerDevelopmentOnly)

game:DefineFastFlag("IGMRefactorPlayerContextualMenuGamepadSupport", false)

return function()
	return game:GetFastFlag("IGMRefactorPlayerContextualMenuGamepadSupport")
		and GetFFlagInGameMenuControllerDevelopmentOnly()
end
