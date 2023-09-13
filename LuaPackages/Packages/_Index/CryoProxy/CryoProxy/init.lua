local Packages = script.Parent
local CryoUpgradeFlag = require(Packages.CryoUpgradeFlag)

if CryoUpgradeFlag() then
	return require(Packages.Cryo)
else
	return require(Packages.CurrentCryo) :: typeof(require(Packages.Cryo))
end
