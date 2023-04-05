--!strict
local Packages = script.Parent
local Roact17UpgradeFlag = require(Packages.Roact17UpgradeFlag)

-- Leverage luau's greedy type behavior to type this package with the newest
-- definitions from rc11; we cast the rc10 import to any to supress the warnings
local ReactDevtoolsExtensions
if Roact17UpgradeFlag.getRolloutForId() then
	ReactDevtoolsExtensions = require(Packages.ReactDevtoolsExtensions_rc19)
else
	ReactDevtoolsExtensions = require(Packages.ReactDevtoolsExtensions_rc18) :: any
end

return ReactDevtoolsExtensions
