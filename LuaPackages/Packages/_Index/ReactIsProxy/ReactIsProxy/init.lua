--!strict
local Packages = script.Parent
local Roact17UpgradeFlag = require(Packages.Roact17UpgradeFlag)

-- Leverage luau's greedy type behavior to type this package with the newest definitions
if Roact17UpgradeFlag.getRolloutForId() then
	return require(Packages.ReactIs_17_0_7)
else
	return require(Packages.ReactIs_17_0_6) :: never
end
