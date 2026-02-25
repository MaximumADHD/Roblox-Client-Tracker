local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls

local ChromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled

local FFlagTopBarDeprecateMoreMenuRodux = game:DefineFastFlag("TopBarDeprecateMoreMenuRodux2", false)

return FFlagTopBarDeprecateMoreMenuRodux and FFlagEnableConsoleExpControls and ChromeEnabled()
