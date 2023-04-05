--!strict
local Packages = script.Parent
local Roact17UpgradeFlag = require(Packages.Roact17UpgradeFlag)

-- Leverage luau's greedy type behavior to type this package with the newest
-- definitions from rc11; we cast the rc10 import to any to supress the warnings
local ReactRoblox
if Roact17UpgradeFlag.getRolloutForId() then
	ReactRoblox = require(Packages.ReactRoblox_rc19)
else
	ReactRoblox = require(Packages.ReactRoblox_rc18) :: any
end

return ReactRoblox
