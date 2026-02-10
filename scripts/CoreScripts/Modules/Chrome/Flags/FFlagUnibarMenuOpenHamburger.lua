local CorePackages = game:GetService("CorePackages")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
local FFlagUnibarMenuOpenHamburgerGamepadIXP = SharedFlags.FFlagUnibarMenuOpenHamburgerGamepadIXP
local FFlagUnibarMenuOpenHamburger = game:DefineFastFlag("UnibarMenuOpenHamburger", false)

return FFlagEnableConsoleExpControls and (FFlagUnibarMenuOpenHamburgerGamepadIXP or FFlagUnibarMenuOpenHamburger)
