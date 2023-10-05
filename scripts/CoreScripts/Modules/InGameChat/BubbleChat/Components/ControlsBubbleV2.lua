--[[
	A bubble for showing controls to enable/disable the
	user's Microphone and Camera.

	The TextChatService version of this file is called PlayerButtons
]]

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local FaceAnimatorService = game:GetService("FaceAnimatorService")
local HttpService = game:GetService("HttpService")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local ExternalEventConnection = UIBlox.Utility.ExternalEventConnection

local Modules = CoreGui.RobloxGui.Modules
local ControlBubble = require(script.Parent.ControlBubbleV2)
local VoiceChatServiceManager = require(Modules.VoiceChat.VoiceChatServiceManager).default
local Constants = require(Modules.InGameChat.BubbleChat.Constants)
local SelfViewAPI = require(Modules.SelfView.publicApi)
local toggleSelfViewSignal = require(Modules.SelfView.toggleSelfViewSignal)
local Analytics = require(Modules.SelfView.Analytics).new()
local FFlagUWPAvatarChatFixes = require(Modules.Flags.FFlagUWPAvatarChatFixes)
local GetFFlagLocalMutedNilFix = require(Modules.Flags.GetFFlagLocalMutedNilFix)
local GetFFlagMicHandlingParity = require(Modules.Flags.GetFFlagMicHandlingParity)
local VoiceConstants = require(Modules.VoiceChat.Constants)

local AvatarChatUISettings = Constants.AVATAR_CHAT_UI_SETTINGS

local VIDEO_ON_ASSET_NAME = "icons/controls/voice/video_on_light"
local VIDEO_OFF_ASSET_NAME = "icons/controls/voice/video_off_light"
local MIC_OFF_ASSET_NAME = "icons/controls/voice/microphone_off_light"

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

			if GetFFlagMicHandlingParity() then
				if self.props.voiceState == Constants.VOICE_STATE.ERROR then
					VoiceChatServiceManager:RejoinPreviousChannel()
				elseif self.props.voiceState == Constants.VOICE_STATE.CONNECTING then
					VoiceChatServiceManager:ShowVoiceChatLoadingMessage()
				else
					Analytics:setLastCtx("bubbleChatToggle")
					VoiceChatServiceManager:ToggleMic()

					self:setState({
						microphoneEnabled = not VoiceChatServiceManager.localMuted,
					})
				end
			else
				Analytics:setLastCtx("bubbleChatToggle")
				VoiceChatServiceManager:ToggleMic()

				self:setState({
					microphoneEnabled = not VoiceChatServiceManager.localMuted,
				})
			end
		else
			-- The billboards use strings, but the manager expects numbers
			VoiceChatServiceManager:ToggleMutePlayer(
				tonumber(self.props.userId),
				if self.props.isShowingDueToEasierUnmuting
					then VoiceConstants.VOICE_CONTEXT_TYPE.EASIER_UNMUTING
					else VoiceConstants.VOICE_CONTEXT_TYPE.BUBBLE_CHAT
			)
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

function ControlsBubble:shouldShowMicOffIndicator()
	if self.props.isLocalPlayer then
		-- If the local player has not given mic permissions to their device, we show the muted icon.
		local noPermissions = not (self.state.microphoneEnabled and self.props.hasMicPermissions)
		local micMuted = self.props.voiceState == Constants.VOICE_STATE.MUTED
			or self.props.voiceState == Constants.VOICE_STATE.LOCAL_MUTED
		if noPermissions or micMuted then
			return true
		end
	end

	return false
end

