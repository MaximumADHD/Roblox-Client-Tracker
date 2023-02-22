--!nonstrict
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local CorePackages = game:GetService("CorePackages")
local FaceAnimatorService = game:GetService("FaceAnimatorService")
local StarterGui = game:GetService("StarterGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Players = game:GetService("Players")
local ScreenGui = Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("ScreenGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local toggleModeEvent = ReplicatedStorage:WaitForChild("ToggleModeEvent")
local roomTeleportRequestedEvent = ReplicatedStorage:WaitForChild("RoomTeleportRequestedEvent")
local camModeChanged = ReplicatedStorage:WaitForChild("CamModeChanged")
local roomTeleportEvent = ReplicatedStorage:WaitForChild("RoomTeleportEvent")

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local getCamMicPermissions = require(RobloxGui.Modules.Settings.getCamMicPermissions)

local ExternalEventConnection = UIBlox.Utility.ExternalEventConnection
local Images = UIBlox.App.ImageSet.Images

local Modules = CoreGui.RobloxGui.Modules
local PermissionButton = require(Modules.Pip.PermissionButton)
local VoiceChatServiceManager = require(Modules.VoiceChat.VoiceChatServiceManager).default

local PermissionsButtons = Roact.PureComponent:extend("PermissionsButtons")

local PADDING_SIZE = 8
local DIVIDER_HEIGHT = 24
local Y_HEIGHT = 38

local TOTAL_MODES = 3
local TOTAL_ROOMS = 3
local LEAVE_GAME_FRAME_WAITS = 2

local VIDEO_IMAGE = Images["icons/controls/video"]
local VIDEO_OFF_IMAGE = Images["icons/controls/videoOff"]
local MIC_IMAGE = Images["icons/controls/microphone"]
local MIC_OFF_IMAGE = Images["icons/controls/microphoneMute"]
local SPATIAL_IMAGE = Images["icons/actions/previewExpand"]
local FREE_PLAY_IMAGE = Images["icons/actions/previewShrink"]
local PIP_IMAGE = Images["icons/controls/selfie"]
local PLAY_IMAGE = Images["icons/common/play"]
local END_CALL_IMAGE = Images["icons/navigation/close"]

local MODES_IMAGES = {
	SPATIAL_IMAGE,
	FREE_PLAY_IMAGE,
	PIP_IMAGE,
}

PermissionsButtons.validateProps = t.strictInterface({
	isPortrait = t.boolean,
	isSmallTouchScreen = t.boolean,
	isTenFootInterface = t.boolean,
	ZIndex = t.number,
	LayoutOrder = t.number,
})

function PermissionsButtons:getCamModeImage()
	return MODES_IMAGES[(self.state.camMode + 1) % 3 + 1]
end

function PermissionsButtons:init()
	local camMode = ReplicatedStorage:WaitForChild("CamMode")
	local roomIndex = ReplicatedStorage:WaitForChild("RoomIndex")
	self:setState({
		allPlayersMuted = false,
		microphoneEnabled = not VoiceChatServiceManager.localMuted or false,
		cameraEnabled = if FaceAnimatorService then FaceAnimatorService.VideoAnimationEnabled else false,
		hasCameraPermissions = false,
		hasMicPermissions = false,
		camMode = camMode.Value,
		roomIndex = roomIndex.Value,
	})

	camModeChanged.OnClientEvent:Connect(function()
		local mode = ReplicatedStorage:WaitForChild("CamMode").Value
		self:setState({
			camMode = mode,
		})
	end)

	roomTeleportEvent.OnClientEvent:Connect(function()
		local index = ReplicatedStorage:WaitForChild("RoomIndex").Value
		self:setState({
			roomIndex = index,
		})
	end)

	-- Mute all players in the lobby
	self.toggleMuteAll = function()
		local newAllPlayersMuted = not self.state.allPlayersMuted
		VoiceChatServiceManager:MuteAll(newAllPlayersMuted)
		self:setState({
			allPlayersMuted = newAllPlayersMuted,
		})
	end

	-- toggle mic permissions
	self.toggleMic = function()
		VoiceChatServiceManager:ToggleMic()
		-- this.SecondButton.Image = pollImage() TODO Update Icon

		local didDisableMic = not VoiceChatServiceManager.localMuted
		-- Camera is tied to the microphone being enabled.
		if didDisableMic and FaceAnimatorService.VideoAnimationEnabled then
			FaceAnimatorService.VideoAnimationEnabled = false
		end

		self:setState({
			cameraEnabled = FaceAnimatorService.VideoAnimationEnabled,
			microphoneEnabled = not VoiceChatServiceManager.localMuted,
		})
	end

	-- toggle video permissions
	self.toggleVideo = function()
		if not FaceAnimatorService then
			return
		end

		FaceAnimatorService.VideoAnimationEnabled = not FaceAnimatorService.VideoAnimationEnabled

		self:setState({
			cameraEnabled = FaceAnimatorService.VideoAnimationEnabled
		})
	end

	self.toggleCamModes = function()
		local newState = (self.state.camMode + 1) % TOTAL_MODES
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.SelfView, newState)
		self:setState({
			camMode = newState,
		})
		toggleModeEvent:FireServer(newState)
	end

	self.cycleRoom = function()
		local newState = (self.state.roomIndex + 1) % TOTAL_ROOMS
		self:setState({
			roomIndex = newState,
		})
		roomTeleportRequestedEvent:FireServer(newState)
	end

	self.muteChangedEvent = function(muted)
		-- Video is tied to audio being enabled.
		if muted and FaceAnimatorService.VideoAnimationEnabled then
			FaceAnimatorService.VideoAnimationEnabled = false
		end

		self:setState({
			cameraEnabled = FaceAnimatorService.VideoAnimationEnabled,
			microphoneEnabled = not muted
		})
	end

	self.toggleEndCallButton = function()
		-- deselects the button and prevents spamming the popup to save in studio when using gamepad
		GuiService.SelectedCoreObject = nil

		-- need to wait for render frames so on slower devices the leave button highlight will update
		-- otherwise, since on slow devices it takes so long to leave you are left wondering if you pressed the button
		for i = 1, LEAVE_GAME_FRAME_WAITS do
			RunService.RenderStepped:Wait()
		end
		game:Shutdown()
	end
end

--[[
	Check if Roblox has permissions for camera/mic access.
]]
function PermissionsButtons:getPermissions()
	local callback = function(response)
		self:setState({
			hasCameraPermissions = response.hasCameraPermissions,
			hasMicPermissions = response.hasMicPermissions,
		})
	end
	getCamMicPermissions(callback)
end

function PermissionsButtons:didMount()
	self:getPermissions()
end

function PermissionsButtons:render()
	local shouldShowMicButtons = self.state.hasMicPermissions
	local shouldShowCameraButtons = self.state.hasCameraPermissions

	return Roact.createElement("Frame", {
		Name = "PermissionsButton",
		AutomaticSize = Enum.AutomaticSize.XY,
		ZIndex = self.props.ZIndex,
		BackgroundTransparency = 0,
		BackgroundColor3 = Color3.fromRGB(35, 37, 39),
		Position = UDim2.new(0.5, 0, 1, -36),
		AnchorPoint = Vector2.new(0.5, 0.5),
		LayoutOrder = self.props.LayoutOrder,
		Visible = not self.props.isTenFootInterface, -- Not Visible on Xbox
	}, {
		UIPaddingPermissionsContainer = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 4),
		}),
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, PADDING_SIZE),
		}),
		UICorner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0.8, 0),
		}),
		UIPadding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 24),
			PaddingRight = UDim.new(0, 24),
			PaddingTop = UDim.new(0, 12),
			PaddingBottom = UDim.new(0, 12),
		}),
		Container = Roact.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.X,
			Size = UDim2.fromOffset(0, Y_HEIGHT),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			LayoutOrder = 1,
		}, {
			UIListLayoutPermissionsContainer = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, PADDING_SIZE),
			}),
			ToggleMicButton = shouldShowMicButtons and Roact.createElement(PermissionButton, {
				LayoutOrder = 1,
				image = if self.state.microphoneEnabled then MIC_IMAGE else MIC_OFF_IMAGE,
				callback = self.toggleMic,
			}),
			EnableVideoButton = shouldShowCameraButtons and Roact.createElement(PermissionButton, {
				LayoutOrder = 2,
				image = if self.state.cameraEnabled then VIDEO_IMAGE else VIDEO_OFF_IMAGE,
				callback = self.toggleVideo,
			}),
			FreePlayButton = Roact.createElement(PermissionButton, {
				LayoutOrder = 3,
				image = PLAY_IMAGE,
				callback = self.cycleRoom,
			}),
			CamModeButton = Roact.createElement(PermissionButton, {
				LayoutOrder = 4,
				image = self:getCamModeImage(),
				callback = self.toggleCamModes,
			}),
			EndCallButton = Roact.createElement(PermissionButton, {
				LayoutOrder = 5,
				image = END_CALL_IMAGE,
				callback = self.toggleEndCallButton,
			}),
		}),
		MuteChangedEvent = Roact.createElement(ExternalEventConnection, {
			event = VoiceChatServiceManager.muteChanged.Event,
			callback = self.muteChangedEvent,
		}),
	})
end

function PermissionsButtons:willUnmount()
end

return PermissionsButtons
