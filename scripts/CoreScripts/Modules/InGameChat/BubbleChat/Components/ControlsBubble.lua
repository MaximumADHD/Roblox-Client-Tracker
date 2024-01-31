--[[
	A bubble for showing controls to enable/disable the
	user's Microphone and Camera.

	The TextChatService version of this file is called PlayerButtons
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
local SelfViewAPI = require(Modules.SelfView.publicApi)
local toggleSelfViewSignal = require(Modules.SelfView.toggleSelfViewSignal)
local Analytics = require(Modules.SelfView.Analytics).new()
local GetFFlagLocalMutedNilFix = require(Modules.Flags.GetFFlagLocalMutedNilFix)
local GetFFlagMicStatesFix = require(Modules.Flags.GetFFlagMicStatesFix)
local VoiceConstants = require(Modules.VoiceChat.Constants)

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
	isShowingDueToEasierUnmuting = t.optional(t.boolean)
})

ControlsBubble.defaultProps = {
	LayoutOrder = 1,
}

function ControlsBubble:init()
	local cameraEnabled = if FaceAnimatorService
		then (FaceAnimatorService:IsStarted() and FaceAnimatorService.VideoAnimationEnabled)
		else false

	self:setState({
		microphoneEnabled = if GetFFlagLocalMutedNilFix
			then VoiceChatServiceManager.localMuted == false
			else not VoiceChatServiceManager.localMuted,
		cameraEnabled = cameraEnabled,
	})

	-- toggle mic permissions
	self.toggleMic = function()
		if self.props.isLocalPlayer then
			if not self.props.hasMicPermissions then
				return
			end

			if self.props.voiceState == Constants.VOICE_STATE.ERROR then
				VoiceChatServiceManager:RejoinPreviousChannel()
			elseif self.props.voiceState == Constants.VOICE_STATE.CONNECTING then
				VoiceChatServiceManager:ShowVoiceChatLoadingMessage()
			else
				Analytics:setLastCtx("bubbleChatToggle")
				VoiceChatServiceManager:ToggleMic("LegacyBubbleChatToggle")
				self:setState({
					microphoneEnabled = not VoiceChatServiceManager.localMuted,
				})
			end
		else
			-- The billboards use strings, but the manager expects numbers
			VoiceChatServiceManager:ToggleMutePlayer(tonumber(self.props.userId), 
				if self.props.isShowingDueToEasierUnmuting
					then VoiceConstants.VOICE_CONTEXT_TYPE.EASIER_UNMUTING
					else VoiceConstants.VOICE_CONTEXT_TYPE.BUBBLE_CHAT)
		end
	end

	self.updateVideo = function()
		self:setState({
			cameraEnabled = FaceAnimatorService.VideoAnimationEnabled,
		})
	end

	-- toggle video permissions
	self.toggleVideo = function()
		if not self.props.hasCameraPermissions then
			return
		end

		if not FaceAnimatorService or not FaceAnimatorService:IsStarted() then
			return
		end

		FaceAnimatorService.VideoAnimationEnabled = not FaceAnimatorService.VideoAnimationEnabled

		Analytics:setLastCtx("bubbleChatToggle")

		self:setState({
			cameraEnabled = FaceAnimatorService.VideoAnimationEnabled,
		})

		local selfViewOpen = SelfViewAPI.getSelfViewIsOpenAndVisible()
		if FaceAnimatorService.VideoAnimationEnabled and not selfViewOpen then
			toggleSelfViewSignal:fire()
		end
	end

	self.muteChangedEvent = function(muted)
		self:setState({
			microphoneEnabled = not muted,
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

		local speakerIconStyle = if game:GetEngineFeature("VoiceChatNewSpeakerIcons")
			then "SpeakerNew"
			else "SpeakerDark"
		local iconStyle = if self.props.isLocalPlayer then "New" else speakerIconStyle

		if voiceState == Constants.VOICE_STATE.MUTED or voiceState == Constants.VOICE_STATE.LOCAL_MUTED then
			if self.props.isLocalPlayer then
				-- We use UIBlox for the local muted cases. The image is retrieved from UIBlox in ControlBubble.lua.
				return ""
			else
				return VoiceChatServiceManager:GetIcon("Muted", iconStyle)
			end
		elseif voiceState == Constants.VOICE_STATE.CONNECTING then
			return VoiceChatServiceManager:GetIcon("Connecting", iconStyle)
		elseif voiceState == Constants.VOICE_STATE.INACTIVE then
			return VoiceChatServiceManager:GetIcon("Unmuted0", iconStyle)
		elseif voiceState == Constants.VOICE_STATE.TALKING then
			-- Calculate a number between 0-100 by increments of 20.
			local micLevel = INCREMENT_AMOUNT * math.floor(0.5 + NUM_INCREMENTS * level)
			return VoiceChatServiceManager:GetIcon("Unmuted" .. tostring(micLevel), iconStyle)
		else
			return VoiceChatServiceManager:GetIcon("Error", iconStyle)
		end
	end)
end

--[[
	Camera icon should only be shown to the local player.
]]
function ControlsBubble:shouldShowCameraIndicator()
	if self.props.isLocalPlayer and self.props.hasCameraPermissions then
		return true
	end

	return false
end

function ControlsBubble:getMicIcon()
	if not self.props.isLocalPlayer then
		-- Non local player always uses icons from VoiceChatManager
		return self.levelIcon, false
	end

	if GetFFlagMicStatesFix() then
		-- If the local player has not given mic permissions to their device, we show the muted icon.
		local noPermissions = not self.props.hasMicPermissions
		local micMuted = self.props.voiceState == Constants.VOICE_STATE.MUTED
			or self.props.voiceState == Constants.VOICE_STATE.LOCAL_MUTED
		if noPermissions or micMuted then
			return MIC_OFF_IMAGE, true
		end
	else
		-- If the local player has not given mic permissions to their device, we show the muted icon.
		local noPermissions = not (self.state.microphoneEnabled and self.props.hasMicPermissions)
		local micMuted = self.props.voiceState == Constants.VOICE_STATE.MUTED
			or self.props.voiceState == Constants.VOICE_STATE.LOCAL_MUTED

		if noPermissions or micMuted then
			return MIC_OFF_IMAGE, true
		end
	end

	return self.levelIcon, false
end

function ControlsBubble:didUpdate(prevProps, _)
	if self.props.voiceState ~= prevProps.voiceState then
		self.updateVoiceState(self.props.voiceState)
	end
end

function ControlsBubble:didMount()
	self.updateVoiceState(self.props.voiceState)
end

function ControlsBubble:render()
	local shouldShowVoiceIndicator = self.props.hasMicPermissions and self.props.voiceEnabled
	local shouldShowCameraIndicator = self:shouldShowCameraIndicator()
	local icon, imageSet = self:getMicIcon()
	local chatSettings = self.props.chatSettings

	return Roact.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 1),
		AutomaticSize = Enum.AutomaticSize.X,
		Position = UDim2.new(0.5, 0, 1, -8),
		Size = UDim2.new(0, 0, 0, 25),
		LayoutOrder = self.props.LayoutOrder,
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
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
			UICorner = chatSettings.CornerEnabled and Roact.createElement("UICorner", {
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
				icon = icon,
				onActivated = self.toggleMic,
				enabled = self.props.hasMicPermissions,
				isImageSet = imageSet,
				chatSettings = chatSettings,
				iconSize = if self.props.isLocalPlayer then UDim2.fromOffset(14, 18) else UDim2.fromOffset(23, 21),
			}),
			CameraBubble = shouldShowCameraIndicator and Roact.createElement(ControlBubble, {
				LayoutOrder = 2,
				icon = if self.state.cameraEnabled and self.props.hasCameraPermissions
					then VIDEO_IMAGE
					else VIDEO_OFF_IMAGE,
				onActivated = self.toggleVideo,
				enabled = self.props.hasCameraPermissions,
				isImageSet = true,
				imageSetIcon = if self.state.cameraEnabled and self.props.hasCameraPermissions
					then VIDEO_IMAGE
					else VIDEO_OFF_IMAGE,
				chatSettings = chatSettings,
			}),
		}),
		Carat = chatSettings.TailVisible and Roact.createElement("ImageLabel", {
			LayoutOrder = 3,
			AnchorPoint = Vector2.new(0.5, 0),
			BackgroundTransparency = 1,
			Position = UDim2.new(0.5, 0, 1, -1), --UICorner generates a 1 pixel gap (UISYS-625), this fixes it by moving the carrot up by 1 pixel
			Size = UDim2.fromOffset(12, 8),
			Image = "rbxasset://textures/ui/InGameChat/Caret.png",
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		}),
		MuteChangedEvent = Roact.createElement(ExternalEventConnection, {
			event = VoiceChatServiceManager.muteChanged.Event,
			callback = self.muteChangedEvent,
		}),
		VideoEnabledChanged = FaceAnimatorService and Roact.createElement(ExternalEventConnection, {
			event = FaceAnimatorService:GetPropertyChangedSignal("VideoAnimationEnabled"),
			callback = self.updateVideo,
		}) or nil,
	})
end

function ControlsBubble:willUnmount()
	local success, _ = pcall(function()
		RunService:UnbindFromRenderStep(self.renderStepName)
	end)

	-- self.renderStepName should have existed. Throw an error on backtrace to notify.
	task.spawn(function()
		assert(success == true, "Tried to UnbindFromRenderStep with a self.renderStepName that was never bound")
	end)
end

local function mapStateToProps(state, props)
	return {
		voiceState = state.voiceState[props.userId],
	}
end

return RoactRodux.connect(mapStateToProps)(ControlsBubble)
