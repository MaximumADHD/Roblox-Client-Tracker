local LuaAppUseRoduxV3 = game:DefineFastFlag("LuaAppUseRoduxV3", false)

local Packages = script.Parent

if LuaAppUseRoduxV3 then
	return require(Packages.Rodux3_0)
else
	return require(Packages.Rodux1_1)
end