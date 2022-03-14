game:DefineFastFlag("RemoveMoreMenuFromReducer", false)

local GetFFlagIGMControllerBarRefactor = require(script.Parent.GetFFlagIGMControllerBarRefactor)

return function()
	return game:GetFastFlag("RemoveMoreMenuFromReducer") and GetFFlagIGMControllerBarRefactor()
end
