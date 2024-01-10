local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)

local GetFFlagIrisCallBarChromeIntegration =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIrisCallBarChromeIntegration

return function()
	return GetFFlagIrisCallBarChromeIntegration() and ChromeEnabled()
end
