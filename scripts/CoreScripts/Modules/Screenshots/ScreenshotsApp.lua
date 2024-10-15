local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Modules = CoreGui.RobloxGui.Modules
local ChromeEnabled = require(Modules.Chrome.Enabled)

local Screenshots = require(CorePackages.Workspace.Packages.Screenshots)

local GetFFlagEnableScreenshotUtility =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableScreenshotUtility
local GetFFlagEnableCapturesInChrome = require(Modules.Chrome.Flags.GetFFlagEnableCapturesInChrome)
local FFlagScreenshotsSetupEnabled = require(CorePackages.Workspace.Packages.SharedFlags).FFlagScreenshotsSetupEnabled
local FFlagUpdateComposerScreenInsets =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagUpdateComposerScreenInsets

local ScreenshotsApp = Screenshots.App.createApp()

local CarouselScreenGui = Instance.new("ScreenGui")
CarouselScreenGui.DisplayOrder = Screenshots.Constants.CarouselDisplayOrder
CarouselScreenGui.Name = "ScreenshotsCarousel"
CarouselScreenGui.ResetOnSpawn = false
CarouselScreenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
CarouselScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
CarouselScreenGui.Parent = CoreGui

local CaptureManagerScreenGui = Instance.new("ScreenGui")
CaptureManagerScreenGui.DisplayOrder = Screenshots.Constants.CarouselDisplayOrder
CaptureManagerScreenGui.Name = "CaptureManager"
CaptureManagerScreenGui.ResetOnSpawn = false
CaptureManagerScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
CaptureManagerScreenGui.Parent = CoreGui

local ComposerScreenGui = Instance.new("ScreenGui")
ComposerScreenGui.DisplayOrder = Screenshots.Constants.ComposerDisplayOrder
ComposerScreenGui.Name = "Composer"
ComposerScreenGui.ResetOnSpawn = false
ComposerScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ComposerScreenGui.SafeAreaCompatibility = Enum.SafeAreaCompatibility.FullscreenExtension
ComposerScreenGui.ScreenInsets = if FFlagUpdateComposerScreenInsets
	then Enum.ScreenInsets.None
	else Enum.ScreenInsets.DeviceSafeInsets
ComposerScreenGui.Parent = CoreGui

local OverlayScreenGui = Instance.new("ScreenGui")
OverlayScreenGui.DisplayOrder = Screenshots.Constants.OverlayDisplayOrder
OverlayScreenGui.Name = Screenshots.Constants.OverlayName
OverlayScreenGui.ResetOnSpawn = false
OverlayScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
OverlayScreenGui.Parent = CoreGui

if FFlagScreenshotsSetupEnabled then
	local SubmissionModal = Instance.new("ScreenGui")
	SubmissionModal.DisplayOrder = Screenshots.Constants.SubmissionModalDisplayOrder
	SubmissionModal.Name = "SubmissionModal"
	SubmissionModal.ResetOnSpawn = false
	SubmissionModal.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	SubmissionModal.Parent = CoreGui
	SubmissionModal.ScreenInsets = Enum.ScreenInsets.None
	ScreenshotsApp.mountSubmissionModal(SubmissionModal)

	local EventSplashModal = Instance.new("ScreenGui")
	EventSplashModal.DisplayOrder = Screenshots.Constants.EventSplashModalDisplayOrder
	EventSplashModal.Name = "EventSplashModal"
	EventSplashModal.ResetOnSpawn = false
	EventSplashModal.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	EventSplashModal.Parent = CoreGui
	EventSplashModal.ScreenInsets = Enum.ScreenInsets.None
	ScreenshotsApp.mountEventSplashModal(EventSplashModal)
end

ScreenshotsApp.mountCaptureManager(CaptureManagerScreenGui)
ScreenshotsApp.mountCarousel(CarouselScreenGui)
ScreenshotsApp.mountComposer(ComposerScreenGui)
ScreenshotsApp.mountCoreUI(
	RobloxGui,
	if GetFFlagEnableScreenshotUtility() then GetFFlagEnableCapturesInChrome() and ChromeEnabled() else nil
)
ScreenshotsApp.mountCaptureOverlay(OverlayScreenGui)

return ScreenshotsApp
