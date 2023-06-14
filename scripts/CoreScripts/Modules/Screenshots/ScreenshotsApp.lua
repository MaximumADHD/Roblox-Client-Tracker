local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Screenshots = require(CorePackages.Workspace.Packages.Screenshots)

if not Screenshots.Flags.FFlagScreenshotsFeaturesEnabledForAll then
	return {}
end

local ScreenshotsApp = Screenshots.App.createApp()

ScreenshotsApp.mountCoreUI(RobloxGui)

return ScreenshotsApp
