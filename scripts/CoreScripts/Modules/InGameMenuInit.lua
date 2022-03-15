local Modules = script.Parent
local EnableInGameMenuV3 = require(Modules.InGameMenuV3.Flags.GetFFlagEnableInGameMenuV3)

if EnableInGameMenuV3() then
	return require(Modules.InGameMenuV3)
else
	return require(Modules.InGameMenu)
end
