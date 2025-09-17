local CorePackages = game:GetService("CorePackages")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControlsV4 = SharedFlags.FFlagEnableConsoleExpControlsV4
local FFlagAddTopBarScrim = game:DefineFastFlag("AddTopBarScrim", false)

return FFlagEnableConsoleExpControlsV4 and FFlagAddTopBarScrim
