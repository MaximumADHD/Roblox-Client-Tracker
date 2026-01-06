--!strict
local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ChromeService = require(Chrome.Service)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local VideoCaptureService = game:GetService("VideoCaptureService")
local FaceAnimatorService = game:GetService("FaceAnimatorService")
local SocialService = game:GetService("SocialService")
local StarterGui = game:GetService("StarterGui")
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local MappedSignal = ChromeUtils.MappedSignal

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local TopBar = RobloxGui.Modules.TopBar
local TopBarConstants = require(TopBar.Constants)
local topBarHeight = TopBarConstants.ApplyDisplayScale(TopBarConstants.TopBarHeight)

local SelfieViewModule = Chrome.Parent.SelfieView
local GetFFlagSelfieViewEnabled = require(SelfieViewModule.Flags.GetFFlagSelfieViewEnabled)
local GetFFlagChromeSelfViewIgnoreCoreGui = require(Chrome.Flags.GetFFlagChromeSelfViewIgnoreCoreGui)

local ChromeSharedFlags = require(Chrome.ChromeShared.Flags)
local FFlagTokenizeUnibarConstantsWithStyleProvider = ChromeSharedFlags.FFlagTokenizeUnibarConstantsWithStyleProvider

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls

local SelfieView = require(SelfieViewModule)
local FaceChatUtils = require(SelfieViewModule.Utils.FaceChatUtils)
local SizingUtils = require(SelfieViewModule.Utils.SizingUtils)
local SelfieViewPolicy = require(SelfieViewModule.Utils.SelfieViewPolicy)
local AvailabilitySignalState = require(Chrome.ChromeShared.Service.ChromeUtils).AvailabilitySignalState
local WindowSizeSignal = require(Chrome.ChromeShared.Service.WindowSizeSignal)
local UnibarStyle = require(Chrome.ChromeShared.Unibar.UnibarStyle)

local ViewportUtil = require(Chrome.ChromeShared.Service.ViewportUtil)
local startingSize = SizingUtils.getSize(ViewportUtil.screenSize:get(), false)
local windowSize = WindowSizeSignal.new(startingSize.X, startingSize.Y)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)

local Analytics = require(RobloxGui.Modules.SelfView.Analytics).new()
-- TODO: Add Localizations
local ID = Constants.SELFIE_VIEW_ID
local LABEL = "CoreScripts.TopBar.SelfViewLabel"

local mappedSelfieWindowOpenSignal = MappedSignal.new(ChromeService:onIntegrationStatusChanged(), function()
	return ChromeService:isWindowOpen(ID)
end)

local selfViewVisibleConnection: RBXScriptConnection? = nil
local selfViewHiddenConnection: RBXScriptConnection? = nil

local selfieViewChromeIntegration = ChromeService:register({
	id = ID,
	-- TODO: update localizations
	label = LABEL,
	-- We haven't decided if we're going to allow hotkeys yet
	-- Relevant ticket: https://roblox.atlassian.net/browse/APPEXP-817
	-- hotkeyCodes = { Enum.KeyCode.LeftControl, Enum.KeyCode.LeftAlt, Enum.KeyCode.T },
	windowSize = windowSize,
	windowDefaultOpen = false,
	initialAvailability = AvailabilitySignalState.Unavailable,
	persistWindowState = true,
	activated = function()
		ChromeService:toggleWindow(ID)
	end,
	isActivated = function()
		return mappedSelfieWindowOpenSignal:get()
	end,
	draggable = true,
	cachePosition = true,
	components = {
		Icon = function(props)
			local unibarStyle
			local iconSize
			if FFlagTokenizeUnibarConstantsWithStyleProvider then
				unibarStyle = UnibarStyle.use()
				iconSize = unibarStyle.ICON_SIZE
			else
				iconSize = Constants.ICON_SIZE
			end
			return React.createElement("Frame", {
				Size = UDim2.new(0, iconSize, 0, iconSize),
				BackgroundTransparency = 1,
			}, {
				CommonIcon("icons/controls/selfieOff", "icons/controls/selfie", mappedSelfieWindowOpenSignal),
				CameraStatusDot = if SelfieView.useCameraOn() and not ChromeService:isWindowOpen(ID)
					then React.createElement(SelfieView.CameraStatusDot, {
						Position = UDim2.fromScale(0.8, 0.7),
						ZIndex = 2,
					})
					else nil,
			}, {})
		end,
		Window = function(_)
			local connectionObject: any = ChromeService:dragConnection(ID)
			return React.createElement(SelfieView.Window, {
				id = ID,
				windowSize = windowSize,
				isDraggedOut = connectionObject ~= nil and connectionObject.connection ~= nil,
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
		-- If CoreGuiType disabled while camera is on, turn it off
		if FaceChatUtils.isCameraOn() then
			FaceChatUtils.toggleVideoAnimation()
		end
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

	selfieViewChromeIntegration.availability:available()
end

local reportSettings = function()
	local permissions: FaceChatUtils.Permissions = FaceChatUtils.getPermissions()
	Analytics:reportExperienceSettings(true, permissions.placeCamEnabled, permissions.placeMicEnabled)
	Analytics:reportUserAccountSettings(permissions.userCamEnabled, permissions.userMicEnabled)
end

if FFlagEnableConsoleExpControls then
	local policy = SelfieViewPolicy.PolicyImplementation.read()
	local eligibleForSelfieViewFeature = if policy
		then SelfieViewPolicy.Mapper(policy).eligibleForSelfieViewFeature()
		else false

	if not eligibleForSelfieViewFeature then
		selfieViewChromeIntegration.availability:forceUnavailable()
	end
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

if game:GetEngineFeature("EnableSelfViewToggleApi") then
	if selfViewVisibleConnection then
		selfViewVisibleConnection:Disconnect()
		selfViewVisibleConnection = nil
	end
	if selfViewHiddenConnection then
		selfViewHiddenConnection:Disconnect()
		selfViewHiddenConnection = nil
	end
	selfViewVisibleConnection = SocialService.SelfViewVisible:Connect(function(selfViewPosition)
		local topBarScreenSideOffset = TopBarConstants.ApplyDisplayScale(TopBarConstants.ScreenSideOffset)
		-- Calling showSelfView when self view is already visible is no-op
		if not ChromeService:isWindowOpen(ID) then
			-- use current position
			local windowSize = windowSize:get()
			local screenSize = ViewportUtil.screenSize:get()
			local newSelfViewPosition = nil

			if selfViewPosition == Enum.SelfViewPosition.TopLeft then
				newSelfViewPosition = UDim2.fromOffset(topBarScreenSideOffset, Constants.WINDOW_DEFAULT_PADDING)
			elseif selfViewPosition == Enum.SelfViewPosition.TopRight then
				newSelfViewPosition = UDim2.fromOffset(
					screenSize.X - (windowSize.X.Offset + topBarScreenSideOffset),
					Constants.WINDOW_DEFAULT_PADDING
				)
			elseif selfViewPosition == Enum.SelfViewPosition.BottomLeft then
				newSelfViewPosition = UDim2.fromOffset(
					topBarScreenSideOffset,
					screenSize.Y - (topBarHeight + windowSize.Y.Offset + Constants.WINDOW_DEFAULT_PADDING)
				)
			elseif selfViewPosition == Enum.SelfViewPosition.BottomRight then
				newSelfViewPosition = UDim2.fromOffset(
					screenSize.X - (windowSize.X.Offset + topBarScreenSideOffset),
					screenSize.Y - (topBarHeight + windowSize.Y.Offset + Constants.WINDOW_DEFAULT_PADDING)
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
