local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Modules = CoreGui.RobloxGui.Modules
local Theme = require(Modules.Settings.Theme)
local ChromeEnabled = require(Modules.Chrome.Enabled)

local Screenshots = require(CorePackages.Workspace.Packages.Screenshots)

local GetFFlagEnableScreenshotUtility =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableScreenshotUtility

local ScreenshotsApp = Screenshots.App.createApp()

local CarouselScreenGui = Instance.new("ScreenGui")
CarouselScreenGui.DisplayOrder = Screenshots.Constants.CarouselDisplayOrder
CarouselScreenGui.Name = "ScreenshotsCarousel"
CarouselScreenGui.ResetOnSpawn = false
CarouselScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
CarouselScreenGui.Parent = CoreGui

local CaptureManagerScreenGui = Instance.new("ScreenGui")
CaptureManagerScreenGui.DisplayOrder = Screenshots.Constants.CarouselDisplayOrder
CaptureManagerScreenGui.Name = "CaptureManager"
CaptureManagerScreenGui.ResetOnSpawn = false
CaptureManagerScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
CaptureManagerScreenGui.Parent = CoreGui

local OverlayScreenGui = Instance.new("ScreenGui")
OverlayScreenGui.DisplayOrder = Screenshots.Constants.OverlayDisplayOrder
OverlayScreenGui.Name = Screenshots.Constants.OverlayName
OverlayScreenGui.ResetOnSpawn = false
OverlayScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
OverlayScreenGui.Parent = CoreGui

ScreenshotsApp.mountCaptureManager(CaptureManagerScreenGui, Theme)
ScreenshotsApp.mountCarousel(CarouselScreenGui)
ScreenshotsApp.mountCoreUI(RobloxGui, if GetFFlagEnableScreenshotUtility() then ChromeEnabled() else nil)
ScreenshotsApp.mountCaptureOverlay(OverlayScreenGui)

return ScreenshotsApp
