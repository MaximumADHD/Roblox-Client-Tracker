local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagConnectGamepadChrome = SharedFlags.GetFFlagConnectGamepadChrome()

local Chrome = script.Parent.Parent.Parent.Chrome
local ChromeEnabled = require(Chrome.Enabled)

local FFlagRemoveTopBarInputTypeRodux = require(script.Parent.GetFFlagRemoveTopBarInputTypeRodux)()
local FFlagTopBarDeprecateGamepadNavigationDialogRodux = require(script.Parent.FFlagTopBarDeprecateGamepadNavigationDialogRodux)

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeMenuOpen = CoreGuiCommon.Flags.FFlagTopBarSignalizeMenuOpen
local FFlagTopBarSignalizeKeepOutAreas = CoreGuiCommon.Flags.FFlagTopBarSignalizeKeepOutAreas
local FFlagTopBarSignalizeScreenSize = CoreGuiCommon.Flags.FFlagTopBarSignalizeScreenSize

local FFlagTopBarDeprecateDisplayOptionsRodux = game:DefineFastFlag("TopBarDeprecateDisplayOptionsRodux", false)

return FFlagTopBarDeprecateDisplayOptionsRodux 
    and ChromeEnabled and FFlagConnectGamepadChrome
    and FFlagRemoveTopBarInputTypeRodux and FFlagTopBarDeprecateGamepadNavigationDialogRodux
    and FFlagTopBarSignalizeMenuOpen and FFlagTopBarSignalizeKeepOutAreas and FFlagTopBarSignalizeScreenSize