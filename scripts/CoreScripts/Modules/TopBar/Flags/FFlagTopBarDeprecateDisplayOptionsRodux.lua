local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls

local ChromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled
local FFlagTopBarDeprecateGamepadNavigationDialogRodux = require(script.Parent.FFlagTopBarDeprecateGamepadNavigationDialogRodux)

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeMenuOpen = CoreGuiCommon.Flags.FFlagTopBarSignalizeMenuOpen
local FFlagTopBarSignalizeKeepOutAreas = CoreGuiCommon.Flags.FFlagTopBarSignalizeKeepOutAreas
local FFlagTopBarSignalizeScreenSize = CoreGuiCommon.Flags.FFlagTopBarSignalizeScreenSize

local FFlagTopBarDeprecateDisplayOptionsRodux = game:DefineFastFlag("TopBarDeprecateDisplayOptionsRodux2", false)

return FFlagTopBarDeprecateDisplayOptionsRodux 
    and ChromeEnabled() and FFlagEnableConsoleExpControls
    and FFlagTopBarDeprecateGamepadNavigationDialogRodux
    and FFlagTopBarSignalizeMenuOpen and FFlagTopBarSignalizeKeepOutAreas and FFlagTopBarSignalizeScreenSize
