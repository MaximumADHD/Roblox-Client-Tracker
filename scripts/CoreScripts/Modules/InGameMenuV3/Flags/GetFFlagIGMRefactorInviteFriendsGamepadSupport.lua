local GetFFlagInGameMenuControllerDevelopmentOnly = require(script.Parent.GetFFlagInGameMenuControllerDevelopmentOnly)

game:DefineFastFlag("IGMRefactorInviteFriendsGamepadSupport", false)

return function()
	return game:GetFastFlag("IGMRefactorInviteFriendsGamepadSupport")
		and GetFFlagInGameMenuControllerDevelopmentOnly()
end
