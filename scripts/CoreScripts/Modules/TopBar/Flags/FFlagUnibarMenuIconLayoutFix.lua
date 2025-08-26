local CorePackages = game:GetService("CorePackages")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
local FFlagTopBarStyleUseDisplayUIScale = SharedFlags.FFlagTopBarStyleUseDisplayUIScale

return (FFlagEnableConsoleExpControls or FFlagTopBarStyleUseDisplayUIScale) and game:DefineFastFlag("UnibarMenuIconLayoutFix", false)
