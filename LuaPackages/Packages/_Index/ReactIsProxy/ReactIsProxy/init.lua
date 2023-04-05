--!strict
local Packages = script.Parent
local Roact17UpgradeFlag = require(Packages.Roact17UpgradeFlag)

-- Leverage luau's greedy type behavior to type this package with the newest
-- definitions from rc11; we cast the rc10 import to any to supress the warnings
local ReactIs
if Roact17UpgradeFlag.getRolloutForId() then
	ReactIs = require(Packages.ReactIs_rc19)
else
	ReactIs = require(Packages.ReactIs_rc18) :: any
end

return ReactIs
