local CorePackages = game:GetService("CorePackages")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
local FFlagAddTopBarScrim = game:DefineFastFlag("AddTopBarScrim", false)

return FFlagEnableConsoleExpControls and FFlagAddTopBarScrim
