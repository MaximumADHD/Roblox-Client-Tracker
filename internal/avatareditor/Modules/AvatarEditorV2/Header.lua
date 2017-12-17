
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local PlayerService = game:GetService("Players")

local LuaChat = CoreGui.RobloxGui.Modules.LuaChat
local Constants = require(LuaChat.Constants)
local WebApi = require(LuaChat.WebApi)

local Mobile = CoreGui.RobloxGui.Modules.Mobile
local Create = require(Mobile.Create)

local PaddedImageButton = require(CoreGui.RobloxGui.Modules.AvatarEditorV2.PaddedImageButton)

local ok, Platform = pcall(function()
	return UserInputService:GetPlatform()
end)
if not ok then
	Platform = Enum.Platform.None
end

local Header = {}
Header.__index = Header

function Header.new(title)

	local self = {}
	setmetatable(self, Header)

	self.buttons = {}

	self.title = title
	self.subtitle = nil

	self.heightOfHeader = UserInputService.NavBarSize.Y + UserInputService.StatusBarSize.Y

	self.rbx = Create.new "Frame" {
		Name = "HeaderFrame",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, self.heightOfHeader),
		ZIndex = 10,

		Create.new "Frame" {
			Name = "Header",
			BackgroundColor3 = Constants.Color.BLUE_PRESSED,
			BorderSizePixel = 0,
			Position = UDim2.new(0, 0, 0, -self.heightOfHeader),
			Size = UDim2.new(1, 0, 0, self.heightOfHeader),
			ZIndex = 10,

			Create.new "Frame" {
				Name = "Content",
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 0, 0, UserInputService.StatusBarSize.Y),
				Size = UDim2.new(1, 0, 0, UserInputService.NavBarSize.Y),

				Create.new "Frame" {
					Name = "Titles",
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 200, 1, 0),
					Position = Constants.PlatformSpecific.HEADER_TITLE_FRAME_POSITION,
					AnchorPoint = Constants.PlatformSpecific.HEADER_TITLE_FRAME_ANCHOR_POINT,
					ZIndex = 10,

					Create.new "UIListLayout" {
						SortOrder = "LayoutOrder",
						VerticalAlignment = Constants.PlatformSpecific.HEADER_VERTICAL_ALIGNMENT,
					},

					Create.new "TextLabel" {
						Name = "Title",
						BackgroundTransparency = 1,
						TextSize = 20,
						TextColor3 = Constants.Color.WHITE,
						Size = UDim2.new(0, 200, 0, 25),
						AnchorPoint = Vector2.new(0.5, 0.5),
						TextXAlignment = Constants.PlatformSpecific.HEADER_TEXT_X_ALIGNMENT,
						Text = self.title,
						Font = "SourceSansBold",
						LayoutOrder = 0,
						ZIndex = 10,
					},

					Create.new "TextLabel" {
						Name = "Subtitle",
						BackgroundTransparency = 1,
						TextSize = 12,
						TextColor3 = Constants.Color.WHITE,
						Size = UDim2.new(0, 200, 0, 12),
						AnchorPoint = Vector2.new(0.5, 0.5),
						TextXAlignment = Constants.PlatformSpecific.HEADER_TEXT_X_ALIGNMENT,
						Text = "",
						Font = "SourceSans",
						LayoutOrder = 1,
						ZIndex = 10,
					},
				},

				Create.new "Frame" {
					Name = "Buttons",
					BackgroundTransparency = 1,
					Position = UDim2.new(1, -5, 0, 0),
					Size = UDim2.new(0, 100, 1, 0),
					AnchorPoint = Vector2.new(1, 0),

					Create.new "UIListLayout" {
						SortOrder = "LayoutOrder",
						HorizontalAlignment = "Right",
						FillDirection = "Horizontal",
						VerticalAlignment = Constants.PlatformSpecific.HEADER_VERTICAL_ALIGNMENT,
					},
				},
			},
		},
	}

	local robuxButton = PaddedImageButton.new("robux", "rbxasset://textures/icon_ROBUX.png", 28)
	robuxButton.Pressed:Connect(function()
		GuiService:BroadcastNotification("", GuiService:GetNotificationTypeList().PURCHASE_ROBUX)
	end)
	self:AddButton(robuxButton)

	local notificationsButton = PaddedImageButton.new("robux", "rbxasset://textures/Icon_Stream_Off.png", 28)
	notificationsButton.Pressed:Connect(function()
		GuiService:BroadcastNotification("", GuiService:GetNotificationTypeList().VIEW_NOTIFICATIONS)
	end)
	self:AddButton(notificationsButton)

	local navBarSignal = UserInputService:GetPropertyChangedSignal("NavBarSize")
	navBarSignal:Connect(function()
		self:AdjustLayout()
	end)
	local statusBarSignal = UserInputService:GetPropertyChangedSignal("StatusBarSize")
	statusBarSignal:Connect(function()
		self:AdjustLayout()
	end)
	self:AdjustLayout()

	if Platform == Enum.Platform.Android then
		self:SetDefaultSubtitle()
	end

	return self
end

function Header:AdjustLayout()
	self.heightOfHeader = UserInputService.NavBarSize.Y + UserInputService.StatusBarSize.Y
	self.rbx.Size = UDim2.new(1, 0, 0, self.heightOfHeader)
	self.rbx.Header.Size = UDim2.new(1, 0, 0, self.heightOfHeader)

	self.rbx.Header.Content.Position = UDim2.new(0, 0, 0, UserInputService.StatusBarSize.Y)
	self.rbx.Header.Content.Size = UDim2.new(1, 0, 0, UserInputService.NavBarSize.Y)
end

function Header:AddButton(button)
	button.rbx.Parent = self.rbx.Header.Content.Buttons
	button.rbx.LayoutOrder = #self.buttons
	button.rbx.ZIndex = 10
end

function Header:SetDefaultSubtitle()
	spawn(function()
		local player = PlayerService.LocalPlayer

		if player == nil then
			return
		end
		local status, result = WebApi.GetUsername(player.UserId)

		if status ~= WebApi.Status.OK then
			return
		end
		local displayText
		if player:GetUnder13() then
			displayText = string.format("%s: <13", result.username)
		else
			displayText = string.format("%s: 13+", result.username)
		end
		self:SetSubtitle(displayText)
	end)
end

function Header:SetSubtitle(displayText)
	assert(type(displayText) == "nil" or type(displayText) == "string",
		"Invalid argument number #1 to SetSubtitle, expected string or nil.")

	self.subtitle = displayText

	if displayText == "" then
		self.rbx.Header.Content.Titles.Subtitle.Visible = false
	else
		self.rbx.Header.Content.Titles.Subtitle.Visible = true
		self.rbx.Header.Content.Titles.Subtitle.Text = displayText
	end
end

return Header