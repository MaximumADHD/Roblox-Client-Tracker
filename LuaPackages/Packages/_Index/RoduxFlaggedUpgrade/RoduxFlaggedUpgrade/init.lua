local FFlagLuaAppUpgradeRoduxToV3_2 = game:DefineFastFlag("LuaAppUpgradeRoduxToV3_2", false)

local Packages = script.Parent

if FFlagLuaAppUpgradeRoduxToV3_2 then
	return require(Packages.Rodux3_2)
else
	return require(Packages.Rodux3_1)
end
