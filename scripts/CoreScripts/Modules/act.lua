local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

if game:GetFastFlag("Roact17RolloutEnabledForAll7") then
    return Roact.act :: (any) -> ()
else
    return function(callback)
        callback()
    end
end
