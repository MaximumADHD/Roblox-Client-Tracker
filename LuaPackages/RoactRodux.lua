local CorePackages = game:GetService("CorePackages")

-- This covers all of the Packages folder, which is fairly defensive, but should
-- be okay even if it runs multiple times
local initify = require(CorePackages.initify)
initify(CorePackages.Packages)

return require(CorePackages.Packages.RoactRodux)