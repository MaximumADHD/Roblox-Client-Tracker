local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ChromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled

local CapturesInExperience = require(CorePackages.Workspace.Packages.CapturesInExperience)

local openCapturesGallery = require(script.Parent.openCapturesGallery)

local CapturesApp = CapturesInExperience.App.createApp()

local CarouselScreenGui = Instance.new("ScreenGui")
CarouselScreenGui.DisplayOrder = CapturesInExperience.Constants.CarouselDisplayOrder
CarouselScreenGui.Name = "ScreenshotsCarousel"
CarouselScreenGui.ResetOnSpawn = false
CarouselScreenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
CarouselScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
CarouselScreenGui.Parent = CoreGui

local CaptureManagerScreenGui = Instance.new("ScreenGui")
CaptureManagerScreenGui.DisplayOrder = CapturesInExperience.Constants.CarouselDisplayOrder
CaptureManagerScreenGui.Name = "CaptureManager"
CaptureManagerScreenGui.ResetOnSpawn = false
CaptureManagerScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
CaptureManagerScreenGui.Parent = CoreGui

local OverlayScreenGui = Instance.new("ScreenGui")
OverlayScreenGui.DisplayOrder = CapturesInExperience.Constants.OverlayDisplayOrder
OverlayScreenGui.Name = CapturesInExperience.Constants.OverlayName
OverlayScreenGui.ResetOnSpawn = false
OverlayScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
OverlayScreenGui.Parent = CoreGui

local MomentsCreationFlowScreenGui = Instance.new("ScreenGui")
MomentsCreationFlowScreenGui.DisplayOrder = CapturesInExperience.Constants.CreationFlowDisplayOrder
MomentsCreationFlowScreenGui.Name = "MomentsCreationFlow"
MomentsCreationFlowScreenGui.ResetOnSpawn = false
MomentsCreationFlowScreenGui.ScreenInsets = Enum.ScreenInsets.None
MomentsCreationFlowScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MomentsCreationFlowScreenGui.Parent = CoreGui

CapturesApp.mountCaptureManager(CaptureManagerScreenGui)
CapturesApp.mountCarousel(CarouselScreenGui)
-- SettingsHub requires this module at load time, so it must be required lazily here.
local function openGallery(): boolean
	-- lute-lint-ignore(avoidAny): the type checker only allows the SettingsHub <-> CapturesApp cycle through an any cast.
	local SettingsHub: openCapturesGallery.SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub) :: any
	return openCapturesGallery(SettingsHub)
end

CapturesApp.mountCoreUI(
	RobloxGui,
	ChromeEnabled(),
	if CapturesInExperience.Flags.FFlagCapturesControlsGalleryButton then openGallery else nil
)
CapturesApp.mountCaptureOverlay(OverlayScreenGui)
CapturesApp.mountMomentsCreationFlow(MomentsCreationFlowScreenGui)

return CapturesApp
