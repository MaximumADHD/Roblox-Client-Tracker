local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Constants = require(Modules.LuaApp.Constants)
local Device = require(Modules.LuaChat.Device)
local Roact = require(Modules.Common.Roact)
local Text = require(Modules.Common.Text)
local User = require(Modules.LuaApp.Models.User)

local UserThumbnail = Roact.Component:extend("UserThumbnail")

local THUMBNAIL_SIZE = 90
local HEADSHOT_SIZE_ENUM = Enum.ThumbnailSize.Size150x150
local DEFAULT_THUMBNAIL_ICON = "rbxasset://textures/ui/LuaApp/graphic/ph-avatar-portrait.png"
local DROPSHADOW_SIZE = 94
local DROPSHADOW_MARGIN = (DROPSHADOW_SIZE - THUMBNAIL_SIZE) / 2
local OVERLAY_IMAGE_BIG = "rbxasset://textures/ui/LuaApp/graphic/gr-friend.png"
local USER_NAME_TEXT_SIZE = 18
local USER_NAME_TOP_PADDING = 6
local USER_NAME_FONT = Enum.Font.SourceSans

local PRESENCE_ICON_PHONE = {
	[User.PresenceType.ONLINE] = "rbxasset://textures/ui/LuaApp/icons/ic-blue-dot.png",
	[User.PresenceType.IN_GAME] = "rbxasset://textures/ui/LuaApp/icons/ic-green-dot.png",
	[User.PresenceType.IN_STUDIO] = "rbxasset://textures/ui/LuaApp/icons/ic-orange-dot.png",
}
local PRESENCE_ICON_TABLET = {
	[User.PresenceType.ONLINE] = "rbxasset://textures/ui/LuaApp/icons/ic-blue-online.png",
	[User.PresenceType.IN_GAME] = "rbxasset://textures/ui/LuaApp/icons/ic-green-ingame.png",
	[User.PresenceType.IN_STUDIO] = "rbxasset://textures/ui/LuaApp/icons/ic-orange-instudio.png",
}
local PRESENCE_BORDER_IMAGE = "rbxasset://textures/ui/LuaApp/graphic/gr-card@2x.png"
local PRESENCE_BORDER_DIAMETER = 14
local PRESENCE_ICON_MARGIN_PHONE = DROPSHADOW_MARGIN + 7
local PRESENCE_ICON_MARGIN_TABLET = DROPSHADOW_MARGIN + 5
local PRESENCE_ICON_SIZE_PHONE = 10
local PRESENCE_ICON_SIZE_TABLET = 24

local TOTAL_HEIGHT = THUMBNAIL_SIZE + USER_NAME_TEXT_SIZE + USER_NAME_TOP_PADDING

function UserThumbnail.size()
	return THUMBNAIL_SIZE
end

function UserThumbnail:render()
	local position = self.props.Position
	local user = self.props.user
	local formFactor = self.props.formFactor
	local highlightColor = self.props.highlightColor

	local presenceIconSize = formFactor == Device.FormFactor.PHONE and PRESENCE_ICON_SIZE_PHONE
		or PRESENCE_ICON_SIZE_TABLET

	local presenceIconMargin = formFactor == Device.FormFactor.PHONE and PRESENCE_ICON_MARGIN_PHONE
		or PRESENCE_ICON_MARGIN_TABLET

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, THUMBNAIL_SIZE, 0, TOTAL_HEIGHT),
		Position = position,
		BackgroundTransparency = 1,
	}, {
		Image = Roact.createElement("ImageLabel", {
			Size = UDim2.new(0, THUMBNAIL_SIZE, 0, THUMBNAIL_SIZE),
			Position = position,
			BackgroundColor3 = Constants.Color.WHITE,
			BorderSizePixel = 0,
			Image = user and user.headshotThumbnails[HEADSHOT_SIZE_ENUM] or DEFAULT_THUMBNAIL_ICON,
		}, {
			MaskFrame = Roact.createElement("ImageLabel", {
				Size = UDim2.new(0, DROPSHADOW_SIZE, 0, DROPSHADOW_SIZE),
				Position = UDim2.new(0, -DROPSHADOW_MARGIN, 0, -DROPSHADOW_MARGIN),
				BackgroundTransparency = 1,
				Image = OVERLAY_IMAGE_BIG,
				ImageColor3 = highlightColor,
			},{
				PresenceIconBorder = Roact.createElement("ImageLabel", {
					Size = UDim2.new(0, PRESENCE_BORDER_DIAMETER, 0, PRESENCE_BORDER_DIAMETER),
					AnchorPoint = Vector2.new(1, 1),
					Position = UDim2.new(1, -presenceIconMargin, 1, -presenceIconMargin),
					BackgroundTransparency = 1,
					Image = PRESENCE_BORDER_IMAGE,
					Visible = user.presence ~= User.PresenceType.OFFLINE,
				},{
					PresenceIcon = Roact.createElement("ImageLabel", {
						Size = UDim2.new(0, presenceIconSize, 0, presenceIconSize),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						BackgroundTransparency = 1,
						Image = formFactor == Device.FormFactor.PHONE and PRESENCE_ICON_PHONE[user.presence]
							or PRESENCE_ICON_TABLET[user.presence],
					}),
				}),
			}),
		}),
		Username = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 0, USER_NAME_TEXT_SIZE),
			Position = UDim2.new(0, 0, 0, THUMBNAIL_SIZE + USER_NAME_TOP_PADDING),
			BackgroundTransparency = 1,
			Text = user.name,
			TextSize = USER_NAME_TEXT_SIZE,
			TextColor3 = Constants.Color.GRAY1,
			Font = USER_NAME_FONT,
			[Roact.Ref] = function(rbx)
				self.usernameTextLabel = rbx
			end,
		})
	})
end

function UserThumbnail:didMount()
	local function resize()
		Text.TruncateTextLabel(self.usernameTextLabel, "...")
	end
	resize()
	self.connections = {}
	table.insert(self.connections, self.usernameTextLabel:GetPropertyChangedSignal("Text"):Connect(resize))
	table.insert(self.connections, self.usernameTextLabel:GetPropertyChangedSignal("AbsoluteSize"):Connect(resize))
end

function UserThumbnail:willUnmount()
	for _, connection in pairs(self.connections) do
		connection:Disconnect()
	end
end

return UserThumbnail