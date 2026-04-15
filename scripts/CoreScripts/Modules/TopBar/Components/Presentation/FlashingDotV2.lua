--[[
	Flashing Dot Indicator of which fades in transparency.
]]

local RunService = game:GetService("RunService")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local VideoCaptureService = game:GetService("VideoCaptureService")
local FaceAnimatorService = game:GetService("FaceAnimatorService")

local Roact = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local ReactUtils = require(CorePackages.Packages.ReactUtils)
local t = require(CorePackages.Packages.t)

local EventConnection = ReactUtils.EventConnection

local Modules = CoreGui.RobloxGui.Modules
local VoiceChatServiceManager = require(Modules.VoiceChat.VoiceChatServiceManager).default
local cameraDevicePermissionGrantedSignal =
	require(CoreGui.RobloxGui.Modules.Settings.cameraDevicePermissionGrantedSignal)

local ANIMATION_SPEED = 3
local FLASHING_DOT = "rbxasset://textures/AnimationEditor/FaceCaptureUI/FlashingDot.png"
local GREEN_DOT = "rbxasset://textures/SelfView/SelfView_icon_indicator_off.png"

local FlashingDot = Roact.PureComponent:extend("FlashingDot")

local function lerpNum(a: number, b: number, t: number)
	return a + (b - a) * t
end

FlashingDot.validateProps = t.strictInterface({})

function FlashingDot:init()
	self:setState({
		Visible = false,
		isUsingMic = false,
	})

	self.prevTime = math.pi / 2
	self.prevSinTime = 1
	self.transparencyBinding, self.updateTransparencyBinding = Roact.createBinding(0)

	self.checkNewVisibility = function()
		local isUsingMic = VoiceChatServiceManager.localMuted ~= nil and not VoiceChatServiceManager.localMuted
		local isUsingCamera = FaceAnimatorService:IsStarted() and FaceAnimatorService.VideoAnimationEnabled
		local newVisible = isUsingMic or isUsingCamera

		local updatedVisibility = self.state.Visible ~= newVisible

		if updatedVisibility then
			self:setState({
				Visible = newVisible,
				isUsingMic = isUsingMic,
			})
		end
	end

	-- Uses math.sin(time) to smoothly interpolate between the start and end colors.
	self.animationConnection = function(timeDelta)
		local newAnimationTime = self.prevTime + timeDelta
		local newSinTime = math.sin(newAnimationTime * ANIMATION_SPEED)

		local sinTime = math.abs(self.prevSinTime)
		self.updateTransparencyBinding(lerpNum(0.5, 0, sinTime))
		self.prevTime = newAnimationTime
		self.prevSinTime = newSinTime
	end

	self.teardownCameraPermissionGrantedListener = function()
		-- Garbage collection
		if self.cameraPermissionGrantedListener then
			self.cameraPermissionGrantedListener:disconnect()
			self.cameraPermissionGrantedListener = nil
		end
	end

	self.cameraPermissionGrantedListener = cameraDevicePermissionGrantedSignal:connect(function()
		self.checkNewVisibility()
	end)
end

function FlashingDot:didMount()
	self.checkNewVisibility()
end

function FlashingDot:willUnmount()
	if self.teardownCameraPermissionGrantedListener then
		self.teardownCameraPermissionGrantedListener()
	end
end

function FlashingDot:render()
	local imageSize = UDim2.fromOffset(4, 4)

	return Roact.createElement("Frame", {
		AnchorPoint = Vector2.new(1, 0),
		Position = UDim2.new(1, -4, 0, 3),
		Size = UDim2.fromOffset(4, 4),
		ZIndex = 2,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		Visible = self.state.Visible,
	}, {
		FlashingDot = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Size = imageSize,
			Image = FLASHING_DOT,
			ImageTransparency = self.transparencyBinding,
			LayoutOrder = 2,
		}),
		MuteChangedEvent = Roact.createElement(EventConnection, {
			event = VoiceChatServiceManager.muteChanged.Event,
			callback = self.checkNewVisibility,
		}),
		CameraChangedEvent = Roact.createElement(EventConnection, {
			event = FaceAnimatorService:GetPropertyChangedSignal("VideoAnimationEnabled"),
			callback = self.checkNewVisibility,
		}),
		AnimationConnection = if self.state.Visible
			then Roact.createElement(EventConnection, {
				event = RunService.RenderStepped :: RBXScriptSignal,
				callback = self.animationConnection,
			})
			else nil,
	})
end

return FlashingDot
