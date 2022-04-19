--!strict
local Packages = script.Parent
local Roact17UpgradeFlag = require(Packages.Roact17UpgradeFlag)

-- Leverage luau's greedy type behavior to type this package with the newest
-- definitions from rc11; we cast the rc10 import to any to supress the warnings
local Roact
if Roact17UpgradeFlag.getRolloutForId() then
	Roact = require(Packages.Roact17_rc11)
else
	Roact = require(Packages.Roact17_rc10) :: any
end

return Roact
