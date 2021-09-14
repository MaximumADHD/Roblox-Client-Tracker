local Plugin = script.Parent.Parent
local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)

game:DefineFastFlag("ACEClampFacsValues", false)

return function()
	return GetFFlagFacialAnimationSupport()
		and game:GetFastFlag("ACEClampFacsValues")
end