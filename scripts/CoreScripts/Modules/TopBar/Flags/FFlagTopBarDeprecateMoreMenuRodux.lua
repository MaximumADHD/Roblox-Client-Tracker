local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls

local Chrome = script.Parent.Parent.Parent.Chrome
local ChromeEnabled = require(Chrome.Enabled)

local FFlagTopBarDeprecateMoreMenuRodux = game:DefineFastFlag("TopBarDeprecateMoreMenuRodux", false)

return FFlagTopBarDeprecateMoreMenuRodux and FFlagEnableConsoleExpControls and ChromeEnabled
