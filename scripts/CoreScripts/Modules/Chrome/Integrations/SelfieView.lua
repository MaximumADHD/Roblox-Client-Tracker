--!strict
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ChromeService = require(script.Parent.Parent.Service)
local VideoCaptureService = game:GetService("VideoCaptureService")
local FaceAnimatorService = game:GetService("FaceAnimatorService")

local SelfieViewModule = script.Parent.Parent.Parent.SelfieView
local FFlagSelfieViewEnabled = require(SelfieViewModule.Flags.FFlagSelfieViewEnabled)

local SelfieView = require(SelfieViewModule)
local Constants = require(script.Parent.Parent.Unibar.Constants)
local AvailabilitySignalState = require(script.Parent.Parent.Service.ChromeUtils).AvailabilitySignalState
local Types = require(script.Parent.Parent.Service.Types)
local WindowSizeSignal = require(script.Parent.Parent.Service.WindowSizeSignal)

local windowSize = WindowSizeSignal.new(Constants.DEFAULT_WIDTH, Constants.DEFAULT_HEIGHT)

-- TODO: Add Localizations
local ID = "selfie_view"
local LABEL = "SelfieView"

local secondaryAction: Types.SecondaryAction = {
	label = "Open " .. LABEL,
	activated = function(props: Types.IntegrationComponentProps)
		ChromeService:toggleWindow(ID)
	end,
}

local selfieViewChromeIntegration = ChromeService:register({
	id = ID,
	-- TODO: update localizations
	label = LABEL,
	startingWindowSize = UDim2.new(0, Constants.DEFAULT_WIDTH, 0, Constants.DEFAULT_HEIGHT),
	-- We haven't decided if we're going to allow hotkeys yet
	-- Relevant ticket: https://roblox.atlassian.net/browse/APPEXP-817
	-- hotkeyCodes = { Enum.KeyCode.LeftControl, Enum.KeyCode.LeftAlt, Enum.KeyCode.T },
	secondaryAction = secondaryAction,
	windowSize = windowSize,
	startingWindowPosition = UDim2.new(1, 0, 0, 165),
	initialAvailability = AvailabilitySignalState.Unavailable,
	activated = function()
		if not FaceAnimatorService or not FaceAnimatorService:IsStarted() then
			return
		end

		FaceAnimatorService.VideoAnimationEnabled = not FaceAnimatorService.VideoAnimationEnabled
	end,
	draggable = true,
	components = {
		Icon = function(props: {})
			return React.createElement(SelfieView.Icon, {}, {})
		end,
		Window = function(props: {})
			return React.createElement(SelfieView.Window, {
				windowSize = windowSize,
				isDraggedOut = ChromeService:dragConnection(ID) ~= nil,
			}, {})
		end,
	},
})

if FFlagSelfieViewEnabled and game:GetEngineFeature("VideoCaptureService") then
	selfieViewChromeIntegration.availability:available()
	VideoCaptureService.Started:Connect(function()
		selfieViewChromeIntegration.availability:pinned()
	end)
	VideoCaptureService.Stopped:Connect(function()
		selfieViewChromeIntegration.availability:available()
	end)
end

return selfieViewChromeIntegration
