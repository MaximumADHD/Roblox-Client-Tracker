game:DefineFastFlag("UseInspectAndBuyControllerBar", false)

local GetFFlagInGameMenuControllerDevelopmentOnly = require(script.Parent.Parent.Parent.InGameMenu.Flags.GetFFlagInGameMenuControllerDevelopmentOnly)

return function()
	return game:GetFastFlag("UseInspectAndBuyControllerBar") and GetFFlagInGameMenuControllerDevelopmentOnly()
end
