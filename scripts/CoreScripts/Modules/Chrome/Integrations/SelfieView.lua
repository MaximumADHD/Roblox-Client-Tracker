--!strict
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ChromeService = require(script.Parent.Parent.Service)
local LocalStore = require(script.Parent.Parent.Service.LocalStore)
local VideoCaptureService = game:GetService("VideoCaptureService")
local FaceAnimatorService = game:GetService("FaceAnimatorService")
local StarterGui = game:GetService("StarterGui")

local SelfieViewModule = script.Parent.Parent.Parent.SelfieView
local GetFFlagSelfieViewEnabled = require(SelfieViewModule.Flags.GetFFlagSelfieViewEnabled)
local GetFFlagTweakedMicPinning = require(script.Parent.Parent.Flags.GetFFlagTweakedMicPinning)
local FFlagSelfViewFixes = require(script.Parent.Parent.Flags.GetFFlagSelfViewFixes)()
local FFlagEnableChromeFTUX = require(script.Parent.Parent.Flags.GetFFlagEnableChromeFTUX)()
local FFlagFixSelfViewPopin = game:DefineFastFlag("FixSelfViewPopin", false)
local GetFFlagSelfViewVisibilityFix = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSelfViewVisibilityFix

local SelfieView = require(SelfieViewModule)
local FaceChatUtils = require(SelfieViewModule.Utils.FaceChatUtils)
local SizingUtils = require(SelfieViewModule.Utils.SizingUtils)
local AvailabilitySignalState = require(script.Parent.Parent.Service.ChromeUtils).AvailabilitySignalState
local WindowSizeSignal = require(script.Parent.Parent.Service.WindowSizeSignal)

local AppCommonLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local activatedSignal = AppCommonLib.Signal.new()

local ViewportUtil = require(script.Parent.Parent.Service.ViewportUtil)
local startingSize = SizingUtils.getSize(ViewportUtil.screenSize:get(), false)
local windowSize = WindowSizeSignal.new(startingSize.X, startingSize.Y)

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Analytics = require(RobloxGui.Modules.SelfView.Analytics).new()
local startingWindowPosition = UDim2.new(1, -95, 0, 165)
-- TODO: Add Localizations
local ID = "selfie_view"
local LABEL = "CoreScripts.TopBar.SelfViewLabel"

ChromeService:updateWindowPosition(ID, startingWindowPosition)

local selfieViewChromeIntegration = ChromeService:register({
	id = ID,
	-- TODO: update localizations
	label = LABEL,
	-- We haven't decided if we're going to allow hotkeys yet
	-- Relevant ticket: https://roblox.atlassian.net/browse/APPEXP-817
	-- hotkeyCodes = { Enum.KeyCode.LeftControl, Enum.KeyCode.LeftAlt, Enum.KeyCode.T },
	windowSize = windowSize,
	startingWindowPosition = startingWindowPosition,
	initialAvailability = AvailabilitySignalState.Unavailable,
	activated = function()
		if FFlagEnableChromeFTUX then
			LocalStore.storeForLocalPlayer(ID, true)
		end
		ChromeService:toggleWindow(ID)
	end,
	draggable = true,
	cachePosition = true,
	components = {
		Icon = function(_)
			return if GetFFlagSelfViewVisibilityFix()
				then React.createElement(SelfieView.Icon, {
					activatedSignal = activatedSignal,
					outerContainerFrameName = ID,
				}, {})
				else React.createElement(SelfieView.Icon, {
					activatedSignal = activatedSignal,
				}, {})
		end,
		Window = function(_)
			local connectionObject: any = ChromeService:dragConnection(ID)
			return React.createElement(SelfieView.Window, {
				id = ID,
				windowSize = windowSize,
				isDraggedOut = if FFlagSelfViewFixes
					then connectionObject ~= nil and connectionObject.connection ~= nil
					else connectionObject ~= nil,
			}, {})
		end,
	},
})

-- Update windowSize on resize before window is opened (starting size)
ViewportUtil.screenSize:connect(function(screenSize)
	if not ChromeService:isWindowOpen(ID) then
		local frameSize = SizingUtils.getSize(screenSize, windowSize:getIsLarge())
		windowSize:requestSize(frameSize.X, frameSize.Y)
	end
end, true)

local updateAvailability = function(): ()
	local coreGuiEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
	if not coreGuiEnabled then
		selfieViewChromeIntegration.availability:unavailable()
		return
	end

	-- Check that the place has mic/cam enabled (ignoring user)
	local permissions: FaceChatUtils.Permissions = FaceChatUtils.getPermissions()

	-- Disable selfieview if the place has cam and mic off
	-- or if the user is ineligible (U13).
	-- Leave it enabled if the user has cam and mic off so we
	-- can show a call to action.
	local cameraOrMicAvailable: boolean = permissions.placeCamEnabled or permissions.placeMicEnabled
	local userEligible: boolean = permissions.userCamEligible or permissions.userMicEligible
	if not cameraOrMicAvailable or not userEligible then
		selfieViewChromeIntegration.availability:unavailable()
		return
	end

	local shouldPin
	if GetFFlagTweakedMicPinning() then
		if FFlagFixSelfViewPopin then
			shouldPin = FaceAnimatorService:IsStarted() and FaceAnimatorService.VideoAnimationEnabled
		else
			shouldPin = FaceAnimatorService.VideoAnimationEnabled
		end
	else
		shouldPin = if FFlagFixSelfViewPopin
			then FaceAnimatorService:IsStarted()
				and (FaceAnimatorService.VideoAnimationEnabled or FaceAnimatorService.AudioAnimationEnabled)
			else FaceAnimatorService.VideoAnimationEnabled or FaceAnimatorService.AudioAnimationEnabled
	end

	if shouldPin then
		selfieViewChromeIntegration.availability:pinned()
		return
	end

	selfieViewChromeIntegration.availability:available()
end

local reportSettings = function()
	local permissions: FaceChatUtils.Permissions = FaceChatUtils.getPermissions()
	Analytics:reportExperienceSettings(true, permissions.placeCamEnabled, permissions.placeMicEnabled)
	Analytics:reportUserAccountSettings(permissions.userCamEnabled, permissions.userMicEnabled)
end

if GetFFlagSelfieViewEnabled() and game:GetEngineFeature("VideoCaptureService") then
	updateAvailability()
	VideoCaptureService.Started:Connect(updateAvailability)
	VideoCaptureService.Stopped:Connect(updateAvailability)
	VideoCaptureService.DevicesChanged:Connect(updateAvailability)
	FaceAnimatorService:GetPropertyChangedSignal("VideoAnimationEnabled"):Connect(updateAvailability)
	FaceAnimatorService:GetPropertyChangedSignal("AudioAnimationEnabled"):Connect(updateAvailability)
	reportSettings()
end

StarterGui.CoreGuiChangedSignal:Connect(updateAvailability)

return selfieViewChromeIntegration
