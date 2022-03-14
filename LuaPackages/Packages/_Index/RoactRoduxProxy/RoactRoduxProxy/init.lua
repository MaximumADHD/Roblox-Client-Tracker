local Packages = script.Parent
local Roact17UpgradeFlag = require(Packages.Roact17UpgradeFlag)
local RoactRoduxUpgradeFlag = game:DefineFastFlag("RoactRoduxUpgradeFlag", false)

if Roact17UpgradeFlag.getRolloutForId() then
	if RoactRoduxUpgradeFlag then
		return require(Packages.RoactRodux17_5)
	else
		return require(Packages.RoactRodux17_4)
	end
else
	return require(Packages.LegacyRoactRodux)
end