function ControlsBubble:render()
	local shouldShowVoiceIndicator = self.props.hasMicPermissions
		and (not FFlagUWPAvatarChatFixes or self.props.voiceEnabled)
	local shouldShowCameraIndicator = self:shouldShowCameraIndicator()
	local shouldShowMicOffIndicator = self:shouldShowMicOffIndicator()
	local shouldShowBothIndicators = shouldShowCameraIndicator and shouldShowVoiceIndicator

	local chatSettings = self.props.chatSettings

	local cornerRadiusOffset = (shouldShowBothIndicators and AvatarChatUISettings.DoubleIconCornerRadiusOffset)
		or AvatarChatUISettings.SingleIconCornerRadiusOffset
	local controlBubbleSize = (shouldShowBothIndicators and AvatarChatUISettings.DoubleIconButtonSize)
		or AvatarChatUISettings.SingleIconButtonSize
	local iconStyle = if self.props.isLocalPlayer then "microphone" else "speaker"

	return Roact.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 1),
		Position = UDim2.new(0.5, 0, 1, -8),
		AutomaticSize = Enum.AutomaticSize.X,
		Size = UDim2.fromOffset(0, AvatarChatUISettings.FrameHeight),
		LayoutOrder = self.props.LayoutOrder,
		BackgroundTransparency = chatSettings.BackgroundTransparency,
		BackgroundColor3 = chatSettings.BackgroundColor3,
		Visible = shouldShowVoiceIndicator or shouldShowCameraIndicator,
	}, {
		Scale = Roact.createElement("UIScale", {
			Scale = not self.props.isInsideMaximizeDistance and 0.75 or 1.0,
		}),
		UICorner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0, cornerRadiusOffset),
		}),
		Container = Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
		}, {
			UICorner = chatSettings.CornerEnabled and Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, cornerRadiusOffset),
			}),
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			MicrophoneBubble = shouldShowVoiceIndicator and Roact.createElement(ControlBubble, {
				LayoutOrder = 1,
				onActivated = self.toggleMic,
				chatSettings = chatSettings,
				controlBubbleSize = controlBubbleSize,
				cornerRadiusOffset = cornerRadiusOffset,
				iconAssetName = (shouldShowMicOffIndicator and MIC_OFF_ASSET_NAME) or nil,
				iconSize = AvatarChatUISettings.IconSize,
				iconTransparency = AvatarChatUISettings.IconTransparency,
				voiceState = self.props.voiceState,
				renderStepName = HttpService:GenerateGUID(),
				iconStyle = iconStyle,
			}),
			Divider = (shouldShowVoiceIndicator and shouldShowCameraIndicator) and Roact.createElement("Frame", {
				Size = AvatarChatUISettings.DividerSize,
				AnchorPoint = Vector2.new(0.5, 1),
				BorderSizePixel = 0,
				LayoutOrder = 2,
				ZIndex = 1,
				BackgroundColor3 = AvatarChatUISettings.DividerColor,
			}),
			CameraBubble = shouldShowCameraIndicator and Roact.createElement(ControlBubble, {
				LayoutOrder = 3,
				onActivated = self.toggleVideo,
				chatSettings = chatSettings,
				cornerRadiusOffset = cornerRadiusOffset,
				controlBubbleSize = controlBubbleSize,
				iconAssetName = if self.state.cameraEnabled and self.props.hasCameraPermissions
					then VIDEO_ON_ASSET_NAME
					else VIDEO_OFF_ASSET_NAME,
				iconSize = AvatarChatUISettings.IconSize,
				iconTransparency = AvatarChatUISettings.IconTransparency,
				iconStyle = iconStyle,
			}),
		}),
		Carat = chatSettings.TailVisible and Roact.createElement("ImageLabel", {
			LayoutOrder = 3,
			AnchorPoint = Vector2.new(0.5, 0),
			BackgroundTransparency = 1,
			Position = UDim2.new(0.5, 0, 1, -1),
			Size = UDim2.fromOffset(12, 8),
			Image = "rbxasset://textures/ui/InGameChat/Caret.png",
			ImageColor3 = chatSettings.BackgroundColor3,
			ImageTransparency = chatSettings.BackgroundTransparency,
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

local function mapStateToProps(state, props)
	return {
		voiceState = state.voiceState[props.userId],
	}
end

return RoactRodux.connect(mapStateToProps)(ControlsBubble)
