local Packages = script.Parent
local Roact17UpgradeFlag = require(Packages.Roact17UpgradeFlag)

if Roact17UpgradeFlag.getRolloutForId() then
	return require(Packages.RoactGamepad0_5)
else
	return require(Packages.RoactGamepad0_4)
end
