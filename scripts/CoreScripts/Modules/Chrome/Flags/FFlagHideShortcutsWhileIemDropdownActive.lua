local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls

local Chrome = script.Parent.Parent
local ChromeEnabled = require(Chrome.Enabled)()

local FFlagHideShortcutsWhileIemDropdownActive = game:DefineFastFlag("HideShortcutsWhileIemDropdownActive", false)

return FFlagEnableConsoleExpControls and ChromeEnabled and FFlagHideShortcutsWhileIemDropdownActive
