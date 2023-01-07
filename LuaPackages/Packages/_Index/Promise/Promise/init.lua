local Packages = script.Parent
local PromiseUpgradeFlag = require(Packages.PromiseUpgradeFlag)

if PromiseUpgradeFlag() then
	return require(Packages.Promise340)
else
	return require(Packages.Promise330) :: typeof(require(Packages.Promise340))
end
