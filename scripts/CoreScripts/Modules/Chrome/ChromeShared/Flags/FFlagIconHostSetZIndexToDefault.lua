local CorePackages = game:GetService("CorePackages")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
local FFlagIconHostSetZIndexToDefault = game:DefineFastFlag("FFlagIconHostSetZIndexToDefault", false)

return FFlagEnableConsoleExpControls and FFlagIconHostSetZIndexToDefault
