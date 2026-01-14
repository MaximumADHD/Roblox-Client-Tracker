local FFlagTopBarRefactor = game:DefineFastFlag("TopBarRefactor", false)

local CorePackages = game:GetService("CorePackages")

local Chrome = script.Parent.Parent.Parent.Chrome
local ChromeEnabled = require(Chrome.Enabled)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
local FFlagAddUILessMode = SharedFlags.FFlagAddUILessMode
local FFlagWaitForGameLoadToAddLocalHistory = SharedFlags.FFlagWaitForGameLoadToAddLocalHistory

local CoreScriptsRoactCommon
local FFlagAddTraversalBackButton
if FFlagWaitForGameLoadToAddLocalHistory then
	CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)
 	FFlagAddTraversalBackButton = CoreScriptsRoactCommon.Traversal.Flags.FFlagAddTraversalBackButton
end

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeKeepOutAreas = CoreGuiCommon.Flags.FFlagTopBarSignalizeKeepOutAreas
local FFlagTopBarSignalizeMenuOpen = CoreGuiCommon.Flags.FFlagTopBarSignalizeMenuOpen
local FFlagTopBarSignalizeScreenSize = CoreGuiCommon.Flags.FFlagTopBarSignalizeScreenSize

return FFlagTopBarRefactor
    and ChromeEnabled 
    -- Rodux Deprecation
    and FFlagTopBarSignalizeKeepOutAreas and FFlagTopBarSignalizeMenuOpen and FFlagTopBarSignalizeScreenSize
    -- Console Controls
    and FFlagEnableConsoleExpControls
    -- TopBar Features
    and (FFlagWaitForGameLoadToAddLocalHistory and FFlagAddTraversalBackButton) and not FFlagAddUILessMode
