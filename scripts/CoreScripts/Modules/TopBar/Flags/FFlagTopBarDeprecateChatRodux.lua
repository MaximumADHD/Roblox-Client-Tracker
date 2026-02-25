local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls

local ChromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled

local FFlagTopBarDeprecateChatRodux = game:DefineFastFlag("TopBarDeprecateChatRodux2", false)

return FFlagTopBarDeprecateChatRodux and FFlagEnableConsoleExpControls and ChromeEnabled()
