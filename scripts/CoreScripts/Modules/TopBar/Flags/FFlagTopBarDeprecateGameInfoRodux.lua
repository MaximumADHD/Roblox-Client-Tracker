local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls

local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)

local FFlagTopBarDeprecateGameInfoRodux = game:DefineFastFlag("TopBarDeprecateGameInfoRodux", false)

return FFlagTopBarDeprecateGameInfoRodux and FFlagEnableConsoleExpControls and not isNewInGameMenuEnabled
