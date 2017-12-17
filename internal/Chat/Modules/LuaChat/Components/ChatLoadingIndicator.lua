local LuaChat = script.Parent.Parent
local Create = require(LuaChat.Create)
local LoadingIndicator = require(script.Parent.LoadingIndicator)

local ChatLoadingIndicator = {}

function ChatLoadingIndicator.new(appState)
	local self = {}

	local indicator = LoadingIndicator.new(appState, 2)
	self.super = indicator

	self.rbx = Create "Frame" {
		Name = "ChatLoadingIndicator",
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,

		Create "Frame" {
			Name = "Inner",
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 200),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),

			Create "UIListLayout" {
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			},

			indicator.rbx,
		},
	}

	setmetatable(self, ChatLoadingIndicator)

	return self
end

function ChatLoadingIndicator:SetVisible(visible)
	self.rbx.Visible = visible
	self.super:SetVisible(visible)
end

ChatLoadingIndicator.__index = ChatLoadingIndicator

return ChatLoadingIndicator
