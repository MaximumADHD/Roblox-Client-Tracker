--!strict
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ChromeService = require(script.Parent.Parent.Service)
local ChromeUtils = require(script.Parent.Parent.Service.ChromeUtils)
local LocalStore = require(script.Parent.Parent.Service.LocalStore)
local VideoCaptureService = game:GetService("VideoCaptureService")
local FaceAnimatorService = game:GetService("FaceAnimatorService")
local SocialService = game:GetService("SocialService")
local StarterGui = game:GetService("StarterGui")
local CommonIcon = require(script.Parent.CommonIcon)
local MappedSignal = ChromeUtils.MappedSignal

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local TopBar = RobloxGui.Modules.TopBar
local TopBarConstants = require(TopBar.Constants)

local SelfieViewModule = script.Parent.Parent.Parent.SelfieView
local GetFFlagSelfieViewEnabled = require(SelfieViewModule.Flags.GetFFlagSelfieViewEnabled)
local GetFFlagTweakedMicPinning = require(script.Parent.Parent.Flags.GetFFlagTweakedMicPinning)
local FFlagSelfViewFixes = require(script.Parent.Parent.Flags.GetFFlagSelfViewFixes)()
local FFlagEnableChromeFTUX = require(script.Parent.Parent.Flags.GetFFlagEnableChromeFTUX)()
local FFlagFixSelfViewPopin = game:DefineFastFlag("FixSelfViewPopin", false)
local GetFFlagSelfViewVisibilityFix = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSelfViewVisibilityFix
local GetFFlagUseSelfieViewFlatIcon = require(script.Parent.Parent.Flags.GetFFlagUseSelfieViewFlatIcon)
local GetFFlagSelfieViewRedStatusDot = require(SelfieViewModule.Flags.GetFFlagSelfieViewRedStatusDot)
local GetFFlagSelfieViewV4 = require(RobloxGui.Modules.Flags.GetFFlagSelfieViewV4)
local GetFFlagDisableSelfViewDefaultOpen = require(script.Parent.Parent.Flags.GetFFlagDisableSelfViewDefaultOpen)
local GetFFlagChromeSupportSocialService = require(script.Parent.Parent.Flags.GetFFlagChromeSupportSocialService)
local GetFFlagChromeSelfViewIgnoreCoreGui = require(script.Parent.Parent.Flags.GetFFlagChromeSelfViewIgnoreCoreGui)

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
local Constants = require(script.Parent.Parent.Unibar.Constants)
local ICON_SIZE = UDim2.new(0, Constants.ICON_SIZE, 0, Constants.ICON_SIZE)

local Analytics = require(RobloxGui.Modules.SelfView.Analytics).new()
local startingWindowPosition = if GetFFlagSelfieViewV4()
	then UDim2.new(0, TopBarConstants.ScreenSideOffset, 0, Constants.WINDOW_DEFAULT_PADDING)
	else UDim2.new(1, -95, 0, 165)
-- TODO: Add Localizations
local ID = Constants.SELFIE_VIEW_ID
local LABEL = "CoreScripts.TopBar.SelfViewLabel"

local mappedSelfieWindowOpenSignal = MappedSignal.new(ChromeService:onIntegrationStatusChanged(), function()
	return ChromeService:isWindowOpen(ID)
end)

local selfViewVisibleConnection: RBXScriptConnection? = nil
local selfViewHiddenConnection: RBXScriptConnection? = nil

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
	windowDefaultOpen = if GetFFlagSelfieViewV4() then not GetFFlagDisableSelfViewDefaultOpen() else nil,
	windowAnchorPoint = if GetFFlagSelfieViewV4() then Vector2.new(0, 0) else nil,
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
		Icon = if GetFFlagUseSelfieViewFlatIcon()
			then function(props)
				return React.createElement("Frame", {
					Size = ICON_SIZE,
					BackgroundTransparency = 1,
				}, {
					CommonIcon("icons/controls/selfieOff", "icons/controls/selfie", mappedSelfieWindowOpenSignal),
					CameraStatusDot = if GetFFlagSelfieViewV4()
						then if SelfieView.useCameraOn() and not ChromeService:isWindowOpen(ID)
							then React.createElement(SelfieView.CameraStatusDot, {
								Position = if GetFFlagSelfieViewRedStatusDot()
									then UDim2.new(1, -7, 1, -7)
									else UDim2.fromScale(0.8, 0.7),
								ZIndex = 2,
							})
							else nil
						else SelfieView.useCameraOn() and React.createElement(SelfieView.CameraStatusDot, {
							Position = if GetFFlagSelfieViewRedStatusDot()
								then UDim2.new(1, -7, 1, -7)
								else UDim2.fromScale(0.8, 0.7),
							ZIndex = 2,
						}) or nil,
				}, {})
			end
			else function(_)
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
	if not GetFFlagChromeSelfViewIgnoreCoreGui() and not coreGuiEnabled then
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

	if shouldPin and not GetFFlagUseSelfieViewFlatIcon() then
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

if GetFFlagChromeSupportSocialService() and game:GetEngineFeature("EnableSelfViewToggleApi") then
	if selfViewVisibleConnection then
		selfViewVisibleConnection:Disconnect()
		selfViewVisibleConnection = nil
	end
	if selfViewHiddenConnection then
		selfViewHiddenConnection:Disconnect()
		selfViewHiddenConnection = nil
	end
	selfViewVisibleConnection = SocialService.SelfViewVisible:Connect(function(selfViewPosition)
		-- Calling showSelfView when self view is already visible is no-op
		if not ChromeService:isWindowOpen(ID) then
			-- use current position
			local windowSize = windowSize:get()
			local screenSize = ViewportUtil.screenSize:get()
			local newSelfViewPosition = nil

			if selfViewPosition == Enum.SelfViewPosition.TopLeft then
				newSelfViewPosition =
					UDim2.fromOffset(TopBarConstants.ScreenSideOffset, Constants.WINDOW_DEFAULT_PADDING)
			elseif selfViewPosition == Enum.SelfViewPosition.TopRight then
				newSelfViewPosition = UDim2.fromOffset(
					screenSize.X - (windowSize.X.Offset + TopBarConstants.ScreenSideOffset),
					Constants.WINDOW_DEFAULT_PADDING
				)
			elseif selfViewPosition == Enum.SelfViewPosition.BottomLeft then
				newSelfViewPosition = UDim2.fromOffset(
					TopBarConstants.ScreenSideOffset,
					screenSize.Y
						- (TopBarConstants.TopBarHeight + windowSize.Y.Offset + Constants.WINDOW_DEFAULT_PADDING)
				)
			elseif selfViewPosition == Enum.SelfViewPosition.BottomRight then
				newSelfViewPosition = UDim2.fromOffset(
					screenSize.X - (windowSize.X.Offset + TopBarConstants.ScreenSideOffset),
					screenSize.Y
						- (TopBarConstants.TopBarHeight + windowSize.Y.Offset + Constants.WINDOW_DEFAULT_PADDING)
				)
			end

			ChromeService:toggleWindow(ID)
			if newSelfViewPosition then
				ChromeService:updateWindowPosition(ID, newSelfViewPosition)
			end
		end
	end)
	selfViewHiddenConnection = SocialService.SelfViewHidden:Connect(function()
		-- Calling hideSelfView when self view is not visible is no-op
		if ChromeService:isWindowOpen(ID) then
			ChromeService:toggleWindow(ID)
		end
	end)
end

return selfieViewChromeIntegration
