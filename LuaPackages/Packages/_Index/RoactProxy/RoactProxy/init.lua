local Packages = script.Parent
local Roact17UpgradeFlag = require(Packages.Roact17UpgradeFlag)

if Roact17UpgradeFlag.getRolloutForId() then
	return require(Packages.Roact17)
else
	return require(Packages.UpgradedLegacyRoact)
end
