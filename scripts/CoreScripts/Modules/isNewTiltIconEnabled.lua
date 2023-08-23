local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)
local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)

return function()
	return ChromeEnabled() and not isNewInGameMenuEnabled()
end
