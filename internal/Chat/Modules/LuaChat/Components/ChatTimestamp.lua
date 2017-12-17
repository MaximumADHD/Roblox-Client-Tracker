local LuaChat = script.Parent.Parent

local Create = require(LuaChat.Create)
local Text = require(LuaChat.Text)
local Constants = require(LuaChat.Constants)

local ChatTimestamp = {}

ChatTimestamp.__index = ChatTimestamp

function ChatTimestamp.new(appState, text)
	local self = {}

	self.rbx = Create.new "Frame" {
		Name = "ChatTimestamp",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 50),

		Create.new "UIPadding" {
			PaddingTop = UDim.new(0, 20),
			PaddingBottom = UDim.new(0, 10),
		},

		Create.new "ImageLabel" {
			BackgroundTransparency = 0,
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.fromRGB(224, 224, 224),
			Size = UDim2.new(0, 150, 0, 30),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Image = "rbxasset://textures/ui/LuaChat/9-slice/system-message.png",
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(3, 3, 4, 4),

			Create.new "UIPadding" {
				PaddingTop = UDim.new(0, 4),
				PaddingBottom = UDim.new(0, 4),
				PaddingLeft = UDim.new(0, 6),
				PaddingRight = UDim.new(0, 6),
			},

			Create.new "TextLabel" {
				BackgroundTransparency = 1,
				TextColor3 = Color3.fromRGB(128, 128, 128),
				Text = text,
				TextSize = Constants.Font.FONT_SIZE_14,
				Font = Enum.Font.SourceSans,
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5)
			},
		},
	}

	local textBounds = Text.GetTextBounds(text, Enum.Font.SourceSans, Constants.Font.FONT_SIZE_14, Vector2.new(1000, 1000))
	self.rbx.ImageLabel.Size = UDim2.new(0, textBounds.X + 12, 0, textBounds.Y + 8)

	setmetatable(self, ChatTimestamp)

	return self
end

return ChatTimestamp