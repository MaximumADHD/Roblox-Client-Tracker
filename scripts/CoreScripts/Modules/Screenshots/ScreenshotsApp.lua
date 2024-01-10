local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Screenshots = require(CorePackages.Workspace.Packages.Screenshots)

local ScreenshotsApp = Screenshots.App.createApp()

local CarouselScreenGui = Instance.new("ScreenGui")
CarouselScreenGui.DisplayOrder = Screenshots.Constants.CarouselDisplayOrder
CarouselScreenGui.Name = "ScreenshotsCarousel"
CarouselScreenGui.ResetOnSpawn = false
CarouselScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
CarouselScreenGui.Parent = CoreGui

local OverlayScreenGui = Instance.new("ScreenGui")
OverlayScreenGui.DisplayOrder = Screenshots.Constants.OverlayDisplayOrder
OverlayScreenGui.Name = Screenshots.Constants.OverlayName
OverlayScreenGui.ResetOnSpawn = false
OverlayScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
OverlayScreenGui.Parent = CoreGui

ScreenshotsApp.mountCarousel(CarouselScreenGui)
ScreenshotsApp.mountCoreUI(RobloxGui)
ScreenshotsApp.mountCaptureOverlay(OverlayScreenGui)

return ScreenshotsApp
