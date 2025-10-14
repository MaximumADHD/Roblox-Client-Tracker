local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls

local Chrome = script.Parent.Parent.Parent.Chrome
local ChromeEnabled = require(Chrome.Enabled)

local FFlagTopBarDeprecateRespawnRodux = game:DefineFastFlag("TopBarDeprecateRespawnRodux", false)

return FFlagTopBarDeprecateRespawnRodux and FFlagEnableConsoleExpControls and ChromeEnabled
