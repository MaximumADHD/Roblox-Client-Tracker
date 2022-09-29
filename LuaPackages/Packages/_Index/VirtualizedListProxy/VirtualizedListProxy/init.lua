local Packages = script.Parent
local VirtualizedListUpgradeFlag = require(Packages.VirtualizedListUpgradeFlag)

if VirtualizedListUpgradeFlag() then
  return require(Packages.VirtualizedList_v111)
else
  return require(Packages.VirtualizedList_v102)
end
