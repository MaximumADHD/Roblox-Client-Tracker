local Plugin = script.Parent.Parent
local GetFFlagPrecalculatePartPaths = require(Plugin.LuaFlags.GetFFlagPrecalculatePartPaths)
local GetFFlagRefactorMenus = require(Plugin.LuaFlags.GetFFlagRefactorMenus)

return function()
	return GetFFlagPrecalculatePartPaths()
		and GetFFlagRefactorMenus()
		and game:GetEngineFeature("FacialAnimationSupportFeature")
end