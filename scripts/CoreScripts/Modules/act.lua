local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local getRolloutForId = require(CorePackages.Packages.Roact17UpgradeFlag).getRolloutForId

if getRolloutForId() then
    return Roact.act :: (any) -> ()
else
    return function(callback)
        callback()
    end
end
