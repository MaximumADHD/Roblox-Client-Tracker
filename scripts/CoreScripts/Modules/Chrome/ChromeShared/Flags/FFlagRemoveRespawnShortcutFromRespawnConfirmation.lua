local CorePackages = game:GetService("CorePackages")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControlsV4 = SharedFlags.FFlagEnableConsoleExpControlsV4

return FFlagEnableConsoleExpControlsV4 and game:DefineFastFlag("RemoveRespawnShortcutFromRespawnConfirmation", false)
