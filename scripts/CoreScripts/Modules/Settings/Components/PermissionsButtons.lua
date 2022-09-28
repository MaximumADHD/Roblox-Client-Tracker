--[[
	This Roact component contains 3 buttons that deal with enabling/disabling
	permissions.

	- Device Microphone
	- Device Camera
	- Mute All
]]
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local FaceAnimatorService = game:GetService("FaceAnimatorService")

local Modules = CoreGui.RobloxGui.Modules

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local ExternalEventConnection = UIBlox.Utility.ExternalEventConnection

local PermissionButton = require(Modules.Settings.Components.PermissionButton)
local VoiceChatServiceManager = require(Modules.VoiceChat.VoiceChatServiceManager).default

local SpringAnimatedItem = UIBlox.Utility.SpringAnimatedItem

local PermissionsButtons = Roact.PureComponent:extend("PermissionsButtons")

local BUTTON_SIZE = 32
local PADDING_SIZE = 24
local DIVIDER_HEIGHT = 24
local Y_HEIGHT = 38
local ANIMATION_SPRING_SETTINGS = {
	dampingRatio = 1,
	frequency = 2.5,
}

PermissionsButtons.validateProps = t.strictInterface({
	isPortrait = t.boolean,
	isSmallTouchScreen = t.boolean,
	isTenFootInterface = t.boolean,
	ZIndex = t.number,
	LayoutOrder = t.number,
})

local function mapValuesToProps(values)
	return {
		Size = UDim2.new(0, values.width, 0, Y_HEIGHT),
		BackgroundTransparency = 1,
	}
end

local function createDivider(layoutOrder)
	return Roact.createElement("Frame", {
		LayoutOrder = layoutOrder,
		Size = UDim2.new(0, 2, 0, DIVIDER_HEIGHT),
		BorderSizePixel = 0,
		BackgroundTransparency = 0.2,
	}, {
		UICorner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0),
		})
	})
end

-- Numbers are obtained from SettingsHub.lua for the existing in game settings menu.
local function getSize(props)
	if props.isPortrait then
		return UDim2.new(1, -20, 0, Y_HEIGHT)
	else
		if props.isSmallTouchScreen then
			return UDim2.new(1, -10, 0, Y_HEIGHT)
		else
			return UDim2.new(0, 800, 0, Y_HEIGHT)
		end
	end
end

function PermissionsButtons:init()
	self:setState({
		allPlayersMuted = false,
		microphoneEnabled = not VoiceChatServiceManager.localMuted or false,
		cameraEnabled = if FaceAnimatorService then FaceAnimatorService.VideoAnimationEnabled else false,
	})

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
			microphoneEnabled = not VoiceChatServiceManager.localMuted
		})
	end

	-- toggle video permissions
	self.toggleVideo = function()
		if not FaceAnimatorService or not FaceAnimatorService:IsStarted() then
			return
		end

		FaceAnimatorService.VideoAnimationEnabled = not FaceAnimatorService.VideoAnimationEnabled

		self:setState({
			cameraEnabled = FaceAnimatorService.VideoAnimationEnabled
		})
	end

	self.muteChangedEvent = function(muted)
		-- updateIcon() --TODO Update Icon

		-- Video is tied to audio being enabled.
		if muted and FaceAnimatorService.VideoAnimationEnabled then
			FaceAnimatorService.VideoAnimationEnabled = false
		end

		self:setState({
			cameraEnabled = FaceAnimatorService.VideoAnimationEnabled,
			microphoneEnabled = not muted
		})
	end
end

-- TODO AVBURST-10065 Update Icons for permission buttons when applicable.
function PermissionsButtons:render()
	local shouldDisplayCamera = self.state.microphoneEnabled
	local numItems = shouldDisplayCamera and 3 or 2
	local width = BUTTON_SIZE * numItems + (PADDING_SIZE * (numItems - 1))
	local isTopCloseButton = not self.props.isPortrait and not self.props.isTenFootInterface and not self.props.isSmallTouchScreen

	return Roact.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.X,
		ZIndex = self.props.ZIndex,
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 0, 0, 0),
		Size = getSize(self.props),
		AnchorPoint = if isTopCloseButton then Vector2.new(0, 0) else Vector2.new(0.5, 0.5),
		LayoutOrder = self.props.LayoutOrder,
		Visible = not self.props.isTenFootInterface, -- Not Visible on Xbox
	}, {
		UIPaddingPermissionsContainer = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 74), -- Close Button location
		}),
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, PADDING_SIZE),
		}),
		Divider1 = createDivider(1),
		Container = Roact.createElement(SpringAnimatedItem.AnimatedFrame, {
			regularProps = {
				Size = UDim2.new(0, 0, 0, Y_HEIGHT),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				LayoutOrder = 2,
			},

			animatedValues = {
				width = width,
			},

			mapValuesToProps = mapValuesToProps,
			springOptions = ANIMATION_SPRING_SETTINGS,
		}, {
			UIListLayoutPermissionsContainer = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, PADDING_SIZE),
			}),
			MuteAllButton = Roact.createElement(PermissionButton, {
				LayoutOrder = 1,
				image = "rbxasset://textures/ui/Settings/MenuBarIcons/HomeTab.png",
				callback = self.toggleMuteAll,
			}),
			ToggleMicButton = Roact.createElement(PermissionButton, {
				LayoutOrder = 2,
				image = "rbxasset://textures/ui/Settings/MenuBarIcons/HomeTab.png",
				callback = self.toggleMic,
			}),
			EnableVideoButton = Roact.createElement(PermissionButton, {
				LayoutOrder = 3,
				image = "rbxasset://textures/ui/Settings/MenuBarIcons/HomeTab.png",
				callback = self.toggleVideo,
			}),
		}),
		Divider2 = createDivider(3),
		MuteChangedEvent = Roact.createElement(ExternalEventConnection, {
			event = VoiceChatServiceManager.muteChanged.Event,
			callback = self.muteChangedEvent,
		}),
	})
end

return PermissionsButtons
