local Plugin = script.Parent.Parent
local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)

-- TODO: When GetFFlagFacialAnimationSupport() is retired, we can retire GetFFlagFacsUiChanges() as well.
return function()
	return GetFFlagFacialAnimationSupport()
end