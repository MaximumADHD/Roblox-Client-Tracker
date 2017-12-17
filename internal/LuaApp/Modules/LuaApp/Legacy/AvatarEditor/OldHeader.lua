
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules

local Create = require(Modules.Mobile.Create)
local Constants = require(Modules.Mobile.Constants)
local PaddedImageButton = require(Modules.LuaApp.Legacy.AvatarEditor.PaddedImageButton)


local Header = {}
Header.__index = Header

function Header.new(title)

	local self = {}
	setmetatable(self, Header)

	self.buttons = {}

	self.title = title
	self.subtitle = nil

	self.rbx = Create.new "Frame" {
		Name = "HeaderFrame",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, Constants.Header.HEIGHT),
		Position = UDim2.new(0, 0, 0, -Constants.Header.HEIGHT),

		Create.new "Frame" {
			Name = "Header",
			BackgroundColor3 = Constants.Color.BLUE_PRESSED,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, Constants.Header.HEIGHT),
			ZIndex = 10,

			Create.new "Frame" {
				Name = "Content",
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, -24),
				Position = UDim2.new(0, 0, 0, 24),

				Create.new "Frame" {
					Name = "Titles",
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 200, 1, 0),
					Position = UDim2.new(0.5, 0, 0, 0),
					AnchorPoint = Vector2.new(0.5, 0),

					Create.new "UIListLayout" {
						SortOrder = "LayoutOrder",
					},

					Create.new "TextLabel" {
						Name = "Title",
						BackgroundTransparency = 1,
						TextSize = 20,
						TextColor3 = Constants.Color.WHITE,
						Size = UDim2.new(0, 200, 0, 18),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Text = title,
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
					},
				},
			},
		}
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

	return self
end

function Header:AddButton(button)
	table.insert(self.buttons, button)
	button.rbx.Parent = self.rbx.Header.Content.Buttons
	button.rbx.LayoutOrder = #self.buttons
end

return Header