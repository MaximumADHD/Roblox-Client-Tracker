local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)
local ChromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled

return function()
	return ChromeEnabled() and not isNewInGameMenuEnabled()
end
