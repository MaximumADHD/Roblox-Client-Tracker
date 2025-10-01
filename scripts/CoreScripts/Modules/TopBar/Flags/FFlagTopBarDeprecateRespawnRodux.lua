local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagConnectGamepadChrome = SharedFlags.GetFFlagConnectGamepadChrome()

local Chrome = script.Parent.Parent.Parent.Chrome
local ChromeEnabled = require(Chrome.Enabled)

local FFlagTopBarDeprecateRespawnRodux = game:DefineFastFlag("TopBarDeprecateRespawnRodux", false)

return FFlagTopBarDeprecateRespawnRodux and FFlagConnectGamepadChrome and ChromeEnabled