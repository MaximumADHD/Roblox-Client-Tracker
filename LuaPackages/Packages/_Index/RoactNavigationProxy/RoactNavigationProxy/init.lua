local Packages = script.Parent
local RoactNavigationUpgradeFlag = require(Packages.RoactNavigationUpgradeFlag)

if RoactNavigationUpgradeFlag() then
	return require(Packages.RoactNavigation)
else
	return require(Packages.CurrentRoactNavigation) :: typeof(require(Packages.RoactNavigation))
end
