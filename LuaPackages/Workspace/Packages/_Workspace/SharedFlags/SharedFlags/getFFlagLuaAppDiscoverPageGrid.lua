local getFFlagLuaAppGridPageLayoutPolicy = require(script.Parent.getFFlagLuaAppGridPageLayoutPolicy)

game:DefineFastFlag("LuaAppDiscoverPageGridDev", false)

return function()
	return game:GetFastFlag("LuaAppDiscoverPageGridDev") and getFFlagLuaAppGridPageLayoutPolicy()
end
