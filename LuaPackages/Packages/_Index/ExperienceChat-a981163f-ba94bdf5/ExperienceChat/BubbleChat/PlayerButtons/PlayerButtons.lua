--[[
	A bubble for showing controls to enable/disable the
	user's Microphone and Camera.
]]
local FaceAnimatorService = game:GetService("FaceAnimatorService")
local HttpService = game:GetService("HttpService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent

local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local UIBlox = require(Packages.UIBlox)
local Dictionary = require(Packages.llama).Dictionary

local ExternalEventConnection = UIBlox.Utility.ExternalEventConnection

local Config = require(ExperienceChat.Config)
local AvatarChatUISettings = Config.AvatarChatUISettings
local Permissions = Config.Permissions
local GlobalFlags = require(ExperienceChat.GlobalFlags)

local ControlBubble = require(script.Parent.ControlBubble)
local getFFlagUWPBubbleFix = require(ExperienceChat.Flags.getFFlagUWPBubbleFix)
local GetFFlagVoiceTCSBubbleClickState = require(ExperienceChat.Flags.GetFFlagVoiceTCSBubbleClickState)

local VIDEO_ON_ASSET_NAME = "icons/controls/voice/video_on_light"
local VIDEO_OFF_ASSET_NAME = "icons/controls/voice/video_off_light"
local MIC_OFF_ASSET_NAME = "icons/controls/voice/microphone_off_light"

local PlayerButtons = Roact.PureComponent:extend("PlayerButtons")

PlayerButtons.defaultProps = {
	LayoutOrder = 1,
}

function PlayerButtons:init()
	self:setState({
		cameraEnabled = if FaceAnimatorService
			then (FaceAnimatorService:IsStarted() and FaceAnimatorService.VideoAnimationEnabled)
			else false,
	})

	-- toggle mic permissions
	self.toggleMic = function()
		if GetFFlagVoiceTCSBubbleClickState() then
			self.props.onClickedVoiceIndicator(self.props.userId, self.props.voiceState)
		else
			self.props.onClickedVoiceIndicator(self.props.userId)
		end
	end

	-- toggle video permissions and request device permissions if denied
	self.onVideoButtonPressed = function()
		if GlobalFlags.DoNotPromptCameraPermissionsOnMount and not self.props.hasCameraPermissions then
			-- If the user has not granted permissions
			local callback = function(hasCameraPermissions, _)
				if hasCameraPermissions then
					self:toggleVideo()
					if self.props.setCameraPermissionStateFromControl then
						self.props.setCameraPermissionStateFromControl(hasCameraPermissions)
					end
				else
					if self.props.displayCameraDeniedToast then
						self.props.displayCameraDeniedToast()
					end
				end
			end
			if self.props.getPermissions then
				self.props.getPermissions(callback, Permissions.CAMERA_ACCESS)
			end
		else
			-- If the user has granted camera deveice permissions
			self:toggleVideo()
		end
	end

	-- toggle video permissions
	self.toggleVideo = function()
		self.props.onClickedCameraIndicator()
	end

	self.updateVideo = function()
		self:setState({
			cameraEnabled = FaceAnimatorService.VideoAnimationEnabled,
		})
	end
end

function PlayerButtons:shouldShowCameraIndicator()
	if self.props.isLocalPlayer and self:getCameraButtonVisibleAtMount() then
		return true
	end

	return false
end

function PlayerButtons:shouldShowMicOffIndicator()
	if self.props.isLocalPlayer then
		local muted = self.props.voiceState == "Muted" or self.props.voiceState == "LOCAL_MUTED"
		if muted or not self.props.hasMicPermissions then
			return true
		end
	end

	return false
end

function PlayerButtons:getCameraButtonVisibleAtMount()
	if GlobalFlags.EnableAlwaysAvailableCamera and self.props.isCameraOnlyUser then
		if self.props.isCameraOnlyUser() then
			-- If the user is a camera only user do not show the camera button
			return false
		end
	end

	if self.props.isCamEnabledForUserAndPlace then
		return self.props.isCamEnabledForUserAndPlace()
	end

	-- Fallback to false
	return false
end

function PlayerButtons:render()
	local shouldShowVoiceIndicator = self.props.hasMicPermissions
		and (not getFFlagUWPBubbleFix() or self.props.voiceEnabled)
	local shouldShowCameraIndicator = self:shouldShowCameraIndicator()
	local shouldShowMicOffIndicator = self:shouldShowMicOffIndicator()

	local shouldShowBothIndicators = shouldShowCameraIndicator and shouldShowVoiceIndicator
	local chatSettings = self.props.chatSettings

	local cornerRadiusOffset = (shouldShowBothIndicators and AvatarChatUISettings.DoubleIconCornerRadiusOffset)
		or AvatarChatUISettings.SingleIconCornerRadiusOffset
	local controlBubbleSize = (shouldShowBothIndicators and AvatarChatUISettings.DoubleIconButtonSize)
		or AvatarChatUISettings.SingleIconButtonSize

	local iconStyle = if self.props.isLocalPlayer then "microphone" else "speaker"

	local cameraIconAssetName = if self.state.cameraEnabled and self.props.hasCameraPermissions
		then VIDEO_ON_ASSET_NAME
		else VIDEO_OFF_ASSET_NAME
	if GlobalFlags.DoNotPromptCameraPermissionsOnMount then
		-- The asset name will no longer depend on the Camera Device Permissions
		cameraIconAssetName = if self.state.cameraEnabled and self:getCameraButtonVisibleAtMount()
			then VIDEO_ON_ASSET_NAME
			else VIDEO_OFF_ASSET_NAME
	end

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
		Container = Roact.createElement(
			"ImageLabel",
			Dictionary.join({
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, chatSettings.ImageLabel),
			{
				UICorner = Roact.createElement("UICorner", {
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
					onActivated = (GlobalFlags.DoNotPromptCameraPermissionsOnMount and self.onVideoButtonPressed)
						or self.toggleVideo,
					chatSettings = chatSettings,
					cornerRadiusOffset = cornerRadiusOffset,
					controlBubbleSize = controlBubbleSize,
					iconAssetName = cameraIconAssetName,
					iconSize = AvatarChatUISettings.IconSize,
					iconTransparency = AvatarChatUISettings.IconTransparency,
					iconStyle = iconStyle,
				}),
			}
		),
		Carat = chatSettings.TailVisible and Roact.createElement("ImageLabel", {
			LayoutOrder = 3,
			AnchorPoint = Vector2.new(0.5, 0),
			BackgroundTransparency = 1,
			Position = UDim2.new(0.5, 0, 1, -1),
			Size = UDim2.fromOffset(12, 8),
			Image = "rbxasset://textures/ui/InGameChat/Caret.png",
			ImageColor3 = chatSettings.BackgroundColor3,
			ImageTransparency = chatSettings.BackgroundTransparency,
		}, {
			CaratGradient = chatSettings.UIGradient and Roact.createElement("UIGradient", chatSettings.UIGradient),
		}),
		BubbleGradient = chatSettings.UIGradient and Roact.createElement("UIGradient", chatSettings.UIGradient),
		VideoEnabledChanged = FaceAnimatorService and Roact.createElement(ExternalEventConnection, {
			event = FaceAnimatorService:GetPropertyChangedSignal("VideoAnimationEnabled"),
			callback = self.updateVideo,
		}) or nil,
	})
end

local function mapStateToProps(state, props)
	return {
		voiceState = state.Voice.participants[props.userId],
	}
end

return RoactRodux.connect(mapStateToProps)(PlayerButtons)
