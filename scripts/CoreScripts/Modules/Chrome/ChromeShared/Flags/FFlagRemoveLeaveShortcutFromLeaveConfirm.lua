local CorePackages = game:GetService("CorePackages")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls

return FFlagEnableConsoleExpControls and game:DefineFastFlag("RemoveLeaveShortcutFromLeaveConfirm", false)
