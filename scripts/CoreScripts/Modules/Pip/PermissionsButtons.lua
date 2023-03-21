--!nonstrict
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local CorePackages = game:GetService("CorePackages")
local FaceAnimatorService = game:GetService("FaceAnimatorService")
local StarterGui = game:GetService("StarterGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local toggleModeEvent = ReplicatedStorage:WaitForChild("ToggleModeEvent")
local camModeChanged = ReplicatedStorage:WaitForChild("CamModeChanged")
local Camera = workspace:WaitForChild("Camera")

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)
local GetFFlagIrisV2Enabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIrisV2Enabled
local toggleEnvironmentsMenuEvent = if GetFFlagIrisV2Enabled()
	then ReplicatedStorage:WaitForChild("ToggleEnvironmentsMenuEvent")
	else nil

local getCamMicPermissions = require(RobloxGui.Modules.Settings.getCamMicPermissions)

local ExternalEventConnection = UIBlox.Utility.ExternalEventConnection
local Images = UIBlox.App.ImageSet.Images

local Modules = CoreGui.RobloxGui.Modules
local PermissionButton = require(Modules.Pip.PermissionButton)
local VoiceChatServiceManager = require(Modules.VoiceChat.VoiceChatServiceManager).default

local isSmallScreen = if Camera.ViewportSize.X < 640 then true else false

local PermissionsButtons = Roact.PureComponent:extend("PermissionsButtons")

local PADDING_SIZE = 36
local OUTER_PADDING = 24
local Y_HEIGHT = 38

local TOTAL_MODES = 3
local LEAVE_GAME_FRAME_WAITS = 2
local AVATAR_SIZE = 40
local IN_BETWEEN_PADING = 12

local VIDEO_IMAGE = Images["icons/controls/video"]
local VIDEO_OFF_IMAGE = Images["icons/controls/videoOff"]
local MIC_IMAGE = Images["icons/controls/microphone"]
local MIC_OFF_IMAGE = Images["icons/controls/microphoneMute"]
local SPATIAL_IMAGE = Images["icons/actions/previewExpand"]
local FREE_PLAY_IMAGE = Images["icons/actions/previewShrink"]
local PIP_IMAGE = Images["icons/controls/selfie"]

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

	self:setState({
		allPlayersMuted = false,
		microphoneEnabled = not VoiceChatServiceManager.localMuted or false,
		cameraEnabled = if FaceAnimatorService then FaceAnimatorService.VideoAnimationEnabled else false,
		hasCameraPermissions = false,
		hasMicPermissions = false,
		camMode = camMode.Value,
		visible = true,
		player = nil,
		showCallInfo = false,
	})

	GuiService.MenuOpened:Connect(function()
		self:setState({ visible = false })
	end)

	GuiService.MenuClosed:Connect(function()
		self:setState({ visible = true })
	end)

	camModeChanged.OnClientEvent:Connect(function()
		local mode = ReplicatedStorage:WaitForChild("CamMode").Value
		self:setState({
			camMode = mode,
		})
	end)

	local players = Players:GetPlayers()
	-- If the other call participant joined the private place before local user
	if #players > 1 then
		local otherPlayer

		if players[1].UserId == Players.LocalPlayer.UserId then
			otherPlayer = players[2]
		else
			otherPlayer = players[1]
		end

		self:setState({ player = otherPlayer, showCallInfo = true })
	else
		-- If local user is the first to join private place listen for when other participant joins
		local playerAddedConnection 
		playerAddedConnection = Players.PlayerAdded:Connect(function(player)
			self:setState({ player = player, showCallInfo = true })
			playerAddedConnection:Disconnect()
		end)
	end

	local playerRemovingConnection
	playerRemovingConnection = Players.PlayerRemoving:Connect(function(player)
		self:setState({ plater = nil, showCallInfo = false })
		playerRemovingConnection:Disconnect()
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

	self.openEnvironmentsMenu = function()
		toggleEnvironmentsMenuEvent:Fire()
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

	VoiceChatServiceManager:asyncInit():andThen(function()
		self:getPermissions()
	end):catch(function()
		-- If mic permissions are not allowed the init never resolves
		self:getPermissions()
	end)
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

function PermissionsButtons:render()
	local shouldShowMicButtons = self.state.hasMicPermissions
	local shouldShowCameraButtons = self.state.hasCameraPermissions

	return Roact.createElement("Frame", {
		Name = "PermissionsButton",
		Size = if isSmallScreen then UDim2.new(1, -OUTER_PADDING * 2, 0, 0) else UDim2.new(0, 400, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		ZIndex = self.props.ZIndex,
		BackgroundTransparency = 0.1,
		BackgroundColor3 = Color3.fromRGB(17, 18, 20),
		Position = UDim2.new(0.5, 0, 0, 12),
		AnchorPoint = Vector2.new(0.5, 0),
		LayoutOrder = self.props.LayoutOrder,
		Visible = not self.props.isTenFootInterface and self.state.visible, -- Not Visible on Xbox
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		UICorner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),
		UIPadding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 24),
			PaddingRight = UDim.new(0, 24),
			PaddingTop = UDim.new(0, 12),
			PaddingBottom = UDim.new(0, 12),
		}),
		CallInfo = if self.state.showCallInfo then Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, AVATAR_SIZE),
			BackgroundTransparency = 1,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, IN_BETWEEN_PADING),
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			Avatar = Roact.createElement("ImageLabel", {
				Size = UDim2.new(0, AVATAR_SIZE, 0, AVATAR_SIZE),
				BackgroundColor3 = Color3.fromRGB(220, 220, 220),
				BackgroundTransparency = 1,
				Image = "rbxthumb://type=AvatarHeadShot&id=" .. self.state.player.UserId .. "&w=150&h=150",
				LayoutOrder = 1,
			}, {
				UICorner = Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0.5, 0.5),
				}),
			}),
			Info = Roact.createElement("Frame", {
				Size = UDim2.new(1, -AVATAR_SIZE - IN_BETWEEN_PADING, 1, 0),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				DisplayName = Roact.createElement("TextLabel", {
					AutomaticSize = Enum.AutomaticSize.Y,
					Size = UDim2.new(1, 0, 0, 0),
					BackgroundTransparency = 1,
					Font = Enum.Font.GothamMedium,
					LayoutOrder = 1,
					Text = self.state.player.DisplayName,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 16,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
				HelperText = Roact.createElement("TextLabel", {
					AutomaticSize = Enum.AutomaticSize.Y,
					Size = UDim2.new(1, 0, 0, 0),
					BackgroundTransparency = 1,
					Font = Enum.Font.Gotham,
					LayoutOrder = 2,
					Text = "Roblox call",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 12,
					TextTransparency = .4,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
				})
			})
		}) else nil,
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
			-- FreePlayButton = Roact.createElement(PermissionButton, {
			-- 	LayoutOrder = 3,
			-- 	image = PLAY_IMAGE,
			-- 	callback = self.openEnvironmentsMenu
			-- }),
			-- CamModeButton = Roact.createElement(PermissionButton, {
			-- 	LayoutOrder = 4,
			-- 	image = self:getCamModeImage(),
			-- 	callback = self.toggleCamModes,
			-- }),
			EndCallButton = Roact.createElement("ImageButton", {
				Size = UDim2.new(0, 36, 0, 28),
				BackgroundTransparency = 1,
				LayoutOrder = 5,
				Image = "rbxassetid://12788429603",
				[Roact.Event.Activated] = self.toggleEndCallButton,
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
