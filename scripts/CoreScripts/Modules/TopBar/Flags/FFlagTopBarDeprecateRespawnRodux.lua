local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls

local ChromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled

local FFlagTopBarDeprecateRespawnRodux = game:DefineFastFlag("TopBarDeprecateRespawnRodux2", false)

return FFlagTopBarDeprecateRespawnRodux and FFlagEnableConsoleExpControls and ChromeEnabled()
