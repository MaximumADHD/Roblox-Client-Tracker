local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls

local FFlagHideShortcutsOnReportDropdown = game:DefineFastFlag("HideShortcutsOnReportDropdown", false)

return FFlagEnableConsoleExpControls and FFlagHideShortcutsOnReportDropdown
