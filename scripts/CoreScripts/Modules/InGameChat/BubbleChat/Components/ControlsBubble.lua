--[[
	A bubble for showing controls to enable/disable the
	user's Microphone and Camera.
]]

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local FaceAnimatorService = game:GetService("FaceAnimatorService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local ExternalEventConnection = UIBlox.Utility.ExternalEventConnection
local Images = UIBlox.App.ImageSet.Images

local Modules = CoreGui.RobloxGui.Modules
local ControlBubble = require(script.Parent.ControlBubble)
local VoiceChatServiceManager = require(Modules.VoiceChat.VoiceChatServiceManager).default
local Constants = require(Modules.InGameChat.BubbleChat.Constants)

local VIDEO_IMAGE = Images["icons/controls/video"]
local VIDEO_OFF_IMAGE = Images["icons/controls/videoOff"]
local MIC_OFF_IMAGE = Images["icons/controls/microphoneMute"]
local INCREMENT_AMOUNT = 20
local NUM_INCREMENTS = 5

local ControlsBubble = Roact.PureComponent:extend("ControlsBubble")

ControlsBubble.validateProps = t.strictInterface({
	chatSettings = t.table,
	isInsideMaximizeDistance = t.boolean,
	isLocalPlayer = t.boolean,
	LayoutOrder = t.optional(t.number),
	hasCameraPermissions = t.boolean,
	hasMicPermissions = t.boolean,
})

ControlsBubble.defaultProps = {
	LayoutOrder = 1,
}

function ControlsBubble:init()
	self:setState({
		microphoneEnabled = not VoiceChatServiceManager.localMuted or false,
		cameraEnabled = if FaceAnimatorService then FaceAnimatorService.VideoAnimationEnabled else false,
	})

	-- toggle mic permissions
	self.toggleMic = function()
		if not self.props.hasMicPermissions then
			return
		end

		VoiceChatServiceManager:ToggleMic()

		self:setState({
			microphoneEnabled = not VoiceChatServiceManager.localMuted
		})
	end

	-- toggle video permissions
	self.toggleVideo = function()
		if not self.props.hasCameraPermissions then
			return
		end

		if not FaceAnimatorService then
			return
		end

		FaceAnimatorService.VideoAnimationEnabled = not FaceAnimatorService.VideoAnimationEnabled

		self:setState({
			cameraEnabled = FaceAnimatorService.VideoAnimationEnabled
		})
	end

	self.muteChangedEvent = function(muted)
		self:setState({
			microphoneEnabled = not muted
		})
	end

	self.level, self.updateLevel = Roact.createBinding(0)
	self.voiceState, self.updateVoiceState = Roact.createBinding(self.props.voiceState)

	-- Generate a fake volume level for now
	self.renderStepName = HttpService:GenerateGUID()
	RunService:BindToRenderStep(self.renderStepName, Enum.RenderPriority.First.Value + 1, function()
		self.updateLevel(math.random())
	end)

	self.levelIcon = Roact.joinBindings({ self.voiceState, self.level }):map(function(values)
		-- ROBLOX FIXME Luau: Luau cannot infer that values is a heterogeneous tuple.
		local voiceState = values[1] :: string
		local level = values[2] :: number

		if voiceState == Constants.VOICE_STATE.MUTED or voiceState == Constants.VOICE_STATE.LOCAL_MUTED then
			return VoiceChatServiceManager:GetIcon("Muted", "New")
		elseif voiceState == Constants.VOICE_STATE.CONNECTING then
			return VoiceChatServiceManager:GetIcon("Connecting", "New")
		elseif voiceState == Constants.VOICE_STATE.INACTIVE then
			return VoiceChatServiceManager:GetIcon("Unmuted0", "New")
		elseif voiceState == Constants.VOICE_STATE.TALKING then
			-- Calculate a number between 0-100 by increments of 20.
			local micLevel = INCREMENT_AMOUNT * math.floor(0.5 + NUM_INCREMENTS * level)
			return VoiceChatServiceManager:GetIcon("Unmuted" .. tostring(micLevel), "New")
		else
			return VoiceChatServiceManager:GetIcon("Error", "New")
		end
	end)
end

--[[
	Camera icon should only be shown to the local player.
]]
function ControlsBubble:shouldShowCameraIndicator()
	if self.props.isLocalPlayer then
		return true
	end

	return false
end

function ControlsBubble:getMicIcon()
	local muted = self.props.voiceState == Constants.VOICE_STATE.MUTED or self.props.voiceState == Constants.VOICE_STATE.LOCAL_MUTED
	if muted or not (self.state.microphoneEnabled and self.props.hasMicPermissions) then
		return MIC_OFF_IMAGE
	end

	return self.levelIcon:getValue()
end

function ControlsBubble:render()
	local shouldShowVoiceIndicator = true
	local shouldShowCameraIndicator = self:shouldShowCameraIndicator()

	local muted = self.props.voiceState == Constants.VOICE_STATE.MUTED or self.props.voiceState == Constants.VOICE_STATE.LOCAL_MUTED
	local useImageSetMic = muted or not (self.state.microphoneEnabled and self.props.hasMicPermissions)

	return Roact.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 1),
		AutomaticSize = Enum.AutomaticSize.X,
		Position = UDim2.new(0.5, 0, 1, -8),
		Size = UDim2.new(0, 0, 0, 25),
		LayoutOrder = self.props.LayoutOrder,
		BackgroundTransparency = 0,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		Visible = shouldShowVoiceIndicator or shouldShowCameraIndicator,
	}, {
		Scale = Roact.createElement("UIScale", {
			Scale = not self.props.isInsideMaximizeDistance and 0.75 or 1.0,
		}),
		UICorner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),
		Container = Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 0,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		}, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, 2),
			}),
			UIPadding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 2),
				PaddingRight = UDim.new(0, 2),
				PaddingBottom = UDim.new(0, 2),
				PaddingLeft = UDim.new(0, 2),
			}),
			MicrophoneBubble = shouldShowVoiceIndicator and Roact.createElement(ControlBubble, {
				LayoutOrder = 1,
				icon = self:getMicIcon(),
				onActivated = self.toggleMic,
				enabled = self.props.hasMicPermissions,
				isImageSet = useImageSetMic,
			}),
			CameraBubble = shouldShowCameraIndicator and Roact.createElement(ControlBubble, {
				LayoutOrder = 2,
				icon = if self.state.cameraEnabled and self.props.hasCameraPermissions then VIDEO_IMAGE else VIDEO_OFF_IMAGE,
				onActivated = self.toggleVideo,
				enabled = self.props.hasCameraPermissions,
				isImageSet = true,
			})
		}),
		MuteChangedEvent = Roact.createElement(ExternalEventConnection, {
			event = VoiceChatServiceManager.muteChanged.Event,
			callback = self.muteChangedEvent,
		}),
	})
end

local function mapStateToProps(state, props)
	return {
		voiceState = state.voiceState[props.userId],
	}
end

return RoactRodux.connect(mapStateToProps)(ControlsBubble)
