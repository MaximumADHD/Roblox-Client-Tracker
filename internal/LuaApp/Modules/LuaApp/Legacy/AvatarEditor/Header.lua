
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local PlayerService = game:GetService("Players")

local Create = require(CoreGui.RobloxGui.Modules.Mobile.Create)
local PaddedImageButton = require(CoreGui.RobloxGui.Modules.LuaApp.Legacy.AvatarEditor.PaddedImageButton)

local Urls = require(CoreGui.RobloxGui.Modules.LuaApp.Legacy.AvatarEditor.Urls)
local Utilities = require(CoreGui.RobloxGui.Modules.LuaApp.Legacy.AvatarEditor.Utilities)

local ok, Platform = pcall(function()
	return UserInputService:GetPlatform()
end)
if not ok then
	Platform = Enum.Platform.None
end

local Constants = {
	Color = {
		WHITE = Color3.fromRGB(255, 255, 255),
		BLUE_PRESSED = Color3.fromRGB(0, 116, 189),
	},
	Platforms = {
		Android = {
			HEADER_CONTENT_FRAME_Y_OFFSET = 0,
			HEADER_TITLE_FRAME_POSITION = UDim2.new(0, 15, 0, 0),
			HEADER_TITLE_FRAME_ANCHOR_POINT = Vector2.new(0, 0),
			HEADER_VERTICAL_ALIGNMENT = 0,
			HEADER_TEXT_X_ALIGNMENT = 0,
		},
		Default = {
			HEADER_CONTENT_FRAME_Y_OFFSET = 24,
			HEADER_TITLE_FRAME_POSITION = UDim2.new(0.5, 0, 0, 0),
			HEADER_TITLE_FRAME_ANCHOR_POINT = Vector2.new(0.5, 0),
			HEADER_VERTICAL_ALIGNMENT = 1,
			HEADER_TEXT_X_ALIGNMENT = 2,
		},
	},
}

if Platform == Enum.Platform.Android then
	Constants.PlatformSpecific = Constants.Platforms.Android
else
	Constants.PlatformSpecific = Constants.Platforms.Default
end


local Header = {}
Header.__index = Header

function Header.new(title, navBarHeight, statusBarHeight)

	local self = {}
	setmetatable(self, Header)

	self.buttons = {}

	self.title = title
	self.subtitle = nil

	self.rbx = Create.new "Frame" {
		Name = "HeaderFrame",
		BackgroundTransparency = 1,
		ZIndex = 10,

		Create.new "Frame" {
			Name = "Header",
			BackgroundColor3 = Constants.Color.BLUE_PRESSED,
			BorderSizePixel = 0,
			ZIndex = 10,

			Create.new "Frame" {
				Name = "Content",
				BackgroundTransparency = 1,
				ZIndex = 10,

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

	self:SetNavAndStatusBarHeight(navBarHeight, statusBarHeight)

	if Platform == Enum.Platform.Android then
		self:SetDefaultSubtitle()
	end

	return self
end

function Header:SetNavAndStatusBarHeight(navBarHeight, statusBarHeight)
	local heightOfHeader = navBarHeight + statusBarHeight

	self.rbx.Size = UDim2.new(1, 0, 0, heightOfHeader)
	self.rbx.Header.Size = UDim2.new(1, 0, 0, heightOfHeader)

	self.rbx.Header.Content.Position = UDim2.new(0, 0, 0, statusBarHeight)
	self.rbx.Header.Content.Size = UDim2.new(1, 0, 0, navBarHeight)
end

function Header:AddButton(button)
	button.rbx.Parent = self.rbx.Header.Content.Buttons
	button.rbx.LayoutOrder = #self.buttons
	button.rbx.ZIndex = 10
end


function Header:SetDefaultSubtitle()
	spawn(function()
		local player = PlayerService.LocalPlayer

		while player == nil do
			wait(0.2)
			player = PlayerService.LocalPlayer
		end

		local usernameFetchRequest = Utilities.httpGet(Urls.api.."/users/"..tostring(player.UserId))
		local result = Utilities.decodeJSON( usernameFetchRequest )

		if result and result.Username then
			local displayText
			if player:GetUnder13() then
				displayText = string.format("%s: <13", result.Username)
			else
				displayText = string.format("%s: 13+", result.Username)
			end
			self:SetSubtitle(displayText)
		end
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
