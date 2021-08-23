local Plugin = script.Parent.Parent
local GetFFlagPrecalculatePartPaths = require(Plugin.LuaFlags.GetFFlagPrecalculatePartPaths)

return function()
	return GetFFlagPrecalculatePartPaths()
		and game:GetEngineFeature("FacialAnimationSupportFeature")
end