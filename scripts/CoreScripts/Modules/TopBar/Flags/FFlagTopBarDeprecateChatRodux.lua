local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagConnectGamepadChrome = SharedFlags.GetFFlagConnectGamepadChrome()

local Chrome = script.Parent.Parent.Parent.Chrome
local ChromeEnabled = require(Chrome.Enabled)

local FFlagTopBarDeprecateChatRodux = game:DefineFastFlag("TopBarDeprecateChatRodux", false)

return FFlagTopBarDeprecateChatRodux and FFlagConnectGamepadChrome and ChromeEnabled