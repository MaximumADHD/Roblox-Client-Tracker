local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Screenshots = require(CorePackages.Workspace.Packages.Screenshots)

if not Screenshots.Flags.FFlagScreenshotsFeaturesEnabledForAll then
	return {}
end

local ScreenshotsApp = Screenshots.App.createApp()

local CarouselScreenGui = Instance.new("ScreenGui")
CarouselScreenGui.DisplayOrder = Screenshots.Constants.CarouselDisplayOrder
CarouselScreenGui.Name = "ScreenshotsCarousel"
CarouselScreenGui.ResetOnSpawn = false
CarouselScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
CarouselScreenGui.Parent = CoreGui

ScreenshotsApp.mountCarousel(CarouselScreenGui)
ScreenshotsApp.mountCoreUI(RobloxGui)

return ScreenshotsApp
