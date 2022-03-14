game:DefineFastFlag("QuickMenuControllerBarRefactor", false)

local GetFFlagIGMControllerBarRefactor = require(script.Parent.Parent.InGameMenu.Flags.GetFFlagIGMControllerBarRefactor)

return function()
	return game:GetFastFlag("QuickMenuControllerBarRefactor") and GetFFlagIGMControllerBarRefactor()
end
