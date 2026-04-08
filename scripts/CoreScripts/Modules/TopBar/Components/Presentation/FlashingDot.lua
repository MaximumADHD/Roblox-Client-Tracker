--[[
	Flashing Dot Indicator of which fades in transparency.
]]

local RunService = game:GetService("RunService")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local VideoCaptureService = game:GetService("VideoCaptureService")
local FaceAnimatorService = game:GetService("FaceAnimatorService")

local Roact = require(CorePackages.Packages.Roact)
local ReactUtils = require(CorePackages.Packages.ReactUtils)
local t = require(CorePackages.Packages.t)

local EventConnection = ReactUtils.EventConnection

local Modules = CoreGui.RobloxGui.Modules
local VoiceChatServiceManager = require(Modules.VoiceChat.VoiceChatServiceManager).default
local getCamMicPermissions = require(Modules.Settings.getCamMicPermissions)

local ANIMATION_SPEED = 3
local FLASHING_DOT = "rbxasset://textures/AnimationEditor/FaceCaptureUI/FlashingDot.png"

local FlashingDot = Roact.PureComponent:extend("FlashingDot")

local function lerpNum(a: number, b: number, t: number)
	return a + (b - a) * t
end

FlashingDot.validateProps = t.strictInterface({})

function FlashingDot:init()
	self:setState({
		Visible = false,
		isUsingMic = false,
		hasMicPermissions = false,
		hasCameraPermissions = false,
	})

	self.prevTime = math.pi / 2
	self.prevSinTime = 1
	self.transparencyBinding, self.updateTransparencyBinding = Roact.createBinding(0)

	self.checkNewVisibility = function()
		local isUsingMic = self.state.hasMicPermissions
			and VoiceChatServiceManager.localMuted ~= nil
			and not VoiceChatServiceManager.localMuted
		-- @TODO: Remove VideoCaptureService.Active when FaceAnimatorService.VideoAnimationEnabled gives correct values for voice-enabled experiences
		-- Note that we have to add VideoCaptureService.Active here because FaceAnimatorService.VideoAnimationEnabled returns true for voice-enabled experiences
		local isUsingCamera = self.state.hasCameraPermissions
			and FaceAnimatorService.VideoAnimationEnabled
			and VideoCaptureService.Active
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
end

function FlashingDot:didMount()
	self.isMounted = true
	local callback = function(response)
		if not self.isMounted then
			return
		end

		self:setState({
			hasCameraPermissions = response.hasCameraPermissions,
			hasMicPermissions = response.hasMicPermissions,
		})
	end
	getCamMicPermissions(callback, nil, nil, "FlashingDot.didMount")
	self.checkNewVisibility()
end

function FlashingDot:didUpdate(prevProps, prevState)
	if
		self.state.hasMicPermissions ~= prevProps.hasMicPermissions
		or self.state.hasCameraPermissions ~= prevProps.hasCameraPermissions
	then
		self.checkNewVisibility()
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

function FlashingDot:willUnmount()
	self.isMounted = false
end

return FlashingDot
