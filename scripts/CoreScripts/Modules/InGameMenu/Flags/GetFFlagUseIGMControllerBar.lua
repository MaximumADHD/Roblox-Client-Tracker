game:DefineFastFlag("UseIGMControllerBar", false)

local GetFFlagInGameMenuControllerDevelopmentOnly = require(script.Parent.GetFFlagInGameMenuControllerDevelopmentOnly)

return function()
	return game:GetFastFlag("UseIGMControllerBar") and GetFFlagInGameMenuControllerDevelopmentOnly()
end
