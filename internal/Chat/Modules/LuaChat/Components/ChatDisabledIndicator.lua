
local CoreGui = game:GetService("CoreGui")

local LuaApp = CoreGui.RobloxGui.Modules.LuaApp
local StringsLocale = require(LuaApp.StringsLocale)

local LuaChat = script.Parent.Parent
local Create = require(LuaChat.Create)
local Constants = require(LuaChat.Constants)
local Signal = require(LuaChat.Signal)

local ChatDisabledIndicator = {}

ChatDisabledIndicator.__index = ChatDisabledIndicator

function ChatDisabledIndicator.new(appState)
	local self = {}

	self.rbx = Create.new "Frame" {
		Name = "ChatDisabledIndicator",
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
				Size = UDim2.new(1, 0, 0, 44),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Font = Enum.Font.SourceSans,
				TextColor3 = Constants.Color.GRAY2,
				TextSize = Constants.Font.FONT_SIZE_18,
				Text = appState.localization:Format(StringsLocale.Keys.TURN_ON_CHAT),
			},

			Create.new "ImageButton" {
				Name = "PrivacySettings",
				AutoButtonColor = false,
				Size = UDim2.new(0, 120, 0, 36),
				BackgroundTransparency = 1,
				LayoutOrder = 3,
				BorderSizePixel = 0,
				ScaleType = "Slice",
				SliceCenter = Rect.new(3,3,4,4),
				Image = "rbxasset://textures/ui/LuaChat/9-slice/input-default.png",
				ImageColor3 = Constants.Color.GREEN_PRIMARY,

				Create.new "TextLabel" {
					Name = "Title",
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Font = Enum.Font.SourceSans,
					TextSize = Constants.Font.FONT_SIZE_16,
					TextColor3 = Constants.Color.WHITE,
					Text = appState.localization:Format(StringsLocale.Keys.PRIVACY_SETTINGS),
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
				}
			},
		},
	}

	self.openPrivacySettings = Signal.new()
	self.rbx.IndicatorInner.PrivacySettings.MouseButton1Click:Connect(function()
		self.openPrivacySettings:Fire()
	end)

	setmetatable(self, ChatDisabledIndicator)

	return self
end

return ChatDisabledIndicator