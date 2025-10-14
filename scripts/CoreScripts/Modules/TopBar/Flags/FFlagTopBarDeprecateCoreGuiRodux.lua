local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls

local Chrome = script.Parent.Parent.Parent.Chrome
local ChromeEnabled = require(Chrome.Enabled)

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeHealthBar = CoreGuiCommon.Flags.FFlagTopBarSignalizeHealthBar

local FFlagTopBarDeprecateCoreGuiRodux = game:DefineFastFlag("TopBarDeprecateCoreGuiRodux", false)

return FFlagTopBarDeprecateCoreGuiRodux and FFlagTopBarSignalizeHealthBar and FFlagEnableConsoleExpControls and ChromeEnabled
