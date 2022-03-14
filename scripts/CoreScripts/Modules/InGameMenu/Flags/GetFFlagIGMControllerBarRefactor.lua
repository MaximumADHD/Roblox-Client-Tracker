game:DefineFastFlag("IGMControllerBarRefactor", false)

local GetFFlagUseIGMControllerBar = require(script.Parent.GetFFlagUseIGMControllerBar)

return function()
	return game:GetFastFlag("IGMControllerBarRefactor") and GetFFlagUseIGMControllerBar()
end
