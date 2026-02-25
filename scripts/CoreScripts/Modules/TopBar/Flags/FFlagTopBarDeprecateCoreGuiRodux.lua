local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls

local ChromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeHealthBar = CoreGuiCommon.Flags.FFlagTopBarSignalizeHealthBar

local FFlagTopBarDeprecateCoreGuiRodux = game:DefineFastFlag("TopBarDeprecateCoreGuiRodux2", false)

return FFlagTopBarDeprecateCoreGuiRodux and FFlagTopBarSignalizeHealthBar and FFlagEnableConsoleExpControls and ChromeEnabled()
