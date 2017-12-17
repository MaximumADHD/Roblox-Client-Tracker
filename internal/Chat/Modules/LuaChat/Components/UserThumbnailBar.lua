local Modules = script.Parent.Parent

local Create = require(Modules.Create)
local Constants = require(Modules.Constants)
local Signal = require(Modules.Signal)

local UserThumbnail = require(Modules.Components.UserThumbnail)

local ICON_CELL_WIDTH = 60
local GROUP_ICON_SIZE = 24
local THUMBNAIL_SIZE = 48
local THUMBNAIL_LABEL_HEIGHT = 15
local THUMBNAIL_PADDING_HEIGHT = 10
local THUMBNAIL_PADDING_WIDTH = 16
local THUMBNAIL_PLUS_WIDTH = THUMBNAIL_SIZE + THUMBNAIL_PADDING_WIDTH
local THUMBNAIL_PLUS_HEIGHT = THUMBNAIL_SIZE + THUMBNAIL_LABEL_HEIGHT + THUMBNAIL_PADDING_HEIGHT * 2
local REMOVE_BUTTON_SIZE = 16

local UserThumbnailPlus = {}
UserThumbnailPlus.__index = UserThumbnailPlus

function UserThumbnailPlus.new(appState)
	local self = {
		appState = appState
	}
	setmetatable(self, UserThumbnailPlus)

	self.rbx = Create.new"Frame" {
		Name = "ThumbnailFrame",
		BackgroundTransparency = 1,
		Size = UDim2.new(0, THUMBNAIL_PLUS_WIDTH, 0, THUMBNAIL_PLUS_HEIGHT),
	}

	self:SetEmptyThumbnail()

	self.removed = Signal.new()

	return self
end

function UserThumbnailPlus:Update(user)
	if user == self.user then
		return
	end
	self.user = user

	if user == nil then
		self:SetEmptyThumbnail(user)
	else
		self:SetThumbnail(user)
	end
end

function UserThumbnailPlus:SetEmptyThumbnail()
	if self.userThumbnailFrame ~= nil then
		self.userThumbnailFrame.Parent = nil
	end
	self.userThumbnailFrame = Create.new"ImageLabel" {
		Name = "UserThumbnail",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(0, THUMBNAIL_SIZE, 0, THUMBNAIL_SIZE),
		Position = UDim2.new(0, 0, 0, THUMBNAIL_PADDING_HEIGHT),
		Image = "rbxasset://textures/ui/LuaChat/graphic/gr-profile-border-48x48-dotted.png",
	}
	self.userThumbnailFrame.Parent = self.rbx
end

function UserThumbnailPlus:SetThumbnail(user)
	if self.userThumbnailFrame ~= nil then
		self.userThumbnailFrame.Parent = nil
	end

	self.userThumbnail = UserThumbnail.new(self.appState, user.id, false)
	self.userThumbnail.rbx.Size = UDim2.new(0, THUMBNAIL_SIZE, 0, THUMBNAIL_SIZE)

	self.userThumbnailFrame = Create.new"Frame" {
		Name = "UserThumbnail",
		BackgroundTransparency = 1,
		Size = UDim2.new(0, THUMBNAIL_SIZE, 1, -THUMBNAIL_PADDING_HEIGHT*2),
		Position = UDim2.new(0, 0, 0, THUMBNAIL_PADDING_HEIGHT),

		self.userThumbnail.rbx,
		Create.new"TextLabel" {
			Name = "UserName",
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, THUMBNAIL_LABEL_HEIGHT),
			Position = UDim2.new(0, 0, 1, -THUMBNAIL_LABEL_HEIGHT),
			TextSize = Constants.Font.FONT_SIZE_12,
			TextColor3 = Constants.Color.GRAY1,
			Font = Enum.Font.SourceSans,
			Text = user.name,
			TextXAlignment = Enum.TextXAlignment.Left,
			ClipsDescendants = true,
		},
		Create.new"ImageLabel" {
			Name = "RemoveImage",
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(0, REMOVE_BUTTON_SIZE, 0, REMOVE_BUTTON_SIZE),
			Position = UDim2.new(1, 0, 0, 0),
			AnchorPoint = Vector2.new(1, 0),
			Image = "rbxasset://textures/ui/LuaChat/icons/ic-remove.png",
		},
	}

	self.userThumbnailFrame.Parent = self.rbx

	self.tapped = self.userThumbnail.clicked
	self.tapped:Connect(function()
		self.removed:Fire(self.user.id)
	end)
end

function UserThumbnailPlus:Destruct()
	if self.userThumbnail then
		self.userThumbnail:Destruct()
	end
	self.rbx:Destroy()
end

local UserThumbnailBar = {}
UserThumbnailBar.__index = UserThumbnailBar

function UserThumbnailBar.new(appState, maxSize, layoutOrder)
	local self = {
		appState = appState,
		maxSize = maxSize,
	}
	setmetatable(self, UserThumbnailBar)

	self.rbx = Create.new"Frame" {
		Name = "UserThumbnailBar",
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
		BackgroundColor3 = Constants.Color.WHITE,
		Size = UDim2.new(1, 0, 0, THUMBNAIL_PLUS_HEIGHT),
		LayoutOrder = layoutOrder,

		Create.new"Frame" {
			Name = "GroupIcon",
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(0, ICON_CELL_WIDTH, 0, THUMBNAIL_SIZE),
			Position = UDim2.new(0, 0, 0, THUMBNAIL_PADDING_HEIGHT),
			Create.new"ImageLabel" {
				Name = "IconImage",
				BackgroundTransparency = 1,
				Size = UDim2.new(0, GROUP_ICON_SIZE, 0, GROUP_ICON_SIZE),
				Position = UDim2.new(0.5, 0, 0, 0),
				AnchorPoint = Vector2.new(0.5, 0),
				Image = "rbxasset://textures/ui/LuaChat/icons/ic-group.png",
			},
			Create.new"TextLabel" {
				Name = "FriendCount",
				BackgroundTransparency = 1,
				TextSize = Constants.Font.FONT_SIZE_14,
				TextColor3 = Constants.Color.GRAY2,
				Size = UDim2.new(1, 0, 0, THUMBNAIL_LABEL_HEIGHT),
				Position = UDim2.new(0, 0, 1, -THUMBNAIL_LABEL_HEIGHT),
				AnchorPoint = Vector2.new(0, 0),
				Text = "0/" .. maxSize,
				Font = "SourceSans",
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Bottom,
			},
		},
	}

	self.removed = Signal.new()
	self.thumbnails = {}
	for i = 1, self.maxSize do
		local thumb = UserThumbnailPlus.new(appState)
		table.insert(self.thumbnails, thumb)
		thumb.rbx.Position = UDim2.new(0, ICON_CELL_WIDTH + THUMBNAIL_PLUS_WIDTH * (i-1), 0, 0)
		thumb.rbx.Parent = self.rbx
		thumb.removed:Connect(function(id)
			self.removed:Fire(id)
		end)
	end

	return self
end

function UserThumbnailBar:Update(participants)
	local users = self.appState.store:GetState().Users
	local participantCount = #participants
	for index,thumbnail in ipairs(self.thumbnails) do
		if index <= participantCount then
			thumbnail:Update(users[participants[index]])
		else
			thumbnail:Update(nil)
		end
	end
	self.rbx.GroupIcon.FriendCount.Text = participantCount .. "/" .. self.maxSize
end

function UserThumbnailBar:Destruct()
	for _,thumbnail in ipairs(self.thumbnails) do
		thumbnail:Destruct()
	end
	self.thumbnails = {}
	self.rbx:Destroy()
end

return UserThumbnailBar