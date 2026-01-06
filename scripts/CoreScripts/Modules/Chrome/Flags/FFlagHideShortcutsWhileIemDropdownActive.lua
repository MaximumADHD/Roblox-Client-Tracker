local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls

local Chrome = script.Parent.Parent
local ChromeEnabled = require(Chrome.Enabled)()

return FFlagEnableConsoleExpControls and ChromeEnabled
