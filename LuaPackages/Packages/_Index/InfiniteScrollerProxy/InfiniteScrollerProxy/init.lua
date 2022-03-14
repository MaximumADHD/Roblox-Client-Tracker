local Packages = script.Parent
local Roact17UpgradeFlag = require(Packages.Roact17UpgradeFlag)

if Roact17UpgradeFlag.getRolloutForId() then
	return require(Packages.InfiniteScroller0_9_5)
else
	return require(Packages.InfiniteScroller0_8_0)
end
