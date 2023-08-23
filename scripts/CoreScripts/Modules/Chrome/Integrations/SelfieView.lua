--!strict
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ChromeService = require(script.Parent.Parent.Service)
local VideoCaptureService = game:GetService("VideoCaptureService")
local FaceAnimatorService = game:GetService("FaceAnimatorService")

local SelfieViewModule = script.Parent.Parent.Parent.SelfieView
local GetFFlagSelfieViewEnabled = require(SelfieViewModule.Flags.GetFFlagSelfieViewEnabled)

local SelfieView = require(SelfieViewModule)
local FaceChatUtils = require(SelfieViewModule.Utils.FaceChatUtils)
local SizingUtils = require(SelfieViewModule.Utils.SizingUtils)
local AvailabilitySignalState = require(script.Parent.Parent.Service.ChromeUtils).AvailabilitySignalState
local Types = require(script.Parent.Parent.Service.Types)
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
local SECONDARY_ACTION_LABEL = "CoreScripts.TopBar.SelfViewSecondaryAction"

ChromeService:updateWindowPosition(ID, startingWindowPosition)

local secondaryAction: Types.SecondaryAction = {
	label = SECONDARY_ACTION_LABEL,
	activated = function(props: Types.IntegrationComponentProps)
		ChromeService:toggleWindow(ID)
	end,
}

local selfieViewChromeIntegration = ChromeService:register({
	id = ID,
	-- TODO: update localizations
	label = LABEL,
	-- We haven't decided if we're going to allow hotkeys yet
	-- Relevant ticket: https://roblox.atlassian.net/browse/APPEXP-817
	-- hotkeyCodes = { Enum.KeyCode.LeftControl, Enum.KeyCode.LeftAlt, Enum.KeyCode.T },
	secondaryAction = secondaryAction,
	windowSize = windowSize,
	startingWindowPosition = startingWindowPosition,
	initialAvailability = AvailabilitySignalState.Unavailable,
	activated = function()
		activatedSignal:fire()
	end,
	draggable = true,
	cachePosition = true,
	components = {
		Icon = function(props: {})
			return React.createElement(SelfieView.Icon, {
				activatedSignal = activatedSignal,
			}, {})
		end,
		Window = function(props: {})
			return React.createElement(SelfieView.Window, {
				windowSize = windowSize,
				isDraggedOut = ChromeService:dragConnection(ID) ~= nil,
			}, {})
		end,
	},
})

local updateAvailability = function(): ()
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

	if FaceAnimatorService.VideoAnimationEnabled or FaceAnimatorService.AudioAnimationEnabled then
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

return selfieViewChromeIntegration
