local Plugin = script.Parent.Parent
local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)

game:DefineFastFlag("ACEFacsUiChanges", false)

return function()
	return GetFFlagFacialAnimationSupport()
		and game:GetFastFlag("ACEFacsUiChanges")
end