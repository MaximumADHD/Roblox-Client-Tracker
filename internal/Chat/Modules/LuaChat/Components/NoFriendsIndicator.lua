local CoreGui = game:GetService("CoreGui")

local LuaApp = CoreGui.RobloxGui.Modules.LuaApp


local LuaChat = script.Parent.Parent
local Create = require(LuaChat.Create)
local Constants = require(LuaChat.Constants)

local NoFriendsIndicator = {}

NoFriendsIndicator.__index = NoFriendsIndicator

function NoFriendsIndicator.new(appState)
	local self = {}

	self.rbx = Create.new "Frame" {
		Name = "NoFriendsIndicator",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 300),

		Create.new "Frame" {
			Name = "IndicatorInner",
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 160),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),

			Create.new "UIListLayout" {
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			},

			Create.new "ImageLabel" {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 72, 0, 72),
				LayoutOrder = 1,
				Image = "rbxasset://textures/ui/LuaChat/icons/ic-friends.png",
			},

			Create.new "TextLabel" {
				Size = UDim2.new(1, -32, 0, 66),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Font = Enum.Font.SourceSans,
				TextColor3 = Constants.Color.GRAY2,
				TextSize = Constants.Font.FONT_SIZE_18,
				TextWrapped = true,
				Text = appState.localization:Format("Feature.Chat.Message.MakeFriendsToChat"),
			},
		},
	}

	setmetatable(self, NoFriendsIndicator)

	return self
end

return NoFriendsIndicator