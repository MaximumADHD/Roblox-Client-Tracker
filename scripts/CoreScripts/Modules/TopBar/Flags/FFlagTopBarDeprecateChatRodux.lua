local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls

local Chrome = script.Parent.Parent.Parent.Chrome
local ChromeEnabled = require(Chrome.Enabled)

local FFlagTopBarDeprecateChatRodux = game:DefineFastFlag("TopBarDeprecateChatRodux", false)

return FFlagTopBarDeprecateChatRodux and FFlagEnableConsoleExpControls and ChromeEnabled
