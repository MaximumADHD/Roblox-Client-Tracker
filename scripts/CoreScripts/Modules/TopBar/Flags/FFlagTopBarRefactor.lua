local FFlagTopBarRefactor = game:DefineFastFlag("TopBarRefactor", false)

local CorePackages = game:GetService("CorePackages")

local ChromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
local FFlagAddUILessMode = SharedFlags.FFlagAddUILessMode

local CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)
local FFlagAddTraversalBackButton = CoreScriptsRoactCommon.Traversal.Flags.FFlagAddTraversalBackButton

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeKeepOutAreas = CoreGuiCommon.Flags.FFlagTopBarSignalizeKeepOutAreas
local FFlagTopBarSignalizeMenuOpen = CoreGuiCommon.Flags.FFlagTopBarSignalizeMenuOpen
local FFlagTopBarSignalizeScreenSize = CoreGuiCommon.Flags.FFlagTopBarSignalizeScreenSize

return FFlagTopBarRefactor
    and ChromeEnabled()
    -- Rodux Deprecation
    and FFlagTopBarSignalizeKeepOutAreas and FFlagTopBarSignalizeMenuOpen and FFlagTopBarSignalizeScreenSize
    -- Console Controls
    and FFlagEnableConsoleExpControls
    -- TopBar Features
    and FFlagAddTraversalBackButton and not FFlagAddUILessMode
